local gc=love.graphics
local kb=love.keyboard
local ins,rem=table.insert,table.remove
local C=COLOR

local inputBox=WIDGET.newInputBox{name="input",x=40,y=650,w=1200,h=50}
local outputBox=WIDGET.newTextBox{name="output",x=40,y=30,w=1200,h=610,font=25,lineH=25,fix=true}

local function log(str)outputBox:push(str)end
log{C.lP,"Techmino Console"}
log{C.lC,"©2021 26F Studio   some rights reserved"}
log{C.dR,"DO NOT RUN ANY CODE YOU DON'T UNDERSTAND"}

local history,hisPtr={"?"}
local the_secret=(14^2*10)..(2*11)



local commands={}
--Basic commands
do--commands.help(arg)
	--format of table command_help_messages:
	--	key: the command
	--	value: a table containing the following two elements:
	--		description: a string that shows when user types `help`.
	--		details: an array of strings containing documents, shows when user types `help [command]`.
	local command_help_messages={
		help={
			description="Display help messages.",
			details={
				"Display help messages.",
				"",
				"Aliases: help ?",
				"",
				"Usage:",
				"help",
				"help [command_name]",
			},
		},["?"]="help",
		["#"]={
			description="Run arbitrary Lua code.",
			details={
				"Run arbitrary Lua code.",
				"",
				"Usage: #[lua_source_code]",
				"",
				"print() can be used to print text into this window.",
			},
		},
		exit={
			description="Return to the previous menu.",
			details={
				"Return to the previous menu.",
				"",
				"Aliases: exit quit bye",
				"",
				"Usage: exit",
			},
		},quit="exit",bye="exit",
		echo={
			description="Print a message to this window.",
			details={
				"Print a message to this window.",
				"",
				"Usage: echo [message]",
			},
		},
		print={
			description="Print a file to this window.",
			details={
				"Print a file to this window.",
				"",
				"Usage: print [filename]",
			},
		},
		url={
			description="Attempt to open a URL with your device.",
			details={
				"Attempt to open a URL with your device.",
				"",
				"Usage: url [url]",
			},
		},
		tree={
			description="List all files & directories in saving directory",
			details={
				"List all files & directories in saving directory",
				"",
				"Usage: tree",
			},
		},
		del={
			description="Attempt to delete a file or directory",
			details={
				"Attempt to delete a file or directory (in saving directory)",
				"",
				"Aliases: del rm",
				"",
				"Usage: del [filename|dirname]",
				"Usage: del -s [dirname]",
			},
		},rm="del",
		mv={
			description="Rename or move a file (in saving directory)",
			details={
				"Rename or move a file (in saving directory)",
				{C.lY,"Warning: file name with space is not allowed"},
				"",
				"Aliases: mv ren",
				"",
				"Usage: mv [oldfilename] [newfilename]",
			},
		},ren="mv",
		cls={
			description="Clear the log output.",
			details={
				"Clear the log output.",
				"",
				"Usage: cls",
			},
		},
		rst={
			description="Clear the command history.",
			details={
				"Clear the command history.",
				"",
				"Usage: rst",
			},
		},
		rmst={
			description="Erase setting value",
			details={
				"Erase a setting value",
				"Useful if you have your setting corrupted",
				"YOU MUST RESTART THE GAME AFTER USING THIS",
				"",
				"Usage: rmst [key]",
			},
		},
		fn={
			description="Simulates a Function key press.",
			details={
				"Acts as if you have pressed a function key (i.e. F1-F12) on a keyboard.",
				"Useful if you are on a mobile device without access to these keys.",
				"",
				"Usage: fn <1-12>",
			},
		},
		scrinfo={
			description="Display information about the game window.",
			details={
				"Display information about the game window.",
				"",
				"Usage: scrinfo",
			},
		},
		wireframe={
			description="Enable or disable wireframe.",
			details={
				"Enable or disable wireframe.",
				"",
				"Usage: wireframe <true|false>",
			},
		},
		gammacorrect={
			description="Enable or disable gamma correction.",
			details={
				"Enable or disable gamma correction.",
				"",
				"Usage: gammacorrect <true|false>",
			},
		},
		["\114\109\119\116\109"]={
			description="Remove something",
			details={
				"Remove something",
				"",
				"Usage: ?",
			},
		},
		unlockall={
			description="Unlock all modes on the map.",
			details={
				"Unlock all modes on the map.",
				"",
				"Usage: unlockall",
			},
		},
		play={
			description="Load a game mode, including those that are not on the map.",
			details={
				"Load a game mode, including those that are not on the map.",
				"",
				"Usage: play [mode_name]",
			},
		},
		playbgm={
			description="Play a BGM.",
			details={
				"Play a BGM.",
				"",
				"Aliases: playbgm music",
				"",
				"Usage: playbgm [bgmName]"
			},
		},music="playbgm",
		stopbgm={
			description="Stop the BGM.",
			details={
				"Stop the BGM.",
				"",
				"Usage: stopbgm"
			},
		},
		setbg={
			description="Set background.",
			details={
				"Set background.",
				"",
				"Usage: setbg [bgName]",
			},
		},
		theme={
			description="Load a theme.",
			details={
				"Load a theme.",
				"",
				"Usage: theme <classic|xmas|sprfes|zday1/2/3>",
			},
		},
		test={
			description="Go to an empty test scene",
			details={
				"Go to an empty test scene",
				"",
				"Usage: test",
			},
		},
		switchhost={
			description="Switch another host",
			details={
				"Disconnect all connections and switch to another host",
				"",
				"Usage:",
				"switchhost [host]",
				"switchhost [host] [port]",
				"switchhost [host] [port] [path]",
				"Example: switchhost 127.0.0.1 26000 /sock",
			},
		},
		applet={
			description="Go to an applet scene",
			details={
				"Go to an applet scene",
				"",
				"Aliases: applet app",
				"",
				"Usage:",
				"applet -list",
				"applet [appName]",
			},
		},app="applet",
	}TABLE.reIndex(command_help_messages)

	local command_help_list={
		"help",
		"#",
		"exit",
		"echo",
		"print",
		"url",
		"tree",
		"del",
		"mv",
		"cls",
		"rst",
		"rmst",
		"fn",
		"scrinfo",
		"wireframe",
		"gammacorrect",
		"\114\109\119\116\109",
		"unlockall",
		"play",
		"playbgm",
		"stopbgm",
		"setbg",
		"theme",
		"test",
		"switchhost",
		"applet",
	}
	function commands.help(arg)
		--help [command]
		if command_help_messages[arg]then
			for _,v in ipairs(command_help_messages[arg].details)do log(v)end
			return
		end

		--help
		for i=1,#command_help_list do
			local cmd=command_help_list[i]
			log{C.Z,cmd,C.H,"    "..command_help_messages[cmd].description}
		end
	end
	commands["?"]=commands.help
