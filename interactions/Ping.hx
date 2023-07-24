package commands;

import hxdiscord.types.Interaction;
import hxdiscord.types.structTypes.ApplicationCommand.ApplicationCommandOption;
import interfaces.ISlashCommand;

class Ping implements ISlashCommand {
    public var description:String = 'Ping pong! Ping... pong!';
	public var type:Int = 1;
    public var options:Array<ApplicationCommandOption> = [
        {
            name: "do reply", // name lol
            description: "Makes the ping command reply too!", // description lol
            type: 3, // 3 = Bool (true, false)
            required: true // required
        }
    ];
	
    public function new(m:Interaction)
    {
        m.reply({content: "Pong!"}, true);
    }
}