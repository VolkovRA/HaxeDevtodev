package devtodev.web;

import devtodev.web.LocationProgress;
import devtodev.web.users.User;
import devtodev.web.social.SocialNetworkID;

/**
 * Devtodev analytic service SDK.  
 * Devtodev is a comprehensive solution that analyzes your game economy and
 * gives you valuable insights. Concentrate on creating great games, and
 * devtodev will take care of the analytics.
 * 
 * To integrate your web application with devtodev system please perform the
 * following actions:
 * 1. Add the application to the Space using the wizard for adding application.
 * 2. [Integration samples of devtodev SDK for WEB are available on GitHub](https://github.com/devtodev-analytics/web-sdk-examples).
 * 3. To integrate SDK add the following line to the tag of your page.
 * 
 * ```
 * <script type="text/javascript" src="https://cdn.devtodev.com/sdk/web/v1/devtodevsdk.js">
 * </script>
 * ```
 * 
 * @see Website: https://www.devtodev.com/
 * @see Documentation: https://www.devtodev.com/help/78/devtodev_sdk_for_web_analytics_part_integration/
 */
@:native("devtodev")
extern class Devtodev
{
    /**
     * Methods for working with the users data.  
     * Cannot be `null`.
     */
    static public var user(default, null):User;

    /**
     * Returns SDK version.
     * @return Version of SDK.
     */
    static public function getSdkVersion():String;

    /**
     * Initialization.  
     * In order for SDK for WEB to start working, it is necessary to perform
     * initialization right after the page is loaded and you have basic user
     * identifier at your disposal.
     * 
     * **Attention!** In case User ID is changed after SDK was initiated, the
     * method should be called repeatedly with indication of the new User ID.
     * (For example, when user signs into another account in a launched
     * messenger application).
     * 
     * *If user has no unique identifier (say, if it is possible to use your
     * application / site without authorization), but you need to get stats
     * for such users, don't set userId during the initialization or set the
     * empty string ("") or null as value of userId. DK will assign the
     * unique identifier to user. This identifier will we used until the real
     * identifier assigns to the user.*
     * 
     * @param apiKey Devtodev API key, unique API key can be found in the application
     *               settings (“My apps” → App Name → “Settings” → “Integration”)
     * 
     * @param userId Unique user identifier.
     *               For example, user’s ID in a social network, or a unique account
     *               name used for user identification on your server.
     * 
     * @param previousUserId Previous unique user identifier. Optional.
     *                       It is used in case of change of the user identifier.
     * 
     * @return Init result.
     */
    static public function init(apiKey:String, ?userId:String, ?previousUserId:String):Bool;

    /**
     * Returns current cross-platform user id.
     * @return Current cross-platform user id.
     */
    static public function getCrossplatformUserId():Dynamic;

    /**
     * Initializes the user with the specified cross-platform identifier.
     * 
     * In cross-platform applications the additional user identifier can be used.
     * It is user cross-platform ID which is unique for all of the platforms.
     * And if cross-platform ID differs from the ID which is main for the platform,
     * you need to set the cross-platform ID. The cross-platform ID combines the
     * user data for cross-platform project.
     * 
     * We recommend you to apply this method before the SDK initialization,
     * otherwise the user identiticator from the previous session will be used
     * since the SDK initialization moment till the setCrossplatformUserId method
     * call.
     * 
     * If it is difficult to do, set the cross-platform ID as soon as it will be
     * available in the application after SDK initialization.
     * 
     * ***Attention!*** *If your application allows user to relogin (changing the user
     * during the working session of application), then the setCrossplatformUserId ​
     * method should be called just after the authorization. You don't need to call
     * the SDK initialization one more time.*
     * 
     * @param crossplatformUserId Unique cross-platform user ID used for user
     *                            identification on your server.
     */
    static public function setCrossplatformUserId(crossplatformUserId:String):Void;

    /**
     * Replaces current cross-platform user id.  
     * Attention! Don't use this method if you're going to perform the user's relogin.
     * @param newCrossPlatformID New cross-platform user ID.
     */
    static public function replaceCrossplatformUserId(newCrossPlatformID:String):Void;

    /**
     * Initializes the current user level. Required if level feature used in the app.  
     * In the first place this additional initialization is required for gaming
     * applications where the player has a game level as a characteristic.
     * 
     * For the most precise data collection, we strongly recommend specifying some
     * information about the user right after SDK is initiated.
     * 
     * @param currentUserLevel Current game level of the player.
     */
    static public function setCurrentLevel(currentUserLevel:Int):Void;

    /**
     * Application data initialization.  
     * Method is not obligatory, but if you want to have an ability to build
     * reports with regard to the version of your application, use this method.
     * @param appData Application data.
     */
    static public function setAppData(appData:AppData):Void;

    /**
     * Debug mode.  
     * To enable the debug mode and make SDK notifications displayed in the
     * console use this method.
     * @param status Activates console log status.
     */
    static public function setDebugLog(status:Bool):Void;

    /**
     * Starts session manually.  
     * Use this method if you want to start considering the session time
     * later than the SDK was initiated.
     * 
     * Session length is one of the most important parameters of an
     * application.
     * 
     * By default, the session starts automatically right after SDK is
     * initiated. But if it makes more sense to you, you are able to start
     * a session later.
     * 
     * This method is not recommended to be repeatedly applied.
     * 
     * Usage example:  
     * You can use this method to start counting the session length after
     * Flash application is loaded and launched, not after container page
     * is loaded.
     * 
     * **ATTENTION! If you use an application running in fullscreen mode,
     * it is necessary to call a special method at the moment of switching
     * between display modes.** In case application will be used in
     * fullscreen mode without calling the method, session length will be
     * counted incorrectly.
     */
    static public function startSession():Void;

    /**
     * Full-screen view status.  
     * @param status Set true when the app switches to the full-screen
     *               mode, set false in other case.
     */
    static public function setFullScreenMode(status:Bool):Void;

    /**
     * The event allowing to track the stage of tutorial a player is on.  
     * The event allows to evaluate the effectiveness of the tutorial
     * steps system. The event should be sent at the end of each tutorial
     * step indicating the number of every passed step as a parameter.
     * 
     * The latest successfully completed tutorial step.  
     * Use special values to record base evetns of the tutorial:
     *   - `1` Start the tutorial. (At the beginning, before the first step is completed)
     *   - `2` Tutorial finished. (Instead of the last step number)
     *   - `0` Tutorial skipped. (If user skipped the tutorial)
     * 
     * **Attention!** The logic of the use of the Skip `0` constant in
     * the Tutorial steps event is provided only in case a user has
     * completely refused to pass the tutorial.
     * After Skip `0` is used, no other values of the Tutorial steps
     * event must be received.
     * 
     * In other cases use step numbers. Make sure you use numbers above
     * `0` numerating the steps.
     * 
     * @param tutorialStep The latest successfully completed tutorial step.
     */
    static public function tutorialCompleted(tutorialStep:Int):Void;

    /**
     * Player has reached a new level.  
     * You can analyse the distribution of the players over the levels.
     * The event is sent over reaching a new level by a player.
     * @param level Level reached by the player.
     * @param resources Account balance data list.
     */
    static public function levelUp(level:Int, ?resources:Resources):Void;

    /**
     * Register transactions made through the platform's payment system.  
     * To track the payments, add this event right after the platform confirms
     * that the payment went through.
     * 
     * Example:
     * ```
     * Devtodev.realPayment("12345", 9.99, "Currency pack 2", CurrencyCode.USD);
     * ```
     * @param transactionId Transaction ID.
     * @param productPrice Product price. (In user's currency)
     * @param productName Product name.
     * @param transactionCurrencyISOCode Transaction currency.
     */
    static public function realPayment( transactionId:String,
                                        productPrice:Float,
                                        productName:String,
                                        transactionCurrencyISOCode:CurrencyCode
    ):Void;

    /**
     * Tracks in-app purchases.  
     * To track expenditures of in-game currency and the popularity of the
     * products, add this event right after a purchase is made.
     * @param purchaseId Unique purchase Id or name. (Max. 32 symbols)
     * @param purchaseType Purchase type or group. (Max. 96 symbols)
     * @param purchaseAmount Count of purchased goods.
     * @param purchasePrice Array including the names and amounts of the
     *                      paid currencies. (Total cost - if several goods were purchased)
     */
    static public function inAppPurchase(   purchaseId:String,
                                            purchaseType:String,
                                            purchaseAmount:Float,
                                            purchasePrice:Array<PurchasePrice>
    ):Void;

    /**
     * Tracks custom events.  
     * 
     * If you want to count the events which are not among basic, use
     * custom events.
     * 
     * The event must have a unique name and can include up to 20
     * parameters. The maximum length of the event name is 72 symbols.
     * Every parameter inside one event must have unique name. The
     * maximum length of the parameter name is 32 symbols. The values
     * of parameters can be String or number type (int, long, float,
     * double). The maximum length of parameter value is 255 symbols. 
     * 
     * Attention! No more than 300 variants of custom event names can
     * be used for one project. Try to enlarge events in meaning by
     * using event parameters. Events that didn't get into the limit
     * of unique event names will be discarded.
     * 
     * For a string parameter it is acceptable to use not more than
     * 50000 of unique values for the whole event use history. In
     * case the limit of unique values is exceeded the parameter is
     * ignored. 
     * 
     * Therefore we recommend not to set user IDs and Unix time as
     * parameter values of custom events. Try to integrate parameter
     * values if they have a very large variability. Otherwise it will
     * be very difficult to analyse the data or after some time it may
     * be even ignored  We strongly recommend not to change the type
     * of data transferred in the parameter over time. In case you
     * change the data type in parameter, in devtodev database it will
     * appear one more parameter in the event with the same name but
     * with different data type. The report building with such
     * parameter will be quite difficult. 
     * 
     * @param eventName Event name. (Max. 72 symbols)
     * @param params Array of event parameters. Up to 10 params.
     */
    static public function customEvent(eventName:String, ?params:Array<EventParam>):Void;

    /**
     * The method have to be used when entering the location.
     * 
     * First of all, the event is used for the games with short (within one
     * game session) locations, game levels. The event allows you to gather
     * data on passing the locations and get statistics on parameters which
     * vary during the the location passing.
     * 
     * Attention! The user can be only in one location at the same time.
     * When moving to another location (including embedded), the previous
     * location must be completed. Information on locations, the passing of
     * which was not completed by calling endProgressionEvent method during
     * the game session (the call of endProgressionEvent method is not
     * integrated; user unloaded the application from the device memory;
     * there was an application crash) do not fall in the statistics.
     * 
     * @param locationName The name of location user entered.
     * @param startParams Location parameters object.
     */
    static public function startProgressionEvent(locationName:String, ?startParams:LocationProgressStart):Void;

    /**
     * The method have to be used when the location passing is over.
     * @param locationName The name of location user left.
     * @param endParams Location parameters object.
     */
    static public function endProgressionEvent(locationName:String, endParams:LocationProgressEnd):Void;

    /**
     * Sends event packet immediately.
     */
    static public function sendBufferedEvents():Void;

    /**
     * The method of limiting the processing of user data. The right to be forgotten.
     * @param status Send `false` to erase user's personal data and stop collecting data of this user.
     *               Send `true` if you want to resume data collection.
     */
    static public function setTrackingAvailability(status:Bool):Void;

    /**
     * Tracks the existence of posts to a social network.
     * @param socialNetwork Social network Id. (Max. 24 symbols)
     * @param reason The reason of posting. (Max. 32 symbols)
     */
    static public function socialNetworkPost(socialNetwork:SocialNetworkID, reason:String):Void;
}