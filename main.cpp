#include <cstdint>
#include <iostream>
#include <fstream>
#include <format>
#include <string>
#include <string_view>

#include <icu.h>
#pragma comment(lib, "icu.lib") 
#undef FALSE
#undef TRUE


std::string char16_to_ansi(char16_t c, const std::string& codepage)
{
	std::string result(2, '0');
	UErrorCode err = U_ZERO_ERROR;
	UConverter* conv = ucnv_open(codepage.c_str(), &err);
	int32_t len = ucnv_fromUChars(conv, result.data(), result.size(), &c, 1, &err);
	if (err > U_ZERO_ERROR)
	{
		std::cerr << "char16_to_ansi failed.\n";
		std::abort();
	}
	result.resize(len);
	return result;
}

std::string gen_char_table(const std::string& char_list_file, const std::string& codepage)
{
	constexpr char16_t BOM = u'\ufeff';

	std::string char_table = "";
	std::ifstream char_list(char_list_file, std::ios::binary);
	if (!char_list)
	{
		std::cerr << "failed to open input file.\n";
		std::abort();
	}
	char16_t c;
	char_list.read(reinterpret_cast<char*>(&c), sizeof(c));
	if (c != BOM)
	{
		std::cerr << "first char is not BOM.\n";
		std::abort();
	}
	while (char_list.peek() != EOF)
	{
		char_list.read(reinterpret_cast<char*>(&c), sizeof(c));
		const auto gbstr = char16_to_ansi(c, codepage);
		if (gbstr.size() == 2)
		{
			char_table += std::format("\t\t[{}] = \"\\{:0>3}\\{:0>3}\",\n", uint16_t(c), uint8_t(gbstr[0]), uint8_t(gbstr[1]));
		}
		else if (gbstr.size() == 1)
		{
			char_table += std::format("\t\t[{}] = \"\\{:0>3}\",\n", uint16_t(c), uint8_t(gbstr[0]));
		}
		else if (gbstr.size() == 0)
		{
			continue;
		}
		else
		{
			std::cerr << "Wrong code length.\n";
			std::abort();
		}
	}
	return char_table;
}

void gen_script(const std::string& char_list_file, const std::string& script_file, const std::string& codepage)
{
	std::string script = std::format(R"(function conv_chatname(chatname)
	local char_table = {{
{}
	}}
	if type(chatname) == "string" then
		return chatname
	elseif type(chatname) == "table" then
		local result = ""
		for i, c in chatname do
			if c == 0 then
				break
			end
			result = result..(char_table[c] or "?")
		end
		return result
	else
		_ALERT("Wrong chatname format!")
		return "?"
	end
end
)",
gen_char_table(char_list_file, codepage));

	std::ofstream lua_script_gb2312(script_file, std::ios::binary);
	if (!lua_script_gb2312)
	{
		std::cerr << "failed to open output file.\n";
		std::abort();
	}
	lua_script_gb2312 << script;
}

int main()
{
	std::cout << std::format("{}\n", "Hello, world!");
	gen_script("gb2312list.txt", "utf16_to_gb2312.lua", "gb2312");
	gen_script("english.txt", "utf16_to_latin1.lua", "Latin 1");
	return 0;
}