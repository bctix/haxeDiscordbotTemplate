package interactions;

import hxdiscord.types.Interaction;
import hxdiscord.types.structTypes.ApplicationCommand.ApplicationCommandOption;

class Echo {
    public static var description:String = 'Echo! Echo! Echo! Echo';
	public static var type:Int = 1;
    public static var options:Array<ApplicationCommandOption> = [
        {
            name: "text", // name lol
            description: "yeah", // description lol
            type: 3, // 3 = String
            required: true // required
        }
    ];
	
    public function new(i:Interaction)
    {
        i.reply({content: i.dataOptions.value}, false);
    }
}