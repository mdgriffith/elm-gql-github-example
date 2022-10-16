module GitHub.Enum.PullRequestTimelineItemsItemType exposing (PullRequestTimelineItemsItemType(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, PullRequestTimelineItemsItemType
-}


import Json.Decode
import Json.Encode


type PullRequestTimelineItemsItemType
    = PULL_REQUEST_COMMIT
    | PULL_REQUEST_COMMIT_COMMENT_THREAD
    | PULL_REQUEST_REVIEW
    | PULL_REQUEST_REVIEW_THREAD
    | PULL_REQUEST_REVISION_MARKER
    | AUTOMATIC_BASE_CHANGE_FAILED_EVENT
    | AUTOMATIC_BASE_CHANGE_SUCCEEDED_EVENT
    | AUTO_MERGE_DISABLED_EVENT
    | AUTO_MERGE_ENABLED_EVENT
    | AUTO_REBASE_ENABLED_EVENT
    | AUTO_SQUASH_ENABLED_EVENT
    | BASE_REF_CHANGED_EVENT
    | BASE_REF_FORCE_PUSHED_EVENT
    | BASE_REF_DELETED_EVENT
    | DEPLOYED_EVENT
    | DEPLOYMENT_ENVIRONMENT_CHANGED_EVENT
    | HEAD_REF_DELETED_EVENT
    | HEAD_REF_FORCE_PUSHED_EVENT
    | HEAD_REF_RESTORED_EVENT
    | MERGED_EVENT
    | REVIEW_DISMISSED_EVENT
    | REVIEW_REQUESTED_EVENT
    | REVIEW_REQUEST_REMOVED_EVENT
    | READY_FOR_REVIEW_EVENT
    | CONVERT_TO_DRAFT_EVENT
    | ADDED_TO_MERGE_QUEUE_EVENT
    | REMOVED_FROM_MERGE_QUEUE_EVENT
    | ISSUE_COMMENT
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


all : List PullRequestTimelineItemsItemType
all =
    [ PULL_REQUEST_COMMIT
    , PULL_REQUEST_COMMIT_COMMENT_THREAD
    , PULL_REQUEST_REVIEW
    , PULL_REQUEST_REVIEW_THREAD
    , PULL_REQUEST_REVISION_MARKER
    , AUTOMATIC_BASE_CHANGE_FAILED_EVENT
    , AUTOMATIC_BASE_CHANGE_SUCCEEDED_EVENT
    , AUTO_MERGE_DISABLED_EVENT
    , AUTO_MERGE_ENABLED_EVENT
    , AUTO_REBASE_ENABLED_EVENT
    , AUTO_SQUASH_ENABLED_EVENT
    , BASE_REF_CHANGED_EVENT
    , BASE_REF_FORCE_PUSHED_EVENT
    , BASE_REF_DELETED_EVENT
    , DEPLOYED_EVENT
    , DEPLOYMENT_ENVIRONMENT_CHANGED_EVENT
    , HEAD_REF_DELETED_EVENT
    , HEAD_REF_FORCE_PUSHED_EVENT
    , HEAD_REF_RESTORED_EVENT
    , MERGED_EVENT
    , REVIEW_DISMISSED_EVENT
    , REVIEW_REQUESTED_EVENT
    , REVIEW_REQUEST_REMOVED_EVENT
    , READY_FOR_REVIEW_EVENT
    , CONVERT_TO_DRAFT_EVENT
    , ADDED_TO_MERGE_QUEUE_EVENT
    , REMOVED_FROM_MERGE_QUEUE_EVENT
    , ISSUE_COMMENT
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


decoder : Json.Decode.Decoder PullRequestTimelineItemsItemType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "PULL_REQUEST_COMMIT" ->
                        Json.Decode.succeed PULL_REQUEST_COMMIT

                    "PULL_REQUEST_COMMIT_COMMENT_THREAD" ->
                        Json.Decode.succeed PULL_REQUEST_COMMIT_COMMENT_THREAD

                    "PULL_REQUEST_REVIEW" ->
                        Json.Decode.succeed PULL_REQUEST_REVIEW

                    "PULL_REQUEST_REVIEW_THREAD" ->
                        Json.Decode.succeed PULL_REQUEST_REVIEW_THREAD

                    "PULL_REQUEST_REVISION_MARKER" ->
                        Json.Decode.succeed PULL_REQUEST_REVISION_MARKER

                    "AUTOMATIC_BASE_CHANGE_FAILED_EVENT" ->
                        Json.Decode.succeed AUTOMATIC_BASE_CHANGE_FAILED_EVENT

                    "AUTOMATIC_BASE_CHANGE_SUCCEEDED_EVENT" ->
                        Json.Decode.succeed
                            AUTOMATIC_BASE_CHANGE_SUCCEEDED_EVENT

                    "AUTO_MERGE_DISABLED_EVENT" ->
                        Json.Decode.succeed AUTO_MERGE_DISABLED_EVENT

                    "AUTO_MERGE_ENABLED_EVENT" ->
                        Json.Decode.succeed AUTO_MERGE_ENABLED_EVENT

                    "AUTO_REBASE_ENABLED_EVENT" ->
                        Json.Decode.succeed AUTO_REBASE_ENABLED_EVENT

                    "AUTO_SQUASH_ENABLED_EVENT" ->
                        Json.Decode.succeed AUTO_SQUASH_ENABLED_EVENT

                    "BASE_REF_CHANGED_EVENT" ->
                        Json.Decode.succeed BASE_REF_CHANGED_EVENT

                    "BASE_REF_FORCE_PUSHED_EVENT" ->
                        Json.Decode.succeed BASE_REF_FORCE_PUSHED_EVENT

                    "BASE_REF_DELETED_EVENT" ->
                        Json.Decode.succeed BASE_REF_DELETED_EVENT

                    "DEPLOYED_EVENT" ->
                        Json.Decode.succeed DEPLOYED_EVENT

                    "DEPLOYMENT_ENVIRONMENT_CHANGED_EVENT" ->
                        Json.Decode.succeed DEPLOYMENT_ENVIRONMENT_CHANGED_EVENT

                    "HEAD_REF_DELETED_EVENT" ->
                        Json.Decode.succeed HEAD_REF_DELETED_EVENT

                    "HEAD_REF_FORCE_PUSHED_EVENT" ->
                        Json.Decode.succeed HEAD_REF_FORCE_PUSHED_EVENT

                    "HEAD_REF_RESTORED_EVENT" ->
                        Json.Decode.succeed HEAD_REF_RESTORED_EVENT

                    "MERGED_EVENT" ->
                        Json.Decode.succeed MERGED_EVENT

                    "REVIEW_DISMISSED_EVENT" ->
                        Json.Decode.succeed REVIEW_DISMISSED_EVENT

                    "REVIEW_REQUESTED_EVENT" ->
                        Json.Decode.succeed REVIEW_REQUESTED_EVENT

                    "REVIEW_REQUEST_REMOVED_EVENT" ->
                        Json.Decode.succeed REVIEW_REQUEST_REMOVED_EVENT

                    "READY_FOR_REVIEW_EVENT" ->
                        Json.Decode.succeed READY_FOR_REVIEW_EVENT

                    "CONVERT_TO_DRAFT_EVENT" ->
                        Json.Decode.succeed CONVERT_TO_DRAFT_EVENT

                    "ADDED_TO_MERGE_QUEUE_EVENT" ->
                        Json.Decode.succeed ADDED_TO_MERGE_QUEUE_EVENT

                    "REMOVED_FROM_MERGE_QUEUE_EVENT" ->
                        Json.Decode.succeed REMOVED_FROM_MERGE_QUEUE_EVENT

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


encode : PullRequestTimelineItemsItemType -> Json.Encode.Value
encode val =
    case val of
        PULL_REQUEST_COMMIT ->
            Json.Encode.string "PULL_REQUEST_COMMIT"

        PULL_REQUEST_COMMIT_COMMENT_THREAD ->
            Json.Encode.string "PULL_REQUEST_COMMIT_COMMENT_THREAD"

        PULL_REQUEST_REVIEW ->
            Json.Encode.string "PULL_REQUEST_REVIEW"

        PULL_REQUEST_REVIEW_THREAD ->
            Json.Encode.string "PULL_REQUEST_REVIEW_THREAD"

        PULL_REQUEST_REVISION_MARKER ->
            Json.Encode.string "PULL_REQUEST_REVISION_MARKER"

        AUTOMATIC_BASE_CHANGE_FAILED_EVENT ->
            Json.Encode.string "AUTOMATIC_BASE_CHANGE_FAILED_EVENT"

        AUTOMATIC_BASE_CHANGE_SUCCEEDED_EVENT ->
            Json.Encode.string "AUTOMATIC_BASE_CHANGE_SUCCEEDED_EVENT"

        AUTO_MERGE_DISABLED_EVENT ->
            Json.Encode.string "AUTO_MERGE_DISABLED_EVENT"

        AUTO_MERGE_ENABLED_EVENT ->
            Json.Encode.string "AUTO_MERGE_ENABLED_EVENT"

        AUTO_REBASE_ENABLED_EVENT ->
            Json.Encode.string "AUTO_REBASE_ENABLED_EVENT"

        AUTO_SQUASH_ENABLED_EVENT ->
            Json.Encode.string "AUTO_SQUASH_ENABLED_EVENT"

        BASE_REF_CHANGED_EVENT ->
            Json.Encode.string "BASE_REF_CHANGED_EVENT"

        BASE_REF_FORCE_PUSHED_EVENT ->
            Json.Encode.string "BASE_REF_FORCE_PUSHED_EVENT"

        BASE_REF_DELETED_EVENT ->
            Json.Encode.string "BASE_REF_DELETED_EVENT"

        DEPLOYED_EVENT ->
            Json.Encode.string "DEPLOYED_EVENT"

        DEPLOYMENT_ENVIRONMENT_CHANGED_EVENT ->
            Json.Encode.string "DEPLOYMENT_ENVIRONMENT_CHANGED_EVENT"

        HEAD_REF_DELETED_EVENT ->
            Json.Encode.string "HEAD_REF_DELETED_EVENT"

        HEAD_REF_FORCE_PUSHED_EVENT ->
            Json.Encode.string "HEAD_REF_FORCE_PUSHED_EVENT"

        HEAD_REF_RESTORED_EVENT ->
            Json.Encode.string "HEAD_REF_RESTORED_EVENT"

        MERGED_EVENT ->
            Json.Encode.string "MERGED_EVENT"

        REVIEW_DISMISSED_EVENT ->
            Json.Encode.string "REVIEW_DISMISSED_EVENT"

        REVIEW_REQUESTED_EVENT ->
            Json.Encode.string "REVIEW_REQUESTED_EVENT"

        REVIEW_REQUEST_REMOVED_EVENT ->
            Json.Encode.string "REVIEW_REQUEST_REMOVED_EVENT"

        READY_FOR_REVIEW_EVENT ->
            Json.Encode.string "READY_FOR_REVIEW_EVENT"

        CONVERT_TO_DRAFT_EVENT ->
            Json.Encode.string "CONVERT_TO_DRAFT_EVENT"

        ADDED_TO_MERGE_QUEUE_EVENT ->
            Json.Encode.string "ADDED_TO_MERGE_QUEUE_EVENT"

        REMOVED_FROM_MERGE_QUEUE_EVENT ->
            Json.Encode.string "REMOVED_FROM_MERGE_QUEUE_EVENT"

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


