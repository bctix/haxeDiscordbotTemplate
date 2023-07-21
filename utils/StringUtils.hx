package utils;

class StringUtils {
    public static function processToClass(strData:String):String 
    {
        var strArray:Array<String> = strData.toLowerCase().split('');
        var newArray:Array<String> = [];
        var num = 0;
        for(char in strArray)
        {
            var pushedChar = char;
            if(num == 0)
                pushedChar = pushedChar.toUpperCase();
            newArray.push(pushedChar);
            num++;
        }
        return newArray.join('');
    }
}