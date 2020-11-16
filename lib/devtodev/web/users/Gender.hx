package devtodev.web.users;

/**
 * User’s gender.
 */
@:enum abstract Gender(Int) to Int from Int
{
    /**
     * Unknown.
     */
    var UNKNOWN = 0;

    /**
     * Male.
     */
    var MALE = 1;

    /**
     * Female.
     */
    var FEMALE = 2;
}