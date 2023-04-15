@ECHO OFF
python genshin_set_color.py -n KukiShinobuTexcoord.buf --stride 12 -a 0
move KukiShinobuTexcoord.buf KukiShinobuTexcoordOld.buf
move KukiShinobuTexcoordModified.buf KukiShinobuTexcoord.buf
PAUSE