end
function commands.error(mes)error(mes)end
function commands.cls()outputBox:clear()end
function commands.rst()history,hisPtr={}log"History cleared"end
function commands.echo(str)if str~=""then log(str)end end
function commands.print(name)
	if name~=""then
		local info=love.filesystem.getInfo(name)
		if info then
			if info.type=='file'then
				log{COLOR.lC,"/* "..name.." */"}
				for l in love.filesystem.lines(name)do
					log(l)
				end
				log{COLOR.lC,"/* END */"}
			else
				log("Unprintable item: %s (%s)"):format(name,info.type)
			end
		else
			log{C.R,("No file called '%s'"):format(name)}
		end
	else
		log{C.A,"Usage: print [filename]"}
	end
end
function commands.url(url)
	if url~=""then
		local res,err=pcall(love.system.openURL,url)
		if not res then
			log{C.R,"[ERR] ",C.Z,err}
		end
	else
		log{C.A,"Usage: url [url]"}
	end
end
do--function commands.tree()
	local function tree(path,name,depth)
		local info=love.filesystem.getInfo(path..name)
		if info.type=='file'then
			log(("\t\t"):rep(depth)..name)
		elseif info.type=='directory'then
			log(("\t\t"):rep(depth)..name..">")
			local L=love.filesystem.getDirectoryItems(path..name)
			for _,subName in next,L do
				tree(path..name.."/",subName,depth+1)
			end
		else
			log("Unkown item type: %s (%s)"):format(name,info.type)
		end
	end
	function commands.tree()
		local L=love.filesystem.getDirectoryItems""
		for _,name in next,L do
			if love.filesystem.getRealDirectory(name)==SAVEDIR then
				tree("",name,0)
			end
		end
	end
