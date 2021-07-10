#include <cstdint>
#include <iostream>
#include <fstream>
#include <format>
#include <string>

#include <icu.h>
#pragma comment(lib, "icu.lib") 
#undef FALSE
#undef TRUE


constexpr char16_t BOM = u'\ufeff';

constexpr char GB2312_LIST_FILE[] = "gb2312list.txt";
constexpr char OUTPUT_LUA_FILE[] = "utf16_to_gb2312.lua";

std::string char16_to_gb2312(char16_t c)
{
	std::string result(2, '0');
	UErrorCode err = U_ZERO_ERROR;
	UConverter* conv = ucnv_open("gb2312", &err);
	int32_t len = ucnv_fromUChars(conv, result.data(), result.size(), &c, 1, &err);
	if (err > U_ZERO_ERROR)
	{
		std::cerr << "char16_to_utf8 failed.\n";
		std::abort();
	}
	result.resize(len);
	return result;
}

int main()
{
	std::cout << std::format("{}\n", "Hello, world!");

	std::ifstream char_list(GB2312_LIST_FILE, std::ios::binary);
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

	std::ofstream lua_script(OUTPUT_LUA_FILE, std::ios::binary);
	if (!lua_script)
	{
		std::cerr << "failed to open output file.\n";
		std::abort();
	}
	lua_script << "char16_to_gb2312_table = {\n";
	while (char_list.peek() != EOF)
	{
		char_list.read(reinterpret_cast<char*>(&c), sizeof(c));
		const auto gbstr = char16_to_gb2312(c);
		lua_script << std::format("\t[{}] = \"\\{:0>3}\\{:0>3}\",\n", uint16_t(c), uint8_t(gbstr[0]), uint8_t(gbstr[1]));
	}
	lua_script << "}\n";
	return 0;
}