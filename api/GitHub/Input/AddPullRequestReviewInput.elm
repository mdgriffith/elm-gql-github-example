module GitHub.Input.AddPullRequestReviewInput exposing (AddPullRequestReviewInput, body, clientMutationId, comments, commitOID, event, input, null, threads)

{-| 
## Creating an input

@docs input, AddPullRequestReviewInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, threads, comments, event, body, commitOID
-}


import GitHub
import GitHub.Enum.PullRequestReviewEvent
import GitHub.Input
import GraphQL.Engine
import Json.Decode
import Json.Encode


type alias AddPullRequestReviewInput =
    GitHub.Input.AddPullRequestReviewInput


input : { pullRequestId : GitHub.Id } -> AddPullRequestReviewInput
input requiredArgs =
    GraphQL.Engine.addField
        "pullRequestId"
        "ID!"
        (GitHub.id.encode requiredArgs.pullRequestId)
        (GraphQL.Engine.inputObject "AddPullRequestReviewInput")


commitOID :
    GitHub.GitObjectID -> AddPullRequestReviewInput -> AddPullRequestReviewInput
commitOID newArg_ inputObj_ =
    GraphQL.Engine.addField
        "commitOID"
        "GitObjectID"
        (GitHub.gitObjectID.encode newArg_)
        inputObj_


body : String -> AddPullRequestReviewInput -> AddPullRequestReviewInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


event :
    GitHub.Enum.PullRequestReviewEvent.PullRequestReviewEvent
    -> AddPullRequestReviewInput
    -> AddPullRequestReviewInput
event newArg_ inputObj_ =
    GraphQL.Engine.addField
        "event"
        "PullRequestReviewEvent"
        (GitHub.Enum.PullRequestReviewEvent.encode newArg_)
        inputObj_


comments :
    List (Maybe GitHub.Input.DraftPullRequestReviewComment)
    -> AddPullRequestReviewInput
    -> AddPullRequestReviewInput
comments newArg_ inputObj_ =
    GraphQL.Engine.addField
        "comments"
        "[DraftPullRequestReviewComment]"
        (Json.Encode.list
            (GraphQL.Engine.maybeScalarEncode
                GraphQL.Engine.encodeInputObjectAsJson
            )
            newArg_
        )
        inputObj_


threads :
    List (Maybe GitHub.Input.DraftPullRequestReviewThread)
    -> AddPullRequestReviewInput
    -> AddPullRequestReviewInput
threads newArg_ inputObj_ =
    GraphQL.Engine.addField
        "threads"
        "[DraftPullRequestReviewThread]"
        (Json.Encode.list
            (GraphQL.Engine.maybeScalarEncode
                GraphQL.Engine.encodeInputObjectAsJson
            )
            newArg_
        )
        inputObj_


clientMutationId :
    String -> AddPullRequestReviewInput -> AddPullRequestReviewInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { commitOID : AddPullRequestReviewInput -> AddPullRequestReviewInput
    , body : AddPullRequestReviewInput -> AddPullRequestReviewInput
    , event : AddPullRequestReviewInput -> AddPullRequestReviewInput
    , comments : AddPullRequestReviewInput -> AddPullRequestReviewInput
    , threads : AddPullRequestReviewInput -> AddPullRequestReviewInput
    , clientMutationId : AddPullRequestReviewInput -> AddPullRequestReviewInput
    }
null =
    { commitOID =
        \inputObj ->
            GraphQL.Engine.addField
                "commitOID"
                "GitObjectID"
                Json.Encode.null
                inputObj
    , body =
        \inputObj ->
            GraphQL.Engine.addField "body" "String" Json.Encode.null inputObj
    , event =
        \inputObj ->
            GraphQL.Engine.addField
                "event"
                "PullRequestReviewEvent"
                Json.Encode.null
                inputObj
    , comments =
        \inputObj ->
            GraphQL.Engine.addField
                "comments"
                "[DraftPullRequestReviewComment]"
                Json.Encode.null
                inputObj
    , threads =
        \inputObj ->
            GraphQL.Engine.addField
                "threads"
                "[DraftPullRequestReviewThread]"
                Json.Encode.null
                inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