end
do--function commands.del(name)
	local function delFile(name)
		if love.filesystem.remove(name)then
			log{C.Y,("Deleted: '%s'"):format(name)}
		else
			log{C.R,("Failed to delete: '%s'"):format(name)}
		end
	end
	local function delDir(name)
		if #love.filesystem.getDirectoryItems(name)==0 then
			if love.filesystem.remove(name)then
				log{C.Y,("Directory deleted: '%s'"):format(name)}
			else
				log{C.R,("Failed to delete directory '%s'"):format(name)}
			end
		else
			log{C.R,"Directory '"..name.."' is not empty"}
		end
	end
	local function recursiveDelDir(dir)
		local containing=love.filesystem.getDirectoryItems(dir)
		if #containing==0 then
			if love.filesystem.remove(dir)then
				log{C.Y,("Succesfully deleted directory '%s'"):format(dir)}
			else
				log{C.R,("Failed to delete directory '%s'"):format(dir)}
			end
		else
			for _,name in next,containing do
				local path=dir.."/"..name
				local info=love.filesystem.getInfo(path)
				if info then
					if info.type=='file'then
						delFile(path)
					elseif info.type=='directory'then
						recursiveDelDir(path)
					else
						log("Unkown item type: %s (%s)"):format(name,info.type)
					end
				end
			end
			delDir(dir)
		end
	end
	function commands.del(name)
		local recursive=name:sub(1,3)=="-s "
		if recursive then name=name:sub(4)end

		if name~=""then
			local info=love.filesystem.getInfo(name)
			if info then
				if info.type=='file'then
					if not recursive then
						delFile(name)
					else
						log{C.R,("'%s' is not a directory."):format(name)}
					end
				elseif info.type=='directory'then
					(recursive and recursiveDelDir or delDir)(name)
				else
					log("Unkown item type: %s (%s)"):format(name,info.type)
				end
			else
				log{C.R,("No file called '%s'"):format(name)}
			end
		else
			log{C.A,"Usage: del [filename|dirname]"}
			log{C.A,"Usage: del -s [dirname]"}
		end
	end
	commands.rm=commands.del
end
function commands.mv(arg)
	--Check arguments
	arg=STRING.split(arg," ")
	if #arg>2 then
		log{C.lY,"Warning: file name with space is not allowed"}
		return
	elseif #arg<2 then
		log{C.A,"Usage: ren [oldfilename] [newfilename]"}
		return
	end

	--Check file exist
	local info
	info=love.filesystem.getInfo(arg[1])
	if not(info and info.type=='file')then log{C.R,("'%s' is not a file!"):format(arg[1])}return end
	info=love.filesystem.getInfo(arg[2])
	if info then log{C.R,("'%s' already exists!"):format(arg[2])}return end

	--Read file
	local data,err1=love.filesystem.read('data',arg[1])
	if not data then log{C.R,("Failed to read file '%s': "):format(arg[1],err1 or"Unknown error")}return end

	--Write file
	local res,err2=love.filesystem.write(arg[2],data)
	if not res then log{C.R,("Failed to write file: "):format(err2 or"Unknown error")}return end

	--Delete file
	if not love.filesystem.remove(arg[1])then log{C.R,("Failed to delete old file ''"):format(arg[1])}return end

	log{C.Y,("Succesfully renamed file '%s' to '%s'"):format(arg[1],arg[2])}
end
commands.ren=commands.mv

commands.exit=backScene
commands.quit=backScene
commands.bye=backScene

--Game commands
function commands.rmst(key)
	if #key>0 then
		if SETTING[key]~=nil then
			SETTING[key]=nil
			FILE.save(SETTING,'conf/settings','q')
			log{C.Y,("Succesfully erased key '%s'"):format(key)}
		else
			log{C.R,"No key called "..key}
		end
	else
		log{C.A,"Usage: rmst [key]"}
	end
end
function commands.fn(n)
	if tonumber(n)then
		n=math.floor(tonumber(n))
		if n>=1 and n<=12 then
			love.keypressed("f"..n)
		end
	else
		log{C.A,"Usage: fn [1~12]"}
	end
end
function commands.scrinfo()
	for _,v in next,SCR.info()do
		log(v)
	end
end
function commands.wireframe(bool)
	if bool=="true"or bool=="false"then
		gc.setWireframe(bool=="true")
		log("Wireframe: "..(gc.isWireframe()and"on"or"off"))
	else
		log{C.A,"Usage: wireframe <true|false>"}
	end
end
function commands.gammacorrect(bool)
	if bool=="true"or bool=="false"then
		love._setGammaCorrect(bool=="true")
		log("GammaCorrect: "..(gc.isGammaCorrect()and"on"or"off"))
	else
		log{C.A,"Usage: gammacorrect <true|false>"}
	end
end
commands["\114\109\119\116\109"]=function(pw)
	if pw==the_secret then
		_G["\100\114\97\119\70\87\77"]=NULL
		log{C.lC,"\87\97\116\101\114\109\97\114\107\32\82\101\109\111\118\101\100"}
		SFX.play('clear')
	end
end
function commands.unlockall(bool)
	if bool=="sure"then
		for name,M in next,MODES do
			if type(name)=='string'and not RANKS[name]and M.x then
				RANKS[name]=M.score and 0 or 6
			end
		end
		FILE.save(RANKS,'conf/unlock')
		log{C.lC,"\85\78\76\79\67\75\65\76\76"}
		SFX.play('clear_2')
	else
		log"Are you sure to unlock all modes?"
		log"Type: unlockall sure"
	end
end
function commands.play(m)--marathon_bfmax can only entered through here
	if MODES[m]then
		loadGame(m,true)
	elseif m~=""then
		log{C.R,"No mode called "..m}
	else
		log{C.A,"Usage: play [modeName]"}
	end
end
function commands.playbgm(bgm)
	if bgm~=""then
		if bgm~=BGM.nowPlay then
			if BGM.play(bgm)then
				log("Now playing: "..bgm)
			else
				log("No BGM called "..bgm)
			end
			else
			log("Already playing: "..bgm)
			end
	else
		log{C.A,"Usage: playbgm [bgmName]"}
	end
end
commands.music=commands.playbgm
function commands.stopbgm()
	BGM.stop()
end
function commands.setbg(name)
	if name~=""then
		if name~=BG.cur then
			if BG.set(name)then
				log(("Background set to '%s'"):format(name))
			else
				log(("No background called '%s'"):format(name))
			end
		else
			log(("Background already set to '%s'"):format(name))
		end
	else
		log{C.A,"Usage: setbg [bgName]"}
	end
end
function commands.theme(name)
	if name~=""then
		if THEME.set(name)then
			log("Theme set to: "..name)
		else
			log("No theme called "..name)
		end
	else
		log{C.A,"Usage: theme [themeName]"}
	end
end
function commands.test()
	SCN.go('test','none')
end
function commands.switchhost(arg)
	arg=STRING.split(arg," ")
	if arg[1]and #arg<=3 then
		WS.switchHost(unpack(arg))
		log{C.Y,"Host switched"}
	else
		log{C.A,"Usage:"}
		log{C.A,"switchhost [host]"}
		log{C.A,"switchhost [host] [port]"}
		log{C.A,"switchhost [host] [port] [path]"}
		log{C.A,"Example: switchhost 127.0.0.1 26000 /sock"}
	end
end
do--commands.applet(name)
	local appList={"15p","grid","pong","atoz","uttt","cube","2048","ten","tap","dtw","cannon","dropper","calc","reflect","polyforge"}
	local appScene={'app_15p','app_schulteG','app_pong','app_AtoZ','app_UTTT','app_cubefield','app_2048','app_ten','app_tap','app_dtw','app_cannon','app_dropper','app_calc','app_reflect','app_polyforge'}
	local appDescription={
		"15 Puzzle, a.k.a. sliding puzzle",
		"Schulte Grid",
		"Pong (2P minigame)",
		"A to Z, a.k.a. typing",
		"Ultimate Tic-Tac-Toe (2P minigame)",
		"Cubefield",
		"2048",
		"Just Get Ten",
		"Tapping speed test",
		"Don't Touch White, a.k.a. Piano Tiles",
		"Cannon",
		"Dropper",
		"Calculator",
		"Reflect (2P minigame)",
		"Polyforge"
	}
	function commands.applet(name)
		if name=="-list"then
			for i=1,#appList do
				log(appList[i]..": "..appDescription[i])
			end
		elseif name~=""then
			local i=TABLE.find(appList,name)
			if i then
				SCN.go(appScene[i])
			else
				log{C.A,"No this applet"}
			end
		else
			log{C.A,"Usage:"}
			log{C.A,"applet -list"}
			log{C.A,"applet [appName]"}
		end
	end
	commands.app=commands.applet
end



local combKey={}
function combKey.x()
	love.system.setClipboardText(inputBox:getText())
	inputBox:clear()
	SFX.play('reach')
end
function combKey.c()
	love.system.setClipboardText(inputBox:getText())
	SFX.play('reach')
end
function combKey.v()
	inputBox:addText(love.system.getClipboardText())
	SFX.play('reach')
end



--Environment for user's function
local noLog=false
local function log_user(str)
	log(noLog and"CHEATER."or tostring(str))
