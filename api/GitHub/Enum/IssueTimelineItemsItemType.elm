module GitHub.Enum.IssueTimelineItemsItemType exposing (IssueTimelineItemsItemType(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, IssueTimelineItemsItemType
-}


import Json.Decode
import Json.Encode


type IssueTimelineItemsItemType
    = ISSUE_COMMENT
    | CROSS_REFERENCED_EVENT
    | ADDED_TO_PROJECT_EVENT
    | ASSIGNED_EVENT
    | CLOSED_EVENT
    | COMMENT_DELETED_EVENT
    | CONNECTED_EVENT
    | CONVERTED_NOTE_TO_ISSUE_EVENT
    | CONVERTED_TO_DISCUSSION_EVENT
    | DEMILESTONED_EVENT
    | DISCONNECTED_EVENT
    | LABELED_EVENT
    | LOCKED_EVENT
    | MARKED_AS_DUPLICATE_EVENT
    | MENTIONED_EVENT
    | MILESTONED_EVENT
    | MOVED_COLUMNS_IN_PROJECT_EVENT
    | PINNED_EVENT
    | REFERENCED_EVENT
    | REMOVED_FROM_PROJECT_EVENT
    | RENAMED_TITLE_EVENT
    | REOPENED_EVENT
    | SUBSCRIBED_EVENT
    | TRANSFERRED_EVENT
    | UNASSIGNED_EVENT
    | UNLABELED_EVENT
    | UNLOCKED_EVENT
    | USER_BLOCKED_EVENT
    | UNMARKED_AS_DUPLICATE_EVENT
    | UNPINNED_EVENT
    | UNSUBSCRIBED_EVENT


all : List IssueTimelineItemsItemType
all =
    [ ISSUE_COMMENT
    , CROSS_REFERENCED_EVENT
    , ADDED_TO_PROJECT_EVENT
    , ASSIGNED_EVENT
    , CLOSED_EVENT
    , COMMENT_DELETED_EVENT
    , CONNECTED_EVENT
    , CONVERTED_NOTE_TO_ISSUE_EVENT
    , CONVERTED_TO_DISCUSSION_EVENT
    , DEMILESTONED_EVENT
    , DISCONNECTED_EVENT
    , LABELED_EVENT
    , LOCKED_EVENT
    , MARKED_AS_DUPLICATE_EVENT
    , MENTIONED_EVENT
    , MILESTONED_EVENT
    , MOVED_COLUMNS_IN_PROJECT_EVENT
    , PINNED_EVENT
    , REFERENCED_EVENT
    , REMOVED_FROM_PROJECT_EVENT
    , RENAMED_TITLE_EVENT
    , REOPENED_EVENT
    , SUBSCRIBED_EVENT
    , TRANSFERRED_EVENT
    , UNASSIGNED_EVENT
    , UNLABELED_EVENT
    , UNLOCKED_EVENT
    , USER_BLOCKED_EVENT
    , UNMARKED_AS_DUPLICATE_EVENT
    , UNPINNED_EVENT
    , UNSUBSCRIBED_EVENT
    ]


decoder : Json.Decode.Decoder IssueTimelineItemsItemType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "ISSUE_COMMENT" ->
                    Json.Decode.succeed ISSUE_COMMENT

                "CROSS_REFERENCED_EVENT" ->
                    Json.Decode.succeed CROSS_REFERENCED_EVENT

                "ADDED_TO_PROJECT_EVENT" ->
                    Json.Decode.succeed ADDED_TO_PROJECT_EVENT

                "ASSIGNED_EVENT" ->
                    Json.Decode.succeed ASSIGNED_EVENT

                "CLOSED_EVENT" ->
                    Json.Decode.succeed CLOSED_EVENT

                "COMMENT_DELETED_EVENT" ->
                    Json.Decode.succeed COMMENT_DELETED_EVENT

                "CONNECTED_EVENT" ->
                    Json.Decode.succeed CONNECTED_EVENT

                "CONVERTED_NOTE_TO_ISSUE_EVENT" ->
                    Json.Decode.succeed CONVERTED_NOTE_TO_ISSUE_EVENT

                "CONVERTED_TO_DISCUSSION_EVENT" ->
                    Json.Decode.succeed CONVERTED_TO_DISCUSSION_EVENT

                "DEMILESTONED_EVENT" ->
                    Json.Decode.succeed DEMILESTONED_EVENT

                "DISCONNECTED_EVENT" ->
                    Json.Decode.succeed DISCONNECTED_EVENT

                "LABELED_EVENT" ->
                    Json.Decode.succeed LABELED_EVENT

                "LOCKED_EVENT" ->
                    Json.Decode.succeed LOCKED_EVENT

                "MARKED_AS_DUPLICATE_EVENT" ->
                    Json.Decode.succeed MARKED_AS_DUPLICATE_EVENT

                "MENTIONED_EVENT" ->
                    Json.Decode.succeed MENTIONED_EVENT

                "MILESTONED_EVENT" ->
                    Json.Decode.succeed MILESTONED_EVENT

                "MOVED_COLUMNS_IN_PROJECT_EVENT" ->
                    Json.Decode.succeed MOVED_COLUMNS_IN_PROJECT_EVENT

                "PINNED_EVENT" ->
                    Json.Decode.succeed PINNED_EVENT

                "REFERENCED_EVENT" ->
                    Json.Decode.succeed REFERENCED_EVENT

                "REMOVED_FROM_PROJECT_EVENT" ->
                    Json.Decode.succeed REMOVED_FROM_PROJECT_EVENT

                "RENAMED_TITLE_EVENT" ->
                    Json.Decode.succeed RENAMED_TITLE_EVENT

                "REOPENED_EVENT" ->
                    Json.Decode.succeed REOPENED_EVENT

                "SUBSCRIBED_EVENT" ->
                    Json.Decode.succeed SUBSCRIBED_EVENT

                "TRANSFERRED_EVENT" ->
                    Json.Decode.succeed TRANSFERRED_EVENT

                "UNASSIGNED_EVENT" ->
                    Json.Decode.succeed UNASSIGNED_EVENT

                "UNLABELED_EVENT" ->
                    Json.Decode.succeed UNLABELED_EVENT

                "UNLOCKED_EVENT" ->
                    Json.Decode.succeed UNLOCKED_EVENT

                "USER_BLOCKED_EVENT" ->
                    Json.Decode.succeed USER_BLOCKED_EVENT

                "UNMARKED_AS_DUPLICATE_EVENT" ->
                    Json.Decode.succeed UNMARKED_AS_DUPLICATE_EVENT

                "UNPINNED_EVENT" ->
                    Json.Decode.succeed UNPINNED_EVENT

                "UNSUBSCRIBED_EVENT" ->
                    Json.Decode.succeed UNSUBSCRIBED_EVENT

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : IssueTimelineItemsItemType -> Json.Encode.Value
encode val =
    case val of
        ISSUE_COMMENT ->
            Json.Encode.string "ISSUE_COMMENT"

        CROSS_REFERENCED_EVENT ->
            Json.Encode.string "CROSS_REFERENCED_EVENT"

        ADDED_TO_PROJECT_EVENT ->
            Json.Encode.string "ADDED_TO_PROJECT_EVENT"

        ASSIGNED_EVENT ->
            Json.Encode.string "ASSIGNED_EVENT"

        CLOSED_EVENT ->
            Json.Encode.string "CLOSED_EVENT"

        COMMENT_DELETED_EVENT ->
            Json.Encode.string "COMMENT_DELETED_EVENT"

        CONNECTED_EVENT ->
            Json.Encode.string "CONNECTED_EVENT"

        CONVERTED_NOTE_TO_ISSUE_EVENT ->
            Json.Encode.string "CONVERTED_NOTE_TO_ISSUE_EVENT"

        CONVERTED_TO_DISCUSSION_EVENT ->
            Json.Encode.string "CONVERTED_TO_DISCUSSION_EVENT"

        DEMILESTONED_EVENT ->
            Json.Encode.string "DEMILESTONED_EVENT"

        DISCONNECTED_EVENT ->
            Json.Encode.string "DISCONNECTED_EVENT"

        LABELED_EVENT ->
            Json.Encode.string "LABELED_EVENT"

        LOCKED_EVENT ->
            Json.Encode.string "LOCKED_EVENT"

        MARKED_AS_DUPLICATE_EVENT ->
            Json.Encode.string "MARKED_AS_DUPLICATE_EVENT"

        MENTIONED_EVENT ->
            Json.Encode.string "MENTIONED_EVENT"

        MILESTONED_EVENT ->
            Json.Encode.string "MILESTONED_EVENT"

        MOVED_COLUMNS_IN_PROJECT_EVENT ->
            Json.Encode.string "MOVED_COLUMNS_IN_PROJECT_EVENT"

        PINNED_EVENT ->
            Json.Encode.string "PINNED_EVENT"

        REFERENCED_EVENT ->
            Json.Encode.string "REFERENCED_EVENT"

        REMOVED_FROM_PROJECT_EVENT ->
            Json.Encode.string "REMOVED_FROM_PROJECT_EVENT"

        RENAMED_TITLE_EVENT ->
            Json.Encode.string "RENAMED_TITLE_EVENT"

        REOPENED_EVENT ->
            Json.Encode.string "REOPENED_EVENT"

        SUBSCRIBED_EVENT ->
            Json.Encode.string "SUBSCRIBED_EVENT"

        TRANSFERRED_EVENT ->
            Json.Encode.string "TRANSFERRED_EVENT"

        UNASSIGNED_EVENT ->
            Json.Encode.string "UNASSIGNED_EVENT"

        UNLABELED_EVENT ->
            Json.Encode.string "UNLABELED_EVENT"

        UNLOCKED_EVENT ->
            Json.Encode.string "UNLOCKED_EVENT"

        USER_BLOCKED_EVENT ->
            Json.Encode.string "USER_BLOCKED_EVENT"

        UNMARKED_AS_DUPLICATE_EVENT ->
            Json.Encode.string "UNMARKED_AS_DUPLICATE_EVENT"

        UNPINNED_EVENT ->
            Json.Encode.string "UNPINNED_EVENT"

        UNSUBSCRIBED_EVENT ->
            Json.Encode.string "UNSUBSCRIBED_EVENT"


