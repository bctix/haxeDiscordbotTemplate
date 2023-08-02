package utils;

class BotConfig {
    public static var prefix:String = '-!';

    // Allowed Status': online, dnd, idle, invisible, offline
    public static var status:String = 'online';

    // Allowed types: game, streaming, listening, watching, custom, competing
    public static var presenceType:String = 'game';
    public static var presenceText:String = 'My super cool presence thingy';
}