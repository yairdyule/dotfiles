local status_ok, alpha = pcall(require, "alpha")

if not status_ok then
	return
end
local catAsciis = {
	{

		"                 ....                          .... ",
		"                ..x....                      ....x.. ",
		"               ..xx......     ........     ......xx.. ",
		"              ..xxxx...,,. .............. .,,...xxxx.. ",
		"              ..xxxxx,,,,..................,,,,xxxxx.. ",
		"               .,,,,..,,...................,,..,,,,,. ",
		"             ........ ,,,.................,,, ......... ",
		"           ....... .(((,,,...............,,,))). ........ ",
		"          ..... ..,,a@@@@a,,...........,,a@@@@a,,.. ...... ",
		"         .......,,a@@`  '@@,...........,@@`  '@@a,,........ ",
		"         .......,,@@@    @@@,.a@@@@@a.,@@@    @@@,,........ ",
		"         ....,,,,,,@@@aa@@@,,,,`@@@',,,,@@@aa@@@,,,,,,,.... ",
		"          ...,,,,,,,,,,,,,,,,,,,,|,,,,,,,,,,,,,,,,,,,,,... ",
		"            ...,,,,,,,,,,,,,,,,`   ',,,,,,,,,,,,,,,,,... ",
		"                .. ,,,,,,,,,,,,,...,,,,,,,,,,,,,, .. ",
		"        (     ......... ,,,,,,,,,,,,,,,,,,, ........... ",
		"     (   )  .............._ _ _ _ _ _ _ _................   ( ",
		"      )  ( ...............................................   ) ",
		"     (   ) ...............................................  (  ) ",
		"      ) ( ,,,,,,,,,,,,,,, ................. ,,,,,,,,,,,,,,,, ) ( ",
		"   ,%%%%,,,,,,,,,,,,,,,,,, ............... ,,,,,,,,,,,,,,,,,,%%%%, ",
		"   %%%%%`.,,(,,(,,(,,(,,'%%%%%%%%%%%%%%%%%%`,,,),,),,),,),,.'%%%%% ",
		"   `%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%' ",
		"      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ",
		"      ::::::;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:::::: ",
		"     ::::::;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:::::: ",
		"    ::::::;;%%;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:::::: ",
		"   ::::::;;%%;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;%%:::::: ",
		"  ::::::;;%%%;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;%%:::::: ",
		"  ::::::;;%%%;;;;A;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;%%%::::: ",
		"  ::::::;;;%%;;;;;AA;;;;;;;;;;;;;;;;;;;;A;;;;;;;;;;;;;;;;;;%%%::::: ",
		"  ::::::;;;;%%;;;;;AAA;;;;;;;;;;;;;;;;AA;;;;;;;;;;;;A;;;;;;%%:::::: ",
		"  ::::::;;A;;;;;;;;;AAA;;;;;;;;;A;;;;AAA;;;;;;;;;;;;;AA;;;%%;:::::: ",
		"   ::::::;AA;;;;;;;;;AAA;;;;;;;A;;;;;AAAA;;;;;A;;;;;;AAA;;;;:::::: ",
		"    ::::::;AAA;;;;;;;AAA;;A;;;AA;;;;;;AAAA;;;;AA;;;;;AAA;;;:::::: ",
		"      :::::;AAA;;;;;AAA;;AA;;;AAA;;;;;;AAAA;;AAA;;;;AAAA;;::::: ",
		"         :::;AAAA;;AAAA;;AAA;;;AAA;;;;AAAAA;AAA;;;;AAAAAA::: ",
		"            ::AAAAAAAA;;;;AAA;AAAAA;;AAAAA;;;AAA;;AAAAAAA ",
	},
	{
		"           ___         ",
		"          (___)       ",
		"   ____                ",
		" _\\___ \\  |\\_/|        ",
		"\\     \\ \\/ _ _ \\ ___   ",
		'\\__    \\ \\ ="= //|||\\   ',
		" |===   \\/    / ||||   ",
		" \\______|    | |||||   ",
		"     _/_|  | | =====   ",
		"    (_/  \\_)_)         ",
		" _________________     ",
		"(                _)    ",
		" (__   '          )    ",
		"   (___    _____)      ",
		"       '--'            ",
	},
	{
		"            _,'|             _.-''``-...___..--';)",
		"          /_ '.      __..-' ,      ,--...--'''",
		"         <\\    .`--'''       `     /'",
		"          `-';'               ;   ; ;",
		"    __...--''     ___...--_..'  .;.'",
		"   (,__....----'''       (,..--''      ",
		"  ",
		"(:`--..___...-''``-._             |`._",
		" ```--...--.      . `-..__      .`/ _\\  ",
		"           `\\     '       ```--`.    />",
		"           : :   :               `:`-'",
		"            `.:.  `.._--...___     ``--...__      ",
		"               ``--..,)       ```----....__,)",
	},
	{
		" _                        ",
		" \\`*-.                    ",
		"  )  _`-.                 ",
		" .  : `. .                ",
		" : _   '  \\               ",
		" ; *` _.   `*-._          ",
		" `-.-'          `-.       ",
		"   ;       `       `.     ",
		"   :.       .        \\    ",
		"   . \\  .   :   .-'   .   ",
		"   '  `+.;  ;  '      :   ",
		"   :  '  |    ;       ;-. ",
		"   ; '   : :`-:     _.`* ;  ",
		" .*' /  .*' ; .*`- +'  `*' ",
		" `*-*   `*-*  `*-*'  ",
	},
	{
		"          __..--''``---....___   _..._    __           ",
		" /// //_.-'    .-/\";  `        ``<._  ``.''_ `. / // / ",
		"///_.-' _..--.'_    \\                    `( ) ) // //  ",
		"/ (_..-' // (< _     ;_..__               ; `' / ///   ",
		" / // // //  `-._,_)' // / ``--...____..-' /// / //    ",
	},
	{
		"       ,                                ",
		"       \\`-._           __               ",
		"        \\  `-..____,.'  `.             ",
		"         :`.         /    \\`.           ",
		"         :  )       :      : \\          ",
		"          ;'        '   ;  |  :         ",
		"          )..      .. .:.`.;  :         ",
		"         /::...  .:::...   ` ;          ",
		"         ; _ '    __        /:\\         ",
		"         `:     /\\         ;:. `.       ",
		"        `-`.__ ;   __..--- /:.   \\      ",
		"        === \\_/   ;=====_.':.     ;     ",
		"         ,/'`--'...`--....        ;     ",
		"              ;                    ;    ",
		"            .'                      ;   ",
		"          .'                        ;   ",
		"        .'     ..     ,      .       ;  ",
		"       :       ::..  /      ;::.     |  ",
		"      /      `.;::.  |       ;:..    ;  ",
		"     :         |:.   :       ;:.    ;   ",
		"     :         ::     ;:..   |.    ;    ",
		"      :       :;      :::....|     |    ",
		"      /\\     ,/ \\      ;:::::;     ;    ",
		"    .:. \\:..|    :     ; '.--|     ;    ",
		"   ::.  :''  `-.,,;     ;'   ;     ;    ",
		".-'. _.'\\      / `;      \\,__:      \\   ",
		"`---'    `----'   ;      /    \\,.,,,/   ",
		"                   `----`               ",
	},
	{
		"   |\\---/|",
		"   | ,_, |",
		"    \\_`_/-..----.",
		' ___/ `   \' ,""+ \\  ',
		"(__...'   __\\    |`.___.';",
		"  (_,...'(_,.`__)/'.....+",
	},
}

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = catAsciis[math.random(#catAsciis)]

local function footer()
	return "Have a wonderful day!"
end

dashboard.section.footer.val = footer()

dashboard.section.buttons.val = {}
dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
