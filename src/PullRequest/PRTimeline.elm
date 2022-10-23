module PullRequest.PRTimeline exposing (Event(..), Input, IssueComment_Details, PullRequestDetails, PullRequestReview_Details, PullRequests, Repository, Response, TimelineItems, query)

{-| 
This file is generated from src/PullRequest.graphql using `elm-gql`

Please avoid modifying directly.


@docs Input

@docs IssueComment_Details, PullRequestReview_Details, Response

@docs query

@docs Event

@docs TimelineItems, PullRequestDetails, PullRequests, Repository


-}


import GitHub
import GraphQL.Engine
import Json.Decode
import Json.Encode
import PullRequest.Fragments.Actor


type alias Input =
    { owner : String, name : String, pullRequestCount : Int }


query : Input -> GitHub.Query Response
query args =
    GraphQL.Engine.bakeToSelection
        (Just "PRTimeline")
        (\version_ ->
            ( GraphQL.Engine.inputObjectToFieldList
                (GraphQL.Engine.inputObject "Input"
                    |> GraphQL.Engine.addField
                        "pullRequestCount"
                        "Int!"
                        (Json.Encode.int args.pullRequestCount)
                    |> GraphQL.Engine.addField
                        "name"
                        "String!"
                        (Json.Encode.string args.name)
                    |> GraphQL.Engine.addField
                        "owner"
                        "String!"
                        (Json.Encode.string args.owner)
                )
            , toPayload_ version_
            )
        )
        decoder_


{-  Return data  -}


type alias Response =
    { repository : Maybe Repository }


type alias Repository =
    { pullRequests : PullRequests }


type alias PullRequests =
    { pullRequestDetails : Maybe (List (Maybe PullRequestDetails)) }


type alias PullRequestDetails =
    { timelineItems : TimelineItems }


type alias TimelineItems =
    { event : Maybe (List (Maybe Event)) }


type Event
    = PullRequestReview PullRequestReview_Details
    | IssueComment IssueComment_Details
    | HeadRefRestoredEvent
    | HeadRefForcePushedEvent
    | HeadRefDeletedEvent
    | DisconnectedEvent
    | DeploymentEnvironmentChangedEvent
    | DeployedEvent
    | DemilestonedEvent
    | CrossReferencedEvent
    | ConvertedToDiscussionEvent
    | ConvertedNoteToIssueEvent
    | ConvertToDraftEvent
    | ConnectedEvent
    | CommentDeletedEvent
    | ClosedEvent
    | BaseRefForcePushedEvent
    | BaseRefDeletedEvent
    | BaseRefChangedEvent
    | AutomaticBaseChangeSucceededEvent
    | AutomaticBaseChangeFailedEvent
    | AutoSquashEnabledEvent
    | AutoRebaseEnabledEvent
    | AutoMergeEnabledEvent
    | AutoMergeDisabledEvent
    | AssignedEvent
    | AddedToProjectEvent
    | PullRequestReviewThread
    | PullRequestRevisionMarker
    | ReadyForReviewEvent
    | ReferencedEvent
    | RemovedFromProjectEvent
    | RenamedTitleEvent
    | ReopenedEvent
    | ReviewDismissedEvent
    | ReviewRequestRemovedEvent
    | ReviewRequestedEvent
    | SubscribedEvent
    | TransferredEvent
    | UnassignedEvent
    | UnlabeledEvent
    | UnlockedEvent
    | UnmarkedAsDuplicateEvent
    | UnpinnedEvent
    | UnsubscribedEvent
    | UserBlockedEvent
    | LabeledEvent
    | LockedEvent
    | MarkedAsDuplicateEvent
    | MentionedEvent
    | MergedEvent
    | MilestonedEvent
    | MovedColumnsInProjectEvent
    | PinnedEvent
    | PullRequestCommit
    | PullRequestCommitCommentThread


{- PullRequestReview -}


type alias PullRequestReview_Details =
    { body : String, author : Maybe PullRequest.Fragments.Actor.Actor }


{- IssueComment -}


type alias IssueComment_Details =
    { body : String, author : Maybe PullRequest.Fragments.Actor.Actor }


