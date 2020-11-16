package devtodev.web;

/**
 * The list of currency names and their amount.
 */
typedef Resources =
{
    /**
     * Account balance of in-game currency by the end of level.
     */
    @:optional var balance:Array<Balance>;

    /**
     * Game currency earned during the level.
     */
    @:optional var earned:Array<Balance>;

    /**
     * Game currency amount spent during the level.
     */
    @:optional var spent:Array<Balance>;

    /**
     * Game currency amount bought during the level.
     */
    @:optional var bought:Array<Balance>;
}

/**
 * Balance data.
 */
typedef Balance =
{
    /**
     * Game currency name.
     */
    var currency:String;

    /**
     * Game currency amount.
     */
    var amount:Float;
}