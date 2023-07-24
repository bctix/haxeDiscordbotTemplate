package interfaces;

import hxdiscord.types.structTypes.ApplicationCommand.ApplicationCommandOption;

interface ISlashCommand {
    public var description:String;
    public var type:Int;
    public var options:Array<ApplicationCommandOption>;
}
