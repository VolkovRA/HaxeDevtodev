package devtodev.web.social;

/**
 * Social network ID.  
 * We recommend using the this values for the most popular social network.
 */
@:enum abstract SocialNetworkID(String) to String from String
{
    /**
     * Evernote.
     */
    var EVERNOTE = "en";

    /**
     * Facebook.
     */
    var FACEBOOK = "fb";

    /**
     * Google Mail.
     */
    var GOOGLE_MAIL = "gm";

    /**
     * Google+.
     */
    var GOOGLE_GP = "gp";

    /**
     * LinkedIn.
     */
    var LINKEDIN = "in";

    /**
     * Odnoklassniki.
     */
    var ODNOKLASSNIKI = "ok";

    /**
     * Pinterest.
     */
    var PINTEREST = "pi";

    /**
     * Qzone.
     */
    var QZONE = "qq";

    /**
     * Reddit.
     */
    var REDDIT = "rt";

    /**
     * Renren.
     */
    var RENREN = "rr";

    /**
     * Tumblr.
     */
    var TUMBLR = "tb";

    /**
     * Twitter.
     */
    var TWITTER = "tw";

    /**
     * VK.
     */
    var VK = "vk";

    /**
     * Viber.
     */
    var VIBER = "vb";

    /**
     * WhatsApp.
     */
    var WHATSAPP = "wp";
}