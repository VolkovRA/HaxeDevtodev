package devtodev.web;

/**
 * Start progress of location data.
 */
typedef LocationProgressStart =
{
    /**
     * Previously visited location.
     */
    @:optional var source:String;

    /**
     * Location level of difficulty.
     */
    @:optional var difficulty:String;
}

/**
 * The player end progress of location.
 */
typedef LocationProgressEnd =
{
    >LocationProgressStart,

    /**
     * State/result of the location passing.
     */
    var success:Bool;

    /**
     * Time spent in the location. (sec)  
     * In case the parameter is not specified by the developer, it will be
     * automatically calculated as the date difference between
     * `startProgressionEvent` and `endProgressionEvent` method calls.
     */
    @:optional var duration:Float;

    /**
     * User spendings within the location passing.
     */
    @:optional var spent:Array<LocationProgressMoney>;

    /**
     * User earnings within the location passing.
     */
    @:optional var earned:Array<LocationProgressMoney>;
}

/**
 * User spendings/earnings within the location passing.
 */
typedef LocationProgressMoney =
{
    /**
     * Currency name length max. 24 symbols.
     */
    var currency:String;

    /**
     * Objects with amount value less than 1 are ignored.
     */
    var amount:Float;
}