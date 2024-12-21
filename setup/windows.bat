@echo off
color 0a
cd ..
echo Installing dependencies...
echo This might take a few moments depending on your internet speed.
@echo on
haxelib install lime
haxelib install openfl
haxelib install flixel 5.6.2
haxelib install flixel-addons 3.2.3
haxelib install flixel-tools 1.5.1
haxelib install flixel-ui 2.6.1
haxelib install hxCodec 2.5.1
haxelib install hscript
haxelib install hxcpp-debug-server
haxelib git away3d https://github.com/moxie-coder/away3d
haxelib git hxcpp https://github.com/HaxeFoundation/hxcpp/
haxelib git flxanimate https://github.com/Dot-Stuff/flxanimate 768740a56b26aa0c072720e0d1236b94afe68e3e
haxelib git linc_luajit https://github.com/superpowers04/linc_luajit
haxelib git funkin.vis https://github.com/FunkinCrew/funkVis 22b1ce089dd924f15cdc4632397ef3504d464e90
haxelib git grig.audio https://gitlab.com/haxe-grig/grig.audio.git cbf91e2180fd2e374924fe74844086aab7891666
haxelib git hxdiscord_rpc https://github.com/MAJigsaw77/hxdiscord_rpc 19518713cbd59fc5705f899144fffdbf9ae6695c
@echo off
echo Finished!
pause
