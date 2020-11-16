package devtodev.web.users;

/**
 * Methods for working with the user data.
 */
@:native("devtodev.user")
extern class User
{
    /**
     * Mark user if it's cheater.  
     * In case you have your own methods of determining cheaters in
     * the application, you can have such users marked. Payments made
     * by them will not be taken into account in the statistics.
     * @param isCheater True if user is a cheater.
     */
    public function cheater(isCheater:Bool):Void;

    /**
     * Track user's age.
     * @param age User’s age.
     */
    public function age(age:Int):Void;

    /**
     * Track user's gender.
     * @param gender User’s gender.
     */
    public function gender(gender:Gender):Void;

    /**
     * Track user's e-mail.
     * @param email User’s e-mail.
     */
    public function email(email:String):Void;

    /**
     * Track user's phone number.
     * @param phone User’s phone number.
     */
    public function phone(phone:String):Void;

    /**
     * Track user's photo URL.
     * @param url User’s phone number.
     */
    public function photo(url:String):Void;

    /**
     * Set properties on a user data.
     * @param key If a string, this is the name of the property.
     *            If an object, this is an associative array of names and values.
     * @param value A value to set on the given property.
     */
    @:overload(function(obj:Dynamic):Void{})
    public function set(key:String, value:Dynamic):Void;

    /**
     * Increments or decrements numeric user's properties.  
     * Examples:
     * ```
     * Devtodev.user.increment('Rounds played', 1);
     * 
     * // or if you're just incrementing a counter by 1, you can simply do
     * Devtodev.user.increment('Rounds played');
     * 
     * // to decrement a counter, pass a negative number
     * Devtodev.user.increment('Rounds played', -1);
     * 
     * // you can increment multiple properties at once:
     * Devtodev.user.increment({
     *     'Rounds played': 1,
     *     'Enemies killed': 6
     * });
     * ```
     * @param key If a string, this is the name of the property.
     *            If an object, this is an associative array of names and numeric values.
     * @param value An amount to increment the given property.
     */
    @:overload(function(obj:Dynamic):Void{})
    public function increment(key:String, value:Dynamic):Void;

    /**
     * Removes properties from a user data.  
     * Example:
     * ```
     * Devtodev.user.remove('Hair color');
     * 
     * // to set multiple properties at once
     * Devtodev.user.remove(['Hair color', 'blonde', 'Last payment']);
     * ```
     */
    @:overload(function(keys:Array<String>):Void{})
    public function remove(key:String):Void;

    /**
     * Removes all user's custom personal data from devtodev data base.
     */
    public function clearUser():Void;
}