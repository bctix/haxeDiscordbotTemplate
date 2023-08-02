package interactions;

import hxdiscord.types.CommandType;
import hxdiscord.types.Interaction;
import hxdiscord.types.structTypes.ApplicationCommand.ApplicationCommandOption;

/*
    INTERACTIONS WILL USE THE SAME NAME AS CLASS NAME

    DESCRIPTION AND TYPE IS REQUIRED

    OPTIONS ARE *NOT* REQUIRED
*/

class Ping {
    public static var description:String = 'Ping pong! Ping... pong!';
	public static var type:CommandType = SUB_COMMAND;
    public static var options:Array<ApplicationCommandOption> = [
        {
            name: "show", // name lol
            description: "Toggle weather the reply with show to otheres or not!", // description lol
            type: 5, // 5 = Bool (true, false)
            required: true
        }
    ];
	
    public function new(i:Interaction)
    {
        var show = false;
        if(i.dataOptions.value == 'true') show = true;
        i.reply({content: "Pong!"}, !show);
    }
}