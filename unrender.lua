LUAGUI_NAME = "unrender"
LUAGUI_AUTH = "Kité"
LUAGUI_DESC = "unrenders Models in Camp Menu"


--- Game Version Check ---
epiccheck = 0x585B61
stmcheck = epiccheck+0x2F8
stmjpcheck = epiccheck+0x2A8



function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
	IsEpicGame = 0
	IsSteamGame = 0
	IsSteamJPGame = 0
	end
end

function _OnFrame()	

			if ReadLong(epiccheck) == 0x7265737563697065 and IsEpicGame == 0 then
				IsEpicGame = 1
			end
			
			if ReadLong(stmcheck) == 0x7265737563697065 and IsSteamGame == 0 then
				IsSteamGame = 1
			end
			
			if ReadLong(stmjpcheck) == 0x7265737563697065 and IsSteamJPGame == 0 then
				IsSteamJPGame = 1
			end
			
			if IsEpicGame == 1 then
				WriteArray(0x305FCF, {0x90, 0x90, 0x90, 0x90, 0x90})
				WriteArray(0x302BEF, {0x90, 0x90, 0x90, 0x90, 0x90})
				WriteArray(0x320316, {0x90, 0x90, 0x90, 0x90, 0x90})
			end
			
			
			if IsSteamGame == 1 then			
				WriteArray(0x306C0F, {0x90, 0x90, 0x90, 0x90, 0x90})
				WriteArray(0x30382F, {0x90, 0x90, 0x90, 0x90, 0x90})
				WriteArray(0x320F56, {0x90, 0x90, 0x90, 0x90, 0x90})
			end
			
			
			if IsSteamJPGame == 1 then
				WriteArray(0x306C0F, {0x90, 0x90, 0x90, 0x90, 0x90})
				WriteArray(0x30382F, {0x90, 0x90, 0x90, 0x90, 0x90})
				WriteArray(0x320F56, {0x90, 0x90, 0x90, 0x90, 0x90})
			end

end