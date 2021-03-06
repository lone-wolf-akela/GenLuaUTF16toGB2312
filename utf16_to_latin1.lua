function conv_chatname(chatname)
	local char_table = {
		[32] = "\032",
		[33] = "\033",
		[34] = "\034",
		[35] = "\035",
		[36] = "\036",
		[37] = "\037",
		[38] = "\038",
		[39] = "\039",
		[40] = "\040",
		[41] = "\041",
		[42] = "\042",
		[43] = "\043",
		[44] = "\044",
		[45] = "\045",
		[46] = "\046",
		[47] = "\047",
		[48] = "\048",
		[49] = "\049",
		[50] = "\050",
		[51] = "\051",
		[52] = "\052",
		[53] = "\053",
		[54] = "\054",
		[55] = "\055",
		[56] = "\056",
		[57] = "\057",
		[58] = "\058",
		[59] = "\059",
		[60] = "\060",
		[61] = "\061",
		[62] = "\062",
		[63] = "\063",
		[64] = "\064",
		[65] = "\065",
		[66] = "\066",
		[67] = "\067",
		[68] = "\068",
		[69] = "\069",
		[70] = "\070",
		[71] = "\071",
		[72] = "\072",
		[73] = "\073",
		[74] = "\074",
		[75] = "\075",
		[76] = "\076",
		[77] = "\077",
		[78] = "\078",
		[79] = "\079",
		[80] = "\080",
		[81] = "\081",
		[82] = "\082",
		[83] = "\083",
		[84] = "\084",
		[85] = "\085",
		[86] = "\086",
		[87] = "\087",
		[88] = "\088",
		[89] = "\089",
		[90] = "\090",
		[91] = "\091",
		[92] = "\092",
		[93] = "\093",
		[94] = "\094",
		[95] = "\095",
		[96] = "\096",
		[97] = "\097",
		[98] = "\098",
		[99] = "\099",
		[100] = "\100",
		[101] = "\101",
		[102] = "\102",
		[103] = "\103",
		[104] = "\104",
		[105] = "\105",
		[106] = "\106",
		[107] = "\107",
		[108] = "\108",
		[109] = "\109",
		[110] = "\110",
		[111] = "\111",
		[112] = "\112",
		[113] = "\113",
		[114] = "\114",
		[115] = "\115",
		[116] = "\116",
		[117] = "\117",
		[118] = "\118",
		[119] = "\119",
		[120] = "\120",
		[121] = "\121",
		[122] = "\122",
		[123] = "\123",
		[124] = "\124",
		[125] = "\125",
		[161] = "\161",
		[162] = "\162",
		[163] = "\163",
		[164] = "\164",
		[165] = "\165",
		[166] = "\166",
		[169] = "\169",
		[171] = "\171",
		[174] = "\174",
		[176] = "\176",
		[182] = "\182",
		[183] = "\183",
		[187] = "\187",
		[191] = "\191",
		[192] = "\192",
		[193] = "\193",
		[194] = "\194",
		[195] = "\195",
		[196] = "\196",
		[197] = "\197",
		[198] = "\198",
		[199] = "\199",
		[200] = "\200",
		[201] = "\201",
		[203] = "\203",
		[204] = "\204",
		[205] = "\205",
		[206] = "\206",
		[208] = "\208",
		[209] = "\209",
		[211] = "\211",
		[212] = "\212",
		[213] = "\213",
		[214] = "\214",
		[215] = "\215",
		[217] = "\217",
		[218] = "\218",
		[219] = "\219",
		[220] = "\220",
		[223] = "\223",
		[224] = "\224",
		[225] = "\225",
		[226] = "\226",
		[227] = "\227",
		[228] = "\228",
		[229] = "\229",
		[230] = "\230",
		[231] = "\231",
		[232] = "\232",
		[233] = "\233",
		[234] = "\234",
		[235] = "\235",
		[236] = "\236",
		[237] = "\237",
		[238] = "\238",
		[239] = "\239",
		[240] = "\240",
		[241] = "\241",
		[242] = "\242",
		[243] = "\243",
		[244] = "\244",
		[245] = "\245",
		[246] = "\246",
		[247] = "\247",
		[249] = "\249",
		[250] = "\250",
		[251] = "\251",
		[252] = "\252",
		[253] = "\253",
		[255] = "\255",
		[256] = "\026",
		[257] = "\026",
		[258] = "\026",
		[259] = "\026",
		[260] = "\026",
		[261] = "\026",
		[262] = "\026",
		[263] = "\026",
		[264] = "\026",
		[265] = "\026",
		[266] = "\026",
		[267] = "\026",
		[268] = "\026",
		[269] = "\026",
		[270] = "\026",
		[271] = "\026",
		[272] = "\026",
		[273] = "\026",
		[274] = "\026",
		[275] = "\026",
		[276] = "\026",
		[277] = "\026",
		[278] = "\026",
		[279] = "\026",
		[280] = "\026",
		[281] = "\026",
		[282] = "\026",
		[283] = "\026",
		[284] = "\026",
		[285] = "\026",
		[286] = "\026",
		[287] = "\026",
		[288] = "\026",
		[289] = "\026",
		[290] = "\026",
		[291] = "\026",
		[292] = "\026",
		[293] = "\026",
		[294] = "\026",
		[295] = "\026",
		[296] = "\026",
		[297] = "\026",
		[298] = "\026",
		[299] = "\026",
		[300] = "\026",
		[301] = "\026",
		[302] = "\026",
		[303] = "\026",
		[304] = "\026",
		[305] = "\026",
		[308] = "\026",
		[309] = "\026",
		[310] = "\026",
		[311] = "\026",
		[312] = "\026",
		[314] = "\026",
		[315] = "\026",
		[317] = "\026",
		[318] = "\026",
		[321] = "\026",
		[322] = "\026",
		[323] = "\026",
		[324] = "\026",
		[325] = "\026",
		[326] = "\026",
		[327] = "\026",
		[328] = "\026",
		[330] = "\026",
		[331] = "\026",
		[332] = "\026",
		[333] = "\026",
		[334] = "\026",
		[335] = "\026",
		[336] = "\026",
		[337] = "\026",
		[338] = "\026",
		[339] = "\026",
		[340] = "\026",
		[341] = "\026",
		[342] = "\026",
		[343] = "\026",
		[344] = "\026",
		[345] = "\026",
		[346] = "\026",
		[347] = "\026",
		[348] = "\026",
		[349] = "\026",
		[352] = "\026",
		[353] = "\026",
		[354] = "\026",
		[355] = "\026",
		[356] = "\026",
		[357] = "\026",
		[358] = "\026",
		[359] = "\026",
		[360] = "\026",
		[361] = "\026",
		[362] = "\026",
		[363] = "\026",
		[364] = "\026",
		[365] = "\026",
		[366] = "\026",
		[367] = "\026",
		[368] = "\026",
		[369] = "\026",
		[370] = "\026",
		[371] = "\026",
		[372] = "\026",
		[373] = "\026",
		[374] = "\026",
		[375] = "\026",
		[376] = "\026",
		[377] = "\026",
		[378] = "\026",
		[379] = "\026",
		[380] = "\026",
		[381] = "\026",
		[382] = "\026",
		[536] = "\026",
		[537] = "\026",
		[700] = "\026",
		[710] = "\026",
		[711] = "\026",
		[771] = "\026",
		[772] = "\026",
		[774] = "\026",
		[775] = "\026",
		[778] = "\026",
		[779] = "\026",
		[807] = "\026",
		[808] = "\026",
		[960] = "\026",
		[1025] = "\026",
		[1026] = "\026",
		[1027] = "\026",
		[1028] = "\026",
		[1029] = "\026",
		[1030] = "\026",
		[1031] = "\026",
		[1032] = "\026",
		[1033] = "\026",
		[1034] = "\026",
		[1035] = "\026",
		[1036] = "\026",
		[1038] = "\026",
		[1039] = "\026",
		[1040] = "\026",
		[1041] = "\026",
		[1042] = "\026",
		[1043] = "\026",
		[1044] = "\026",
		[1045] = "\026",
		[1046] = "\026",
		[1047] = "\026",
		[1048] = "\026",
		[1049] = "\026",
		[1050] = "\026",
		[1051] = "\026",
		[1052] = "\026",
		[1053] = "\026",
		[1054] = "\026",
		[1055] = "\026",
		[1056] = "\026",
		[1057] = "\026",
		[1058] = "\026",
		[1059] = "\026",
		[1060] = "\026",
		[1061] = "\026",
		[1062] = "\026",
		[1063] = "\026",
		[1064] = "\026",
		[1065] = "\026",
		[1066] = "\026",
		[1067] = "\026",
		[1068] = "\026",
		[1069] = "\026",
		[1070] = "\026",
		[1071] = "\026",
		[1072] = "\026",
		[1073] = "\026",
		[1074] = "\026",
		[1075] = "\026",
		[1076] = "\026",
		[1077] = "\026",
		[1078] = "\026",
		[1079] = "\026",
		[1080] = "\026",
		[1081] = "\026",
		[1082] = "\026",
		[1083] = "\026",
		[1084] = "\026",
		[1085] = "\026",
		[1086] = "\026",
		[1087] = "\026",
		[1088] = "\026",
		[1089] = "\026",
		[1090] = "\026",
		[1091] = "\026",
		[1092] = "\026",
		[1093] = "\026",
		[1094] = "\026",
		[1095] = "\026",
		[1096] = "\026",
		[1097] = "\026",
		[1098] = "\026",
		[1099] = "\026",
		[1100] = "\026",
		[1101] = "\026",
		[1102] = "\026",
		[1103] = "\026",
		[1105] = "\026",
		[1106] = "\026",
		[1107] = "\026",
		[1108] = "\026",
		[1109] = "\026",
		[1110] = "\026",
		[1111] = "\026",
		[1112] = "\026",
		[1113] = "\026",
		[1114] = "\026",
		[1115] = "\026",
		[1116] = "\026",
		[1118] = "\026",
		[1119] = "\026",
		[1168] = "\026",
		[1169] = "\026",
		[8211] = "\026",
		[8212] = "\026",
		[8216] = "\026",
		[8217] = "\026",
		[8218] = "\026",
		[8220] = "\026",
		[8221] = "\026",
		[8222] = "\026",
		[8224] = "\026",
		[8225] = "\026",
		[8226] = "\026",
		[8230] = "\026",
		[8240] = "\026",
		[8249] = "\026",
		[8250] = "\026",
		[8364] = "\026",
		[8470] = "\026",
		[8482] = "\026",
		[8719] = "\026",
		[9674] = "\026",

	}
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