end
local userG={
	timer=TIME,

	_VERSION=VERSION.code,
	assert=assert,error=error,
	tonumber=tonumber,tostring=tostring,
	select=select,next=next,
	ipairs=ipairs,pairs=pairs,
	print=log_user,type=type,
	pcall=pcall,xpcall=xpcall,
	rawget=rawget,rawset=rawset,rawlen=rawlen,rawequal=rawequal,
	setfenv=setfenv,setmetatable=setmetatable,
	-- require=require,
	-- load=load,loadfile=loadfile,dofile=dofile,
	-- getfenv=getfenv,getmetatable=getmetatable,
	-- collectgarbage=collectgarbage,

	math={},string={},table={},bit={},coroutine={},
	debug={"No way."},package={"No way."},io={"No way."},os={"No way."},
}userG._G=userG
TABLE.complete(math,		userG.math)
TABLE.complete(string,		userG.string)
userG.string.dump=nil
TABLE.complete(table,		userG.table)
TABLE.complete(bit,			userG.bit)
TABLE.complete(coroutine,	userG.coroutine)

--Puzzle box
local first_key={}
local fleg={
	pw=the_secret,
	second_box="Coming soon",
}setmetatable(fleg,{__tostring=function()return"The fl\97g."end})
local function first_box(k,f)
	if k~=first_key then log"Usage:"log"?"return end
	if not f then log"Two keys needed"return end
	if type(f):byte()~=102 then log"Function need"return end
	noLog=true
	if not f()then noLog=false log"Give me something"return end
	if f()~=f then noLog=false log"No, yourself."return end
	if f(26)~=math.huge then noLog=false log"Infinity for the lucky number"return end
	noLog=false
	log"You lose."
	return fleg
end
userG.the_key=first_key
userG.the_box=first_box



local scene={}

function scene.sceneInit()
	TASK.new(function()WIDGET.focus(inputBox)end)
	BG.set('none')
end

function scene.wheelMoved(_,y)
	WHEELMOV(y,"scrollup","scrolldown")
end

function scene.keyDown(k)
	if k=="return"then
		local input=STRING.trim(inputBox:getText())
		if input==""then return end

		--Write History
		ins(history,input)
		if history[27]then rem(history,1)end
		hisPtr=nil

		--Insert empty line
		log""

		--Execute
		if input:byte()==35 then
			--Execute lua code
			log{C.lC,"> "..input}
			local code,err=loadstring(input:sub(2))
			if code then
				setfenv(code,userG)
				code,err=pcall(code)
				if not code then
					log{C.R,"[ERR] ",C.Z,err}
				end
			else
				log{C.R,"[SYNTAX ERR] ",C.Z,err}
			end
		else
			--Execute builtin command
			log{C.lS,"> "..input}
			local p=input:find(" ")
			local cmd,arg
			if p then
				cmd=input:sub(1,p-1):lower()
				arg=input:sub(input:find("%S",p+1)or -1)
			else
				cmd=input
				arg=""
			end
			if commands[cmd]then
				commands[cmd](arg)
			else
				log{C.R,"No command called "..cmd}
			end
		end
		inputBox:clear()
	elseif k=="up"then
		if not hisPtr then
			hisPtr=#history
			if hisPtr>0 then
				inputBox:setText(history[hisPtr])
			end
		elseif hisPtr>1 then
			hisPtr=hisPtr-1
			inputBox:setText(history[hisPtr])
		end
	elseif k=="down"then
		if hisPtr then
			hisPtr=hisPtr+1
			if history[hisPtr]then
				inputBox:setText(history[hisPtr])
			else
				hisPtr=nil
				inputBox:clear()
			end
		end
	elseif k=="tab"then
		local str=inputBox:getText()
		if str~=""and not str:find("%s")then
			local res={}
			for c in next,commands do
				if c:find(str,nil,true)==1 then
					ins(res,c)
				end
			end

			if #res>1 then
				log(">Commands start with '"..str.."' :")
				table.sort(res)
				for i=1,#res do log{COLOR.lH,res[i]}end
			elseif #res==1 then
				inputBox:setText(res[1])
			end
		end
	elseif k=="scrollup"then outputBox:scroll(-5)
	elseif k=="scrolldown"then outputBox:scroll(5)
	elseif k=="pageup"then outputBox:scroll(-20)
	elseif k=="pagedown"then outputBox:scroll(20)
	elseif k=="home"then outputBox:scroll(-1e99)
	elseif k=="end"then outputBox:scroll(1e99)
	elseif combKey[k]and kb.isDown("lctrl","rctrl")then
		combKey[k]()
	elseif k=="escape"then
		if not WIDGET.isFocus(inputBox)then
			WIDGET.focus(inputBox)
		else
			SCN.back()
		end
	else
		if not WIDGET.isFocus(inputBox)then WIDGET.focus(inputBox)end
		WIDGET.keyPressed(k)
	end
end

scene.widgetList={
	inputBox,
	outputBox,
}

return scene