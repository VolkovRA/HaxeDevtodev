package devtodev.web;

/**
 * Application data.
 */
typedef AppData = 
{
    /**
     * Current app version.
     */
    var appVersion:String;

    /**
     * Current code version.
     */
    @:optional var codeVersion:Float;
}