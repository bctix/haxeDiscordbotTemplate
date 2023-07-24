# [hxDiscord](https://github.com/FurretDev/hxdiscord) bot template

hello, I've been making a few bots on my own with hxDiscord and thought I should finally make some sort of template for these bots so I don't have to constantly rewrite it.

## Disclaimer

As of now (7/24/23, m/dd/yy), slash commands are not working.

## How it works
The template already handles everything for running command files and such.

All you need to do is make those commands!

you can change the prefix on [BotConfig.hx](https://github.com/bctix/haxeDiscordbotTemplate/blob/main/utils/BotConfig.hx), and make sure you set your bot API key in [SecretApiStuff.hx](https://github.com/bctix/haxeDiscordbotTemplate/blob/main/api/SecretApiStuff.hx).

Commands don't have any exact case requirements, for example, if in discord someone says `"-!PinG"`. it will run [Ping.hx](https://github.com/bctix/haxeDiscordbotTemplate/blob/main/commands/Ping.hx)

When building (haxe .\compile.hxml), your bot will be found in `builds\cpp\Main.exe`.

## Planned Additions/Changes
- [ ] Automatically create slash commands
- [ ] Add more into BotConfig.hx (status)