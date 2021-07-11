dofile("utf16_to_gb2312.lua")

execute("chcp 936")

chatname = {
  30005,
  33041,
  49,
  0,
}
print(conv_chatname(chatname)) -- 电脑1

chatname = "lone_wolf_rpgtes"
print(conv_chatname(chatname)) -- lone_wolf_rpgtes

chatname = {
  30005,
  0,
  49,
  0,
}
print(conv_chatname(chatname)) -- 电

chatname = {
  12,
  33041,
  49,
  0,
}
print(conv_chatname(chatname)) -- ?脑1

execute("pause")
execute("chcp 1252")
dofile("utf16_to_latin1.lua")
chatname = {
  214,
  214,
  214,
  0,
}
print(conv_chatname(chatname)) -- ÖÖÖ