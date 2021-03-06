local C=COLOR
return{
	anykey="Press a key!",
	sureQuit="Press again to exit",
	newVersion="Thanks for updating! Changelog:",
	httpTimeout="Connection error: Timed out",
	newDay="A new day, a new beginning!",
	playedLong="You have been playing for a long time. Make sure to rest well!",
	playedTooMuch="You have been playing for too long! Playing a block game is fun, but it's time to take a break.",

	atkModeName={"Random","Badges","K.O.s","Attackers"},
	royale_remain="$1 Player(s) Remaining",
	powerUp={[0]="+000%","+025%","+050%","+075%","+100%"},
	cmb={nil,"1 Combo","2 Combo","3 Combo","4 Combo","5 Combo","6 Combo","7 Combo","8 Combo","9 Combo","10 Combo!","11 Combo!","12 Combo!","13 Combo!","14 Combo!!","15 Combo!!","16 Combo!!","17 Combo!!!","18 Combo!!!","19 Combo!!!","MEGACMB"},
	spin="-Spin ",
	clear={"Single","Double","Triple","Techrash","Pentacrash","Hexacrash"},
	mini="Mini",b2b="B2B ",b3b="B2B2B ",
	PC="Perfect Clear",HPC="Hemi-Perfect Clear",
	replaying="[Replay]",

	stage="Stage $1",
	great="Great!",
	awesome="Awesome!",
	almost="Almost!",
	continue="Keep going!",
	maxspeed="Max speed!",
	speedup="Speed up!",
	missionFailed="Wrong Clear",

	speedLV="Speed Level",
	line="Lines",atk="Attack",eff="Efficiency",
	rpm="RPM",tsd="TSD",
	grade="Grade",techrash="Techrash",
	wave="Wave",nextWave="Next",
	combo="Combo",maxcmb="Max Combo",
	pc="Perfect Clear",ko="KO",

	win="Win!",
	lose="Lose",
	finish="Finish",
	gamewin="You Win!",
	gameover="Game Over",
	pause="Pause",
	pauseCount="Pauses",
	finesse_ap="All Perfect",
	finesse_fc="Full Combo",

	page="Page:",

	ai_fixed="The AI is incompatible with fixed sequences.",
	ai_prebag="The AI is incompatible with custom sequences.",
	ai_mission="The AI is incompatible with custom missions.",
	saveDone="Data Saved",
	saveError="Failed to save:",
	loadError="Failed to load:",
	switchSpawnSFX="Please turn on the spawn SFX .",
	ranks={"D","C","B","A","S"},

	needRestart="Retry for the changes to take effect.",

	exportSuccess="Exported successfully",
	importSuccess="Imported successfully",
	dataCorrupted="Data corrupted",
	pasteWrongPlace="Paste at wrong place?",
	noFile="File not found",

	VKTchW="Touch Weight",
	VKOrgW="Origin Weight",
	VKCurW="Current. Pos. Weight",

	noScore="No Scores Yet",
	highScore="Personal Bests",
	newRecord="New Record!",

	getNoticeFail="Failed fetching announcements...",
	getVersionFail="Update detection failed",
	oldVersion="Version $1 is now available!",
	needUpdate="Newer version required!",
	notFinished="Coming soon!",

	jsonError="JSON error",

	noUsername="Please specify a username.",
	wrongEmail="You entered an incorrect e-mail address.",
	noPassword="Please enter your password.",
	diffPassword="Passwords don't match.",
	registerSuccessed="Registration succeeded!",
	registerFailed="Registration failed",
	loginSuccessed="You are now logged in!",
	loginFailed="Failed to log in.",
	accessSuccessed="Access Granted.",
	accessFailed="Access Denied.",

	wsConnecting="Websocket: Connecting",
	wsSuccessed="WebSocket: Connected.",
	wsFailed="WebSocket: Connection Failed.",
	wsClose="WebSocket Closed: ",
	netTimeout="Network connection timeout",

	onlinePlayerCount="Online",

	createRoomTooFast="You are creating a room too fast!",
	createRoomSuccessed="Room successfully created!",
	started="Playing",
	joinRoom="has joined the room.",
	leaveRoom="has left the room.",
	ready="Ready",
	connStream="Connecting",
	waitStream="Waiting",
	champion="$1 won the game!",
	spectating="Spectating",
	chatRemain="Online",
	chatStart="------Beginning of log------",
	chatHistory="------New messages below------",

	roomsCreateFailed="Failed to create room.",
	roomsFetchFailed="Failed to fetch room list.",

	errorMsg="Techmino ran into a problem and needs to restart.\nYou can send the error log to the devs.",

	modInstruction="Choose your modifiers!\nMods allow you to change the game.\nThey may also break it in weird ways.\nBeware, some mods will cause your game to be unranked!",
	modInfo={
		next="NEXT\nOverrides the number of Next pieces.",
		hold="HOLD\nOverrides the number of Hold pieces.",
		hideNext="Hidden NEXT\nHides a specific amount of pieces on the Next Queue.",
		infHold="InfiniHold\nAllows you to hold pieces infinitely.",
		hideBlock="Hide Current Piece:\nMakes the piece you are controlling invisible.",
		hideGhost="No Ghost\nMakes the Ghost Piece invisible.",
		hidden="Hide Locked Pieces.\nMakes locked pieces fade out.",
		hideBoard="Hide Board\nPartially or fully hides the field.",
		flipBoard="Flip Board\nFlips or rotates the field.",
		dropDelay="Gravity\nOverrides the falling speed in frames/block.",
		lockDelay="Lock Delay\nOverrides the lock delay in frames.",
		waitDelay="Spawn Delay\nOverrides the spawn delay in frames.",
		fallDelay="Line Clear Delay\nOverrides the line clear delay in frames.",
		life="Life\nChanges the initial number of additional lives.",
		forceB2B="B2B Only\nEnds the game when the B2B gauge drops below the initial line.",
		forceFinesse="Finesse Only\nEnds the game on any finesse fault",
		tele="Teleport\nForces 0 DAS and 0 ARR.",
		noRotation="No Rotation\nDisables piece rotations.",
		noMove="No Movement\nDisables left and right movements.",
		customSeq="Randomizer\nOverrides the randomizer for the block sequence.",
		pushSpeed="Garbage Speed\nOverride the rising speed of garbage lines (blocks/frame).",
		boneBlock="[ ]\nPlay with [ ] blocks.",
	},
	pauseStat={
		"Time:",
		"Key/Rot./Hold:",
		"Piece:",
		"Row/Dig:",
		"Attack/DigAtk:",
		"Received:",
		"Clears:",
		"Spins:",
		"B2B/B3B/PC/HPC:",
		"Finesse:",
	},
	radar={"DEF","OFF","ATK","SEND","SPD","DIG"},
	radarData={
		"D'PM",
		"ADPM",
		"APM",
		"SPM",
		"L'PM",
		"DPM",
	},
	stat={
		"Times Launched:",
		"Play Count:",
		"Play Time:",
		"Key/Rot./Hold:",
		"Block/Row/Atk.:",
		"Recv./Res./Asc.:",
		"Dig/Dig Atk.:",
		"Eff./Dig Eff.:",
		"B2B/B3B:",
		"PC/HPC:",
		"FnsErrs./FnsRate:",
	},
	aboutTexts={
		"This is just an *ordinary* block stacker. Really, that's it.",
		"It has inspirations from C2/IO/JS/WWC/KOS etc.",
		"",
		"Powered by LÖVE/love2d",
		"Any suggestions or bug reports are appreciated!",
		"Make sure to get the game only from official sources,",
		"as we can't make sure you're safe if you got it elsewhere.",
		"The author is not responsible for any modifications.",
		"While the game is free, donations are appreciated."
	},
	staff={
		"Author: MrZ  E-mail: 1046101471@qq.com",
		"Powered by LÖVE2D",
		"",
		"Program: MrZ, Particle_G, [FinnTenzor]",
		"Art: MrZ, ScF, [Gnyar, 旋律星萤, T0722]",
		"Music: MrZ, ERM, [T0722, Aether]",
		"Voice & Sound: Miya, Naki, MrZ",
		"Performance: 模电, HBM",
		"Translations: User670, MattMayuga, Mizu, Mr.Faq, ScF",
		"",
		"Special Thanks:",
		"User670, Big_True, Flyz, Farter, 思竣",
		"T9972, 蕴空之灵, Teatube, [All test staff]",
	},
	used=[[
	Tools used:
		Beepbox
		Goldwave
		GFIE
		FL Mobile
	Libs used:
		Cold_Clear [MinusKelvin]
		json.lua [rxi]
		profile.lua [itraykov]
		simple-love-lights [dylhunn]
	]],
	support="Support the author",
	group="Join our Discord: discord.gg/f9pUvkh",
	WidgetText={
		main={
			offline="Single Player",
			qplay="Last Played",
			online="Multiplayer",
			custom="Custom Game",
			setting="Settings",
			stat="Statistics",
			music="Music & SE",
			dict="Zictionary",
			manual="Manual",
		},
		main_simple={
			sprint="Sprint",
			marathon="Marathon",
		},
		mode={
			mod="Mods (F1)",
			start="Start",
		},
		mod={
			title="Mods",
			reset="Reset (tab)",
			unranked="Unranked",
		},
		pause={
			setting="Settings (S)",
			replay="Replay (P)",
			save="Save (O)",
			resume="Resume (esc)",
			restart="Retry (R)",
			quit="Quit (Q)",
		},
		net_menu={
			league="Tech League",
			ffa="FFA",
			rooms="Rooms",
			logout="Log out",
		},
		net_league={
			match="Find Match",
		},
		net_rooms={
			refreshing="Refreshing rooms",
			noRoom="There aren't any rooms right now...",
			refresh="Refresh",
			new="New Room(2)",
			new2="New Room(5)",
			join="Join",
		},
		net_game={
			ready="Ready",
			spectate="Spectate",
			cancel="Cancel",
		},
		setting_game={
			title="Game Settings",
			graphic="←Video",
			sound="Sound→",

			ctrl="Control Settings",
			key="Key Mappings",
			touch="Touch Settings",
			reTime="Start Delay",
			RS="Rotation System",
			layout="Layout",
			autoPause="Pause while unfocused",
			swap="Key Combination (Change Atk. Mode)",
			fine="Finesse Error SFX",
			dataSaving="Data saving",
			simpMode="Simplistic Style",
		},
		setting_video={
			title="Video Settings",
			sound="←Sound",
			game="Game→",

			block="Draw Block",
			smooth="Smooth Falling",
			upEdge="3D Block",
			bagLine="Bag Separator",

			ghost="Ghost",
			grid="Grid",
			center="Center",

			lockFX="Lock FX",
			dropFX="Drop FX",
			moveFX="Move FX",
			clearFX="Clear FX",
			splashFX="Splash FX",
			shakeFX="Field Sway",
			atkFX="Atk. FX",
			frame="Render Frame Rate(%)",

			text="Line Clear Pop-up",
			score="Score Pop-up",
			bufferWarn="Buffer Alert",
			showSpike="Spike Counter",
			nextPos="Next Preview",
			highCam="Screen Scrolling",
			warn="Danger Alert",

			clickFX="Click FX",
			power="Power Info",
			clean="Fast Draw",
			fullscreen="Full Screen",
			bg="Background",
		},
		setting_sound={
			title="Sound Settings",

			game="←Game",
			graphic="Video→",

			bgm="BGM",
			sfx="SFX",
			stereo="Stereo",
			spawn="Spawn Sounds",
			warn="Warning",
			vib="Vibration",
			voc="Voice",
			cv="Voice Pack",
			apply="Apply",
		},
		setting_control={
			title="Control Settings",
			preview="Preview",

			das="DAS",arr="ARR",dascut="DAS cut",
			sddas="Soft Drop DAS",sdarr="Soft Drop ARR",
			ihs="Initial Hold",
			irs="Initial Rotation",
			ims="Initial Movement",
			reset="Reset",
		},
		setting_key={
			a1="Move Left",
			a2="Move Right",
			a3="Rotate Right",
			a4="Rotate Left",
			a5="Rotate 180°",
			a6="Hard Drop",
			a7="Soft Drop",
			a8="Hold",
			a9="Function1",
			a10="Function2",
			a11="Instant Left",
			a12="Instant Right",
			a13="Sonic Drop",
			a14="Down 1",
			a15="Down 4",
			a16="Down 10",
			a17="Left Drop",
			a18="Right Drop",
			a19="Left Zangi",
			a20="Right Zangi",
			restart="Retry",
		},
		setting_skin={
			title="Layout Settings",
			spin1="R",spin2="R",spin3="R",spin4="R",spin5="R",spin6="R",spin7="R",
			skinR="Reset Color",
			faceR="Reset Dir.",
		},
		setting_touch={
			default="Default",
			snap="Snap",
			save1="Save1",
			load1="Load1",
			save2="Save2",
			load2="Load2",
			size="Size",
			shape="Shape",
		},
		setting_touchSwitch={
			b1=	"Move Left:",	b2="Move Right:",	b3="Rotate Right:",	b4="Rotate Left:",
			b5=	"Rotate 180°:",	b6="Hard Drop:",	b7="Soft Drop:",	b8="Hold:",
			b9=	"Function1:",	b10="Function2:",	b11="Instant Left:",b12="Instant Right:",
			b13="Sonic Drop:",	b14="Down 1:",		b15="Down 4:",		b16="Down 10:",
			b17="Left Drop:",	b18="Right Drop:",	b19="Left Zangi:",	b20="Right Zangi:",

			norm="Normal",
			pro="Professional",
			hide="Show Virtual Keys",
			icon="Icon",
			sfx="SFX",
			vib="VIB",
			alpha="Alpha",

			track="Auto Track",
			dodge="Auto Dodge",
		},
		customGame={
			title="Custom Game",
			subTitle="Basic",
			defSeq="Default Seq.",
			noMsn="No missions",

			drop="Drop Delay",
			lock="Lock Delay",
			wait="Entry Delay",
			fall="Line Delay",

			bg="Background",
			bgm="Music",

			copy="Copy Field+Seq.+Mssn.",
			paste="Paste Field+Seq.+Mssn.",
			clear="Start-Clear",
			puzzle="Start-Puzzle",

			reset="Reset (Del)",
			advance="More (A)",
			mod="Mods (F1)",
			field="Edit Field (F)",
			sequence="Edit Sequence (S)",
			mission="Edit Mission (M)",

			nextCount="Next",
			holdCount="Hold",
			infHold="Infinite Hold",
			phyHold="In-place Hold",

			fieldH="Field Height",
			visible="Visibility",
			freshLimit="Lock Reset Limit",
			opponent="Opponent",
			life="Lives",
			pushSpeed="Push Speed",
			garbageSpeed="Garbage Speed",

			bufferLimit="Buffer Limit",
			heightLimit="Height Limit",
			ospin="O-Spin",
			fineKill="100% Finesse",
			b2bKill="No B2B break",
			easyFresh="Normal Lock Reset",
			deepDrop="Deep Drop",
			bone="Bone Blocks",
		},
		custom_field={
			title="Custom Game",
			subTitle="Field",

			any="Erase",
			space="×",
			smart="Smart",

			push="Add Line(K)",
			del="Del Line(L)",

			copy="Copy",
			paste="Paste",
			clear="Clear",
			demo="Don't Show ×",

			newPg="New Page(N)",
			delPg="Del Page(M)",
			prevPg="Prev Page",
			nextPg="Next Page",
		},
		custom_sequence={
			title="Custom Game",
			subTitle="Sequence",

			sequence="Sequence",

			Z="Z",S="S",J="J",L="L",T="T",O="O",I="I",left="←",right="→",ten="→→",backsp="<X",reset="Reset",
			Z5="Z5",S5="S5",P="P",Q="Q",F="F",E="E",T5="T5",U="U",I3="I3",C="C",rnd="Rand",
			V="V",W="W",X="X",J5="J5",L5="L5",R="R",Y="Y",N="N",H="H",I5="I5",I2="I2",O1="O1",
			copy="Copy",paste="Paste",
		},
		custom_mission={
			title="Custom Game",
			subTitle="Mission",

			_1="1",_2="2",_3="3",_4="4",
			any1="any1",any2="any2",any3="any3",any4="any4",
			PC="PC",
			Z1="Z1",S1="S1",J1="J1",L1="L1",T1="T1",O1="O1",I1="I1",
			Z2="Z2",S2="S2",J2="J2",L2="L2",T2="T2",O2="O2",I2="I2",
			Z3="Z3",S3="S3",J3="J3",L3="L3",T3="T3",O3="O3",I3="I3",
			O4="O4",I4="I4",
			left="←",right="→",
			ten="→→",
			backsp="<X",
			reset="R",
			copy="Copy",
			paste="Paste",
			mission="Force Mission",
		},
		about={
			staff="Staff",
			his="History",
			qq="Author's qq",
		},
		dict={
			title="TetroDictionary",
			link="Open URL",
			up="↑",down="↓",
			pageup="↑↑",pagedown="↓↓",
		},
		stat={
			path="Open Data Folder",
			save="Data Management",
		},
		music={
			title="Music Room",
			arrow="→",
			now="Now Playing:",

			bgm="BGM",
			up="↑",
			play="Play",
			down="↓",
			sound="SFXs",
		},
		sound={
			title="SE Room",
			sfx="SFX",
			voc="Voice",

			move="Movement",
			lock="Lock",
			drop="Drop",
			fall="Fall",
			rotate="Rotation",
			rotatekick="Rotation (kick)",
			hold="Hold",
			prerotate="Initial rotation",
			prehold="Initial hold",
			_pc="Clear and PC",

			clear1="clear 1",
			clear2="clear 2",
			clear3="clear 3",
			clear4="clear 4",
			spin0="spin 0",
			spin1="spin 1",
			spin2="spin 2",
			spin3="spin 3",

			_1="Single",
			_2="Double",
			_3="Triple",
			_4="Techrash",
			z0="Z-Spin",
			z1="Z-Spin 1",
			z2="Z-Spin 2",
			z3="Z-Spin 3",
			s0="S-Spin",
			s1="S-Spin 1",
			s2="S-Spin 2",
			s3="S-Spin 3",

			j0="J-Spin",
			j1="J-Spin 1",
			j2="J-Spin 2",
			j3="J-Spin 3",
			l0="L-Spin",
			l1="L-Spin 1",
			l2="L-Spin 2",
			l3="L-Spinn 3",

			t0="T-Spin",
			t1="T-Spin 1",
			t2="T-Spin 2",
			t3="T-Spin 3",
			o0="O-Spin",
			o1="O-Spin 1",
			o2="O-Spin 2",
			o3="O-Spin 3",

			i0="I-Spin",
			i1="I-Spin 1",
			i2="I-Spin 2",
			i3="I-Spin 3",

			mini="Mini",
			b2b="B2B",
			b3b="B3B",
			pc="PC",

			music="BGMs",
		},
		login={
			title="Log In",
			register="Register",
			email="E-mail Address",
			password="Password",
			keepPW="Remember me",
			login="Log In",
		},
		register={
			title="Register",
			login="Log In",
			username="Username",
			email="Email Address",
			password="Password",
			password2="Re-enter Password",
			register="Register",
		},
		account={
			title="Account",
		},
		app_15p={
			reset="Shuffle",
			color="Color",
			blind="Blind",
			slide="Slide",
			pathVis="Show Path",
			revKB="Reverse",
		},
		app_schulteG={
			reset="Reset",
			rank="Size",
			blind="Blind",
			disappear="Hide",
			tapFX="Tap FX",
		},
		app_pong={
			reset="Restart",
		},
		app_AtoZ={
			level="Level",
			keyboard="Keyboard",
			reset="Reset",
		},
		app_2048={
			reset="Reset",
			blind="Blind",
			tapControl="Tap controls",

			skip="Skip Round",
		},
		app_ten={
			reset="Reset",
			next="Next",
			blind="Blind",
			fast="Fast",
		},
		app_dtw={
			reset="Reset",
			arcade="Arcade",
			mode="Mode",
		},
		savedata={
			exportUnlock="Export Progress",
			exportData="Export Stats",
			exportSetting="Export Settings",
			exportVK="Export Virtual Key Layout",

			importUnlock="Import Progress",
			importData="Import Stats",
			importSetting="Import Settings",
			importVK="Import Virtual Key Layout",
		},
		error={
			console="Console",
			quit="Quit",
		},
	},
	modes={
		['sprint_10l']=			{"Sprint",			"10L",			"Clear 10 lines!"},
		['sprint_20l']=			{"Sprint",			"20L",			"Clear 20 lines!"},
		['sprint_40l']=			{"Sprint",			"40L",			"Clear 40 lines!"},
		['sprint_100l']=		{"Sprint",			"100L",			"Clear 100 lines!"},
		['sprint_400l']=		{"Sprint",			"400L",			"Clear 400 lines!"},
		['sprint_1000l']=		{"Sprint",			"1000L",		"Clear 1000 lines!"},
		['sprintPenta']=		{"Sprint",			"PENTOMINO",	"40L with 18 pentominoes."},
		['sprintMPH']=			{"Sprint",			"MPH",			"Memoryless\nPreviewless\nHoldless"},
		['dig_10l']=			{"Dig",				"10L",			"Dig 10 garbage lines."},
		['dig_40l']=			{"Dig",				"40L",			"Dig 40 garbage lines."},
		['dig_100l']=			{"Dig",				"100L",			"Dig 100 garbage lines."},
		['dig_400l']=			{"Dig",				"400L",			"Dig 400 garbage lines."},
		['dig_1000l']=			{"Dig",				"1000L",		"Dig 1000 garbage lines."},
		['drought_n']=			{"Drought",			"100L",			"There are no I-pieces."},
		['drought_l']=			{"Drought+",		"100L",			"W T F"},
		['marathon_n']=			{"Marathon",		"NORMAL",		"200-line marathon with accelerating speed."},
		['marathon_h']=			{"Marathon",		"HARD",			"200-line high-speed marathon."},
		['solo_e']=				{"Battle",			"EASY",			"Defeat the AI!"},
		['solo_n']=				{"Battle",			"NORMAL",		"Defeat the AI!"},
		['solo_h']=				{"Battle",			"HARD",			"Defeat the AI!"},
		['solo_l']=				{"Battle",			"LUNATIC",		"Defeat the AI!"},
		['solo_u']=				{"Battle",			"ULTIMATE",		"Defeat the AI!"},
		['techmino49_e']=		{"Tech 49",			"EASY",			"49-player battle.\nThe last one standing wins."},
		['techmino49_h']=		{"Tech 49",			"HARD",			"49-player battle.\nThe last one standing wins."},
		['techmino49_u']=		{"Tech 49",			"ULTIMATE",		"49-player battle.\nThe last one standing wins."},
		['techmino99_e']=		{"Tech 99",			"EASY",			"99-player battle.\nThe last one standing wins."},
		['techmino99_h']=		{"Tech 99",			"HARD",			"99-player battle.\nThe last one standing wins."},
		['techmino99_u']=		{"Tech 99",			"ULTIMATE",		"99-player battle.\nThe last one standing wins."},
		['round_e']=			{"Turn-Based",		"EASY",			"Chess mode"},
		['round_n']=			{"Turn-Based",		"NORMAL",		"Chess mode"},
		['round_h']=			{"Turn-Based",		"HARD",			"Chess mode"},
		['round_l']=			{"Turn-Based",		"LUNATIC",		"Chess mode"},
		['round_u']=			{"Turn-Based",		"ULTIMATE",		"Chess mode"},
		['master_beginner']=	{"Master",			"LUNATIC",		"For 20G beginners."},
		['master_advance']=		{"Master",			"ULTIMATE",		"For 20G pros."},
		['master_final']=		{"Master",			"FINAL",		"20G and beyond."},
		['master_phantasm']=	{"Master",			"PHANTASM",		"???"},
		['master_extra']=		{"GrandMaster",		"EXTRA",		"An eternity shorter than an instant."},
		['rhythm_e']=			{"Rhythm",			"EASY",			"200-line low-BPM rhythm marathon."},
		['rhythm_h']=			{"Rhythm",			"HARD",			"200-line medium BPM rhythm marathon"},
		['rhythm_u']=			{"Rhythm",			"ULTIMATE",		"200-line high-BPM rhythm marathon."},
		['blind_e']=			{"Blind",			"HALF",			"For novices."},
		['blind_n']=			{"Blind",			"ALL",			"For intermediates."},
		['blind_h']=			{"Blind",			"SUDDEN",		"For the experienced."},
		['blind_l']=			{"Blind",			"SUDDEN+",		"For professionals."},
		['blind_u']=			{"Blind",			"?",			"Are you ready?"},
		['blind_wtf']=			{"Blind",			"WTF",			"You're not ready."},
		['classic_fast']=		{"Classic",			"CTWC",			"High-speed classic mode."},
		['survivor_e']=			{"Survivor",		"EASY",			"How long can you survive?"},
		['survivor_n']=			{"Survivor",		"NORMAL",		"How long can you survive?"},
		['survivor_h']=			{"Survivor",		"HARD",			"How long can you survive?"},
		['survivor_l']=			{"Survivor",		"LUNATIC",		"How long can you survive?"},
		['survivor_u']=			{"Survivor",		"ULTIMATE",		"How long can you survive?"},
		['attacker_h']=			{"Attacker",		"HARD",			"Practice your offensive skills!"},
		['attacker_u']=			{"Attacker",		"ULTIMATE",		"Practice your offensive skills!"},
		['defender_n']=			{"Defender",		"NORMAL",		"Practice your defensive skills!"},
		['defender_l']=			{"Defender",		"LUNATIC",		"Practice your defensive skills!"},
		['dig_h']=				{"Driller",			"HARD",			"Digging practice!"},
		['dig_u']=				{"Driller",			"ULTIMATE",		"Digging practice!"},
		['bigbang']=			{"Big Bang",		"EASY",			"All-spin tutorial!\n[Under construction]"},
		['c4wtrain_n']=			{"C4W Training",	"NORMAL",		"Infinite combos."},
		['c4wtrain_l']=			{"C4W Training",	"LUNATIC",		"Infinite combos."},
		['pctrain_n']=			{"PC Training",		"NORMAL",		"Perfect Clear practice."},
		['pctrain_l']=			{"PC Training",		"LUNATIC",		"A harder Perfect Clear practice."},
		['pc_n']=				{"PC Challenge",	"NORMAL",		"Get PCs within 100 lines!"},
		['pc_h']=				{"PC Challenge",	"HARD",			"Get PCs within 100 lines!"},
		['pc_l']=				{"PC Challenge",	"LUNATIC",		"Get PCs within 100 lines!"},
		['pc_inf']=				{"Infinite PC Challenge","",		"Get PCs as much as you can"},
		['tech_n']=				{"Tech",			"NORMAL",		"Try to keep the\nBack-to-Back chain!"},
		['tech_n_plus']=		{"Tech",			"NORMAL+",		"Spins & PCs only."},
		['tech_h']=				{"Tech",			"HARD",			"Try to keep the\nBack-to-Back chain!"},
		['tech_h_plus']=		{"Tech",			"HARD+",		"Spins & PCs only."},
		['tech_l']=				{"Tech",			"LUNATIC",		"Try to keep the\nBack-to-Back chain!"},
		['tech_l_plus']=		{"Tech",			"LUNATIC+",		"Spins & PCs only."},
		['tech_finesse']=		{"Tech",			"FINESSE",		"No finesse faults!"},
		['tech_finesse_f']=		{"Tech",			"FINESSE+",		"No normal clears and finesse faults!"},
		['tsd_e']=				{"TSD Challenge",	"EASY",			"T-Spin Doubles only!"},
		['tsd_h']=				{"TSD Challenge",	"HARD",			"T-Spin Doubles only!"},
		['tsd_u']=				{"TSD Challenge",	"ULTIMATE",		"T-Spin Doubles only!"},
		['backfire_n']=			{"Backfire",		"NORMAL",		"Hold back the backfiring garbage lines."},
		['backfire_h']=			{"Backfire",		"HARD",			"Hold back the backfiring garbage lines."},
		['backfire_l']=			{"Backfire",		"LUNATIC",		"Hold back the backfiring garbage lines."},
		['backfire_u']=			{"Backfire",		"ULTIMATE",		"Hold back the backfiring garbage lines."},
		['zen']=				{'Zen',				"200",			"A 200-line run without a time limit."},
		['ultra']=				{'Ultra',			"EXTRA",		"A 2-minute score attack."},
		['infinite']=			{'infinite',		"",				"It's just a sandbox."},
		['infinite_dig']=		{"Infinite: Dig",	"",				"Dig-diggi-dug."},
		['sprintFix']=			{"Sprint",			"NO LEFT/RIGHT"},
		['sprintLock']=			{"Sprint",			"NO ROTATIONS"},
		['sprintSmooth']=		{"Sprint",			"NO FRICTION"},
		['marathon_bfmax']=		{"Marathon",		"ULTIMATE"},
		['custom_clear']=		{"Custom",			"NORMAL"},
		['custom_puzzle']=		{"Custom",			"PUZZLE"},
	},
	getTip={refuseCopy=true,
		'Free-to-play block stacking game with a Battle Royale mode!',
		'Have you noticed what "rotating" does do to a block?',
		":pog:",
		"(RUR'U')R'FR2U'R'U'(RUR'F')",
		"\\jezevec/\\jezevec/\\jezevec/",
		"\\osk/\\osk/\\osk/",
		"↑↑↓↓←→←→BA",
		"$include<studio.h>",
		"0next 0hold.",
		"1next 0hold",
		"1next 1hold!",
		"1next 6hold!",
		"20G actually is a brand new game rule.",
		"40-line Sprint WR: 15.654s by VinceHD",
		"6next 1hold!",
		"6next 6hold?!",
		"Achievement system coming soon!",
		"ALL SPIN!",
		"Am G F G",
		"B2B2B???",
		"B2B2B2B does not exist..",
		"B2B2B2B exists?",
		"Back-to-Back Techrash, 10 Combo, PC!",
		"Be sure to give it your best shot again today!",
		"Bridge clear coming soon!",
		"Can you master this modern yet familiar stacker?",
		"Certainly within this heart lies my M@STERPIECE.",
		"Changelogs in English can be found on Discord.",
		"Color clear coming soon!",
		"COOL!!",
		"Did I just see a Back-to-Back-to-Back?",
		"Decreasing DAS and ARR is faster but harder to control.",
		"Don't let a small glitch ruin your entire day!",
		"Don't look directly at the bugs!",
		"Enjoy the Techmino rotation system!",
		"Excellent, but let's go better next time...",
		"Find out what's in the settings!",
		"Got any suggestions? Post them in our Discord!",
		"Headphones recommended for a better experience.",
		"Hello world!",
		"I3 and L3 are the only two unique triminoes.",
		"if a==true",
		"Increase your frame rate for a better experience.",
		"Initial [insert action] system can save you.",
		"Is B2B2B2B possible?",
		"It's possible to finish 40L without left/right button.",
		"It's really loading! Not just a cutscene!",
		"Join our discord!",
		"Let the bass kick!",
		"LrL RlR LLr RRl RRR LLL FFF RfR RRf rFF",
		"Lua No.1",
		"Mix clear coming soon!",
		"Music of this game is made using Beepbox.",
		"Music too distracting? You can turn it off.",
		"No easter eggs in this menu if you have the simplistic style turned on!",
		"O-Spin Triple!",
		"OHHHHHHHHHHHHHH",
		"Online mode is planned - please be patient.",
		"Play single-handedly!",
		"Playing good takes some time!",
		"Powered by Love2D",
		"Powered by Un..Love2D",
		"pps-0.01",
		"REGRET!!",
		"Secret number: 626",
		"Server down randomly",
		"Some requirements to achieve rank S are intentionally set to be difficult for even the best players.",
		"Soon, you'll be able to play against friends and foes all over the world.",
		"Split clear coming soon!",
		"Techmino = Technique + Tetromino",
		"Techmino has a Nspire-CX edition!",
		"Techmino is so fun!",
		"TetroDictionary is now available in English.",
		"The stacker future is yours in Techmino!",
		"There are three hidden modes in the game.",
		"There is a total of 18 different pentominoes.",
		"There is a total of 7 different tetrominoes.",
		"Try using multiple Hold Queues!",
		"Try using two rotation buttons. Using all three of them is better.",
		"Warning: Programmer Art",
		"What about 20 PCs?",
		"What about 23 PCs in 100 lines?",
		"What about 26 TSDs?",
		"What is this cheap UI & music smh",
		"while(false)",
		"You are a Grand Master!",
		"You can connect a keyboard to your phone or tablet!",
		"You can navigate the menu with a keyboard, but only in this screen.",
		"You can open the save directory from the Stats page.",
		"You can perform a spin with 28 of the 29 minoes in this game; the exception being O1.",
		"You can set the spawning orientation for each tetromino.",
		"ZS JL T O I",
		{C.C,"Also try 15puzzle!"},
		{C.C,"Also try Minecraft!"},
		{C.C,"Also try Minesweeper!"},
		{C.C,"Also try Orzmic!"},
		{C.C,"Also try osu!"},
		{C.C,"Also try Phigros!"},
		{C.C,"Also try Rubic's cube!"},
		{C.C,"Also try Terraria!"},
		{C.C,"Also try VVVVVV!"},
		{C.F,"Also try Cultris II!"},
		{C.F,"Also try Jstris"},
		{C.F,"Also try NullpoMino!"},
		{C.F,"Also try TETR.IO!"},
		{C.F,"Also try Tetr.js!"},
		{C.F,"Also try Tetra Legends!"},
		{C.H,"REGRET!!"},
		{C.lR,"Z ",C.lG,"S ",C.lS,"J ",C.lO,"L ",C.lP,"T ",C.lY,"O ",C.lC,"I"},
		{C.lY,"COOL!!"},
		{C.N,"Lua",C.Z," No.1"},
		{C.P,"T-spin!"},
		{C.R,"\"DMCA abusing\""},
		{C.R,"\"Intellectual property law\""},
		{C.R,"DT",C.Z," Cannon=",C.P,"TS",C.R,"D",C.Z,"+",C.P,"TS",C.R,"T",C.Z," Cannon"},
		{C.R,"LrL ",C.G,"RlR ",C.B,"LLr ",C.O,"RRl ",C.P,"RRR ",C.P,"LLL ",C.C,"FFF ",C.Y,"RfR ",C.Y,"RRf ",C.Y,"rFF"},
		{C.Y,"O-Spin Triple!"},
		{C.Z,"What? ",C.lC,"Xspin?"},
	}
}