decoder_ : Int -> Json.Decode.Decoder Response
decoder_ version_ =
    Json.Decode.succeed Response
        |> GraphQL.Engine.versionedJsonField
            version_
            "repository"
            (GraphQL.Engine.decodeNullable
                (Json.Decode.succeed Repository
                    |> GraphQL.Engine.versionedJsonField
                        0
                        "pullRequests"
                        (Json.Decode.succeed PullRequests
                            |> GraphQL.Engine.versionedJsonField
                                0
                                "pullRequestDetails"
                                (GraphQL.Engine.decodeNullable
                                    (Json.Decode.list
                                        (GraphQL.Engine.decodeNullable
                                            (Json.Decode.succeed
                                                PullRequestDetails
                                                |> GraphQL.Engine.versionedJsonField
                                                    0
                                                    "timelineItems"
                                                    (Json.Decode.succeed
                                                        TimelineItems
                                                        |> GraphQL.Engine.versionedJsonField
                                                            0
                                                            "event"
                                                            (GraphQL.Engine.decodeNullable
                                                                (Json.Decode.list
                                                                    (GraphQL.Engine.decodeNullable
                                                                        (Json.Decode.andThen
                                                                            (\andThenUnpack ->
                                                                                case
                                                                                    andThenUnpack
                                                                                of
                                                                                    "IssueComment" ->
                                                                                        Json.Decode.map
                                                                                            IssueComment
                                                                                            (Json.Decode.succeed
                                                                                              IssueComment_Details
                                                                                                |> GraphQL.Engine.versionedJsonField
                                                                                                    0
                                                                                                    "body"
                                                                                                    Json.Decode.string
                                                                                                |> GraphQL.Engine.versionedJsonField
                                                                                                    0
                                                                                                    "author"
                                                                                                    (GraphQL.Engine.decodeNullable
                                                                                                        (Json.Decode.succeed
                                                                                                            PullRequest.Fragments.Actor.Actor
                                                                                                            |> PullRequest.Fragments.Actor.decoder
                                                                                                        )
                                                                                                    )
                                                                                            )

                                                                                    "PullRequestReview" ->
                                                                                        Json.Decode.map
                                                                                            PullRequestReview
                                                                                            (Json.Decode.succeed
                                                                                              PullRequestReview_Details
                                                                                                |> GraphQL.Engine.versionedJsonField
                                                                                                    0
                                                                                                    "body"
                                                                                                    Json.Decode.string
                                                                                                |> GraphQL.Engine.versionedJsonField
                                                                                                    0
                                                                                                    "author"
                                                                                                    (GraphQL.Engine.decodeNullable
                                                                                                        (Json.Decode.succeed
                                                                                                            PullRequest.Fragments.Actor.Actor
                                                                                                            |> PullRequest.Fragments.Actor.decoder
                                                                                                        )
                                                                                                    )
                                                                                            )

                                                                                    "HeadRefRestoredEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            HeadRefRestoredEvent

                                                                                    "HeadRefForcePushedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            HeadRefForcePushedEvent

                                                                                    "HeadRefDeletedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            HeadRefDeletedEvent

                                                                                    "DisconnectedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            DisconnectedEvent

                                                                                    "DeploymentEnvironmentChangedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            DeploymentEnvironmentChangedEvent

                                                                                    "DeployedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            DeployedEvent

                                                                                    "DemilestonedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            DemilestonedEvent

                                                                                    "CrossReferencedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            CrossReferencedEvent

                                                                                    "ConvertedToDiscussionEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            ConvertedToDiscussionEvent

                                                                                    "ConvertedNoteToIssueEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            ConvertedNoteToIssueEvent

                                                                                    "ConvertToDraftEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            ConvertToDraftEvent

                                                                                    "ConnectedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            ConnectedEvent

                                                                                    "CommentDeletedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            CommentDeletedEvent

                                                                                    "ClosedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            ClosedEvent

                                                                                    "BaseRefForcePushedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            BaseRefForcePushedEvent

                                                                                    "BaseRefDeletedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            BaseRefDeletedEvent

                                                                                    "BaseRefChangedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            BaseRefChangedEvent

                                                                                    "AutomaticBaseChangeSucceededEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            AutomaticBaseChangeSucceededEvent

                                                                                    "AutomaticBaseChangeFailedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            AutomaticBaseChangeFailedEvent

                                                                                    "AutoSquashEnabledEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            AutoSquashEnabledEvent

                                                                                    "AutoRebaseEnabledEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            AutoRebaseEnabledEvent

                                                                                    "AutoMergeEnabledEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            AutoMergeEnabledEvent

                                                                                    "AutoMergeDisabledEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            AutoMergeDisabledEvent

                                                                                    "AssignedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            AssignedEvent

                                                                                    "AddedToProjectEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            AddedToProjectEvent

                                                                                    "PullRequestReviewThread" ->
                                                                                        Json.Decode.succeed
                                                                                            PullRequestReviewThread

                                                                                    "PullRequestRevisionMarker" ->
                                                                                        Json.Decode.succeed
                                                                                            PullRequestRevisionMarker

                                                                                    "ReadyForReviewEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            ReadyForReviewEvent

                                                                                    "ReferencedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            ReferencedEvent

                                                                                    "RemovedFromProjectEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            RemovedFromProjectEvent

                                                                                    "RenamedTitleEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            RenamedTitleEvent

                                                                                    "ReopenedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            ReopenedEvent

                                                                                    "ReviewDismissedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            ReviewDismissedEvent

                                                                                    "ReviewRequestRemovedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            ReviewRequestRemovedEvent

                                                                                    "ReviewRequestedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            ReviewRequestedEvent

                                                                                    "SubscribedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            SubscribedEvent

                                                                                    "TransferredEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            TransferredEvent

                                                                                    "UnassignedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            UnassignedEvent

                                                                                    "UnlabeledEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            UnlabeledEvent

                                                                                    "UnlockedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            UnlockedEvent

                                                                                    "UnmarkedAsDuplicateEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            UnmarkedAsDuplicateEvent

                                                                                    "UnpinnedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            UnpinnedEvent

                                                                                    "UnsubscribedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            UnsubscribedEvent

                                                                                    "UserBlockedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            UserBlockedEvent

                                                                                    "LabeledEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            LabeledEvent

                                                                                    "LockedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            LockedEvent

                                                                                    "MarkedAsDuplicateEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            MarkedAsDuplicateEvent

                                                                                    "MentionedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            MentionedEvent

                                                                                    "MergedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            MergedEvent

                                                                                    "MilestonedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            MilestonedEvent

                                                                                    "MovedColumnsInProjectEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            MovedColumnsInProjectEvent

                                                                                    "PinnedEvent" ->
                                                                                        Json.Decode.succeed
                                                                                            PinnedEvent

                                                                                    "PullRequestCommit" ->
                                                                                        Json.Decode.succeed
                                                                                            PullRequestCommit

                                                                                    "PullRequestCommitCommentThread" ->
                                                                                        Json.Decode.succeed
                                                                                            PullRequestCommitCommentThread

                                                                                    _ ->
                                                                                        Json.Decode.fail
                                                                                            "Unknown union found"
                                                                            )
                                                                            (Json.Decode.field
                                                                                "__typename"
                                                                                Json.Decode.string
                                                                            )
                                                                        )
                                                                    )
                                                                )
                                                            )
                                                    )
                                            )
                                        )
                                    )
                                )
                        )
                )
            )


toPayload_ : Int -> String
toPayload_ version_ =
    (((((((GraphQL.Engine.versionedAlias version_ "repository" ++ " (name: ")
            ++ GraphQL.Engine.versionedName version_ "$name"
         )
            ++ ", owner: "
        )
            ++ GraphQL.Engine.versionedName version_ "$owner"
       )
        ++ ") {pullRequests (first: "
      )
        ++ GraphQL.Engine.versionedName version_ "$pullRequestCount"
     )
        ++ """) {pullRequestDetails: nodes {timelineItems (first: 100) {event: nodes {__typename

... on PullRequestReview {author {
...Actor
 }
body}
... on IssueComment {author {
...Actor
 }
body} } } } } }"""
    )
        ++ """fragment Actor on Actor {login
avatarUrl
resourcePath
 }"""


