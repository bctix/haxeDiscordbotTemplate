package commands;

import hxdiscord.types.Message;

class Ping {
    public function new(m:Message)
    {
        m.reply({content: 'Pong!'}, true);
    }
}