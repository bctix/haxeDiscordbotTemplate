package;

import utils.BotConfig;
import utils.StringUtils;
import api.SecretApiStuff;
import hxdiscord.DiscordClient;
import hxdiscord.utils.Intents;
import hxdiscord.types.*;

using StringTools;

class Main
{
	static var discordBot:DiscordClient;
    static var startTime:Date;

	static function main()
	{
        startTime = Date.now();

		discordBot = new DiscordClient(SecretApiStuff.discordBotApi, [Intents.ALL], false);
		discordBot.onReady = onReady;
		discordBot.onMessageCreate = onMessage;
        discordBot.onInteractionCreate = onInteraction;
	}

    public static function onInteraction(i:Interaction) {
        trace('there was an interaction: '+i.name);
    }

	public static function onMessage(m:Message) {
        if(!m.content.contains(BotConfig.prefix)) return;
        var noPrefix = m.content.replace(BotConfig.prefix,"");
        var noArgs = noPrefix.split(' ')[0];
        trace('Looking for: "commands.${StringUtils.processToClass(noArgs)}"'); // just a trace showing the command location
        if(Type.resolveClass('commands.${StringUtils.processToClass(noArgs)}') == null) // resolveClass looks for a class from a string, and returns said class.
            m.reply({content: 'It looks like that command doesnt exist!'});
        else{
            try {
                Type.createInstance(Type.resolveClass('commands.${StringUtils.processToClass(noArgs)}'),[m]); // createInstance creates a new instance of the class
            } catch(e) {
                m.reply({content: 'Uh oh. looks like something went wrong.. :('});
            }
            
        }
            
    }

	public static function onReady() {
        trace(Date.now().getTime()-startTime.getTime());
	}
}