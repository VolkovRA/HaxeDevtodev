package devtodev.web.social;

/**
 * Social post reason.  
 * We recommend that you indicate actions which encourage users to make publication.
 */
@:enum abstract PostReason(String) to String from String
{
    /**
     * Start playing.
     */
    var START_PLAYING = "Start playing";

    /**
     * New level reached.
     */
    var NEW_LEVEL_REACHED = "New level reached";

    /**
     * New building.
     */
    var NEW_BUILDING = "New building";

    /**
     * New ability.
     */
    var NEW_ABILITY = "New ability";

    /**
     * Quest completed.
     */
    var QUEST_COMPLETED = "Quest completed";

    /**
     * New item.
     */
    var NEW_ITEM = "New item";

    /**
     * Collection completed.
     */
    var COLLECTION_COMPLETED = "Collection completed";

    /**
     * Invitation.
     */
    var INVITATION = "Invitation";

    /**
     * Asking for help.
     */
    var ASKING_FOR_HELP = "Asking for help";

    /**
     * New Record.
     */
    var NEW_RECORD = "New Record";

    /**
     * Achievement.
     */
    var ACHIEVEMENT = "Achievement";

    /**
     * URL sharing.
     */
    var URL_SHARING = "URL sharing";

    /**
     * Recommendation.
     */
    var RECOMMENDATION = "Recommendation";

    /**
     * Review.
     */
    var REVIEW = "Review";
}