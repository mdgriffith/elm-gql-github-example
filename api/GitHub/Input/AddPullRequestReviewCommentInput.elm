module GitHub.Input.AddPullRequestReviewCommentInput exposing (AddPullRequestReviewCommentInput, clientMutationId, commitOID, inReplyTo, input, null, path, position, pullRequestId, pullRequestReviewId)

{-| 
## Creating an input

@docs input, AddPullRequestReviewCommentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, inReplyTo, position, path, commitOID, pullRequestReviewId, pullRequestId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddPullRequestReviewCommentInput =
    GitHub.Input.AddPullRequestReviewCommentInput


input : { body : String } -> AddPullRequestReviewCommentInput
input requiredArgs =
    GraphQL.Engine.addField
        "body"
        "String!"
        (Json.Encode.string requiredArgs.body)
        (GraphQL.Engine.inputObject "AddPullRequestReviewCommentInput")


pullRequestId :
    GitHub.Id
    -> AddPullRequestReviewCommentInput
    -> AddPullRequestReviewCommentInput
pullRequestId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "pullRequestId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


pullRequestReviewId :
    GitHub.Id
    -> AddPullRequestReviewCommentInput
    -> AddPullRequestReviewCommentInput
pullRequestReviewId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "pullRequestReviewId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


commitOID :
    GitHub.GitObjectID
    -> AddPullRequestReviewCommentInput
    -> AddPullRequestReviewCommentInput
commitOID newArg_ inputObj_ =
    GraphQL.Engine.addField
        "commitOID"
        "GitObjectID"
        (GitHub.gitObjectID.encode newArg_)
        inputObj_


path :
    String
    -> AddPullRequestReviewCommentInput
    -> AddPullRequestReviewCommentInput
path newArg_ inputObj_ =
    GraphQL.Engine.addField
        "path"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


position :
    Int -> AddPullRequestReviewCommentInput -> AddPullRequestReviewCommentInput
position newArg_ inputObj_ =
    GraphQL.Engine.addField "position" "Int" (Json.Encode.int newArg_) inputObj_


inReplyTo :
    GitHub.Id
    -> AddPullRequestReviewCommentInput
    -> AddPullRequestReviewCommentInput
inReplyTo newArg_ inputObj_ =
    GraphQL.Engine.addField
        "inReplyTo"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


clientMutationId :
    String
    -> AddPullRequestReviewCommentInput
    -> AddPullRequestReviewCommentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { pullRequestId :
        AddPullRequestReviewCommentInput -> AddPullRequestReviewCommentInput
    , pullRequestReviewId :
        AddPullRequestReviewCommentInput -> AddPullRequestReviewCommentInput
    , commitOID :
        AddPullRequestReviewCommentInput -> AddPullRequestReviewCommentInput
    , path :
        AddPullRequestReviewCommentInput -> AddPullRequestReviewCommentInput
    , position :
        AddPullRequestReviewCommentInput -> AddPullRequestReviewCommentInput
    , inReplyTo :
        AddPullRequestReviewCommentInput -> AddPullRequestReviewCommentInput
    , clientMutationId :
        AddPullRequestReviewCommentInput -> AddPullRequestReviewCommentInput
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
    , commitOID =
        \inputObj ->
            GraphQL.Engine.addField
                "commitOID"
                "GitObjectID"
                Json.Encode.null
                inputObj
    , path =
        \inputObj ->
            GraphQL.Engine.addField "path" "String" Json.Encode.null inputObj
    , position =
        \inputObj ->
            GraphQL.Engine.addField "position" "Int" Json.Encode.null inputObj
    , inReplyTo =
        \inputObj ->
            GraphQL.Engine.addField "inReplyTo" "ID" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


