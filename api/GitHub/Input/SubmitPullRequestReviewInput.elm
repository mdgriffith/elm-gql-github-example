module GitHub.Input.SubmitPullRequestReviewInput exposing (SubmitPullRequestReviewInput, body, clientMutationId, input, null, pullRequestId, pullRequestReviewId)

{-| 
## Creating an input

@docs input, SubmitPullRequestReviewInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, body, pullRequestReviewId, pullRequestId
-}


import GitHub
import GitHub.Enum.PullRequestReviewEvent
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias SubmitPullRequestReviewInput =
    GitHub.Input.SubmitPullRequestReviewInput


input :
    { event : GitHub.Enum.PullRequestReviewEvent.PullRequestReviewEvent }
    -> SubmitPullRequestReviewInput
input requiredArgs =
    GraphQL.Engine.addField
        "event"
        "PullRequestReviewEvent!"
        (GitHub.Enum.PullRequestReviewEvent.encode requiredArgs.event)
        (GraphQL.Engine.inputObject "SubmitPullRequestReviewInput")


pullRequestId :
    GitHub.Id -> SubmitPullRequestReviewInput -> SubmitPullRequestReviewInput
pullRequestId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "pullRequestId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


pullRequestReviewId :
    GitHub.Id -> SubmitPullRequestReviewInput -> SubmitPullRequestReviewInput
pullRequestReviewId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "pullRequestReviewId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


body : String -> SubmitPullRequestReviewInput -> SubmitPullRequestReviewInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId :
    String -> SubmitPullRequestReviewInput -> SubmitPullRequestReviewInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { pullRequestId :
        SubmitPullRequestReviewInput -> SubmitPullRequestReviewInput
    , pullRequestReviewId :
        SubmitPullRequestReviewInput -> SubmitPullRequestReviewInput
    , body : SubmitPullRequestReviewInput -> SubmitPullRequestReviewInput
    , clientMutationId :
        SubmitPullRequestReviewInput -> SubmitPullRequestReviewInput
    }
null =
    { pullRequestId =
        \inputObj ->
            GraphQL.Engine.addField
                "pullRequestId"
                "ID"
                Json.Encode.null
                inputObj
    , pullRequestReviewId =
        \inputObj ->
            GraphQL.Engine.addField
                "pullRequestReviewId"
                "ID"
                Json.Encode.null
                inputObj
    , body =
        \inputObj ->
            GraphQL.Engine.addField "body" "String" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


