package devtodev.web;

/**
 * In-app purchase.  
 * Useful to track expenditures of in-game currency and the popularity
 * of the products.
 */
typedef PurchasePrice =
{
    /**
     * Game currency name.  
     * Example: `coins`, `gold`.
     */
    var currency:String;

    /**
     * Game currency amount.  
     * Example: `10`
     */
    var amount:Float;
}