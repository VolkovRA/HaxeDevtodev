package devtodev.web;

/**
 * The event parameter.
 */
typedef EventParam =
{
    /**
     * Parameter name. (Max. 32 symbols)
     */
    var name:String;

    /**
     * Parameter value type.  
     * Can be `double` or `string`.
     */
    var type:EventParamType;

    /**
     * Parameter value. (Max. 255 symbols)  
     */
    var value:Dynamic;
}

/**
 * The type of event parameter.
 */
@:enum abstract EventParamType(String) to String from String
{
    /**
     * Float type.
     */
    var FLOAT = "double";

    /**
     * String type.
     */
    var STRING = "string";
}