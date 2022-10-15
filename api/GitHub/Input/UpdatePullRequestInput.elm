module GitHub.Input.UpdatePullRequestInput exposing (UpdatePullRequestInput, assigneeIds, baseRefName, body, clientMutationId, input, labelIds, maintainerCanModify, milestoneId, null, projectIds, state, title)

{-| 
## Creating an input

@docs input, UpdatePullRequestInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, projectIds, labelIds, milestoneId, assigneeIds, maintainerCanModify, state, body, title, baseRefName
-}


import GitHub
import GitHub.Enum.PullRequestUpdateState
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdatePullRequestInput =
    GitHub.Input.UpdatePullRequestInput


input : { pullRequestId : GitHub.Id } -> UpdatePullRequestInput
input requiredArgs =
    GraphQL.Engine.addField
        "pullRequestId"
        "ID!"
        (GitHub.id.encode requiredArgs.pullRequestId)
        (GraphQL.Engine.inputObject "UpdatePullRequestInput")


baseRefName : String -> UpdatePullRequestInput -> UpdatePullRequestInput
baseRefName newArg_ inputObj_ =
    GraphQL.Engine.addField
        "baseRefName"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


title : String -> UpdatePullRequestInput -> UpdatePullRequestInput
title newArg_ inputObj_ =
    GraphQL.Engine.addField
        "title"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


body : String -> UpdatePullRequestInput -> UpdatePullRequestInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


state :
    GitHub.Enum.PullRequestUpdateState.PullRequestUpdateState
    -> UpdatePullRequestInput
    -> UpdatePullRequestInput
state newArg_ inputObj_ =
    GraphQL.Engine.addField
        "state"
        "PullRequestUpdateState"
        (GitHub.Enum.PullRequestUpdateState.encode newArg_)
        inputObj_


maintainerCanModify : Bool -> UpdatePullRequestInput -> UpdatePullRequestInput
maintainerCanModify newArg_ inputObj_ =
    GraphQL.Engine.addField
        "maintainerCanModify"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


assigneeIds : List GitHub.Id -> UpdatePullRequestInput -> UpdatePullRequestInput
assigneeIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "assigneeIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


milestoneId : GitHub.Id -> UpdatePullRequestInput -> UpdatePullRequestInput
milestoneId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "milestoneId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


labelIds : List GitHub.Id -> UpdatePullRequestInput -> UpdatePullRequestInput
labelIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "labelIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


projectIds : List GitHub.Id -> UpdatePullRequestInput -> UpdatePullRequestInput
projectIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "projectIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


clientMutationId : String -> UpdatePullRequestInput -> UpdatePullRequestInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { baseRefName : UpdatePullRequestInput -> UpdatePullRequestInput
    , title : UpdatePullRequestInput -> UpdatePullRequestInput
    , body : UpdatePullRequestInput -> UpdatePullRequestInput
    , state : UpdatePullRequestInput -> UpdatePullRequestInput
    , maintainerCanModify : UpdatePullRequestInput -> UpdatePullRequestInput
    , assigneeIds : UpdatePullRequestInput -> UpdatePullRequestInput
    , milestoneId : UpdatePullRequestInput -> UpdatePullRequestInput
    , labelIds : UpdatePullRequestInput -> UpdatePullRequestInput
    , projectIds : UpdatePullRequestInput -> UpdatePullRequestInput
    , clientMutationId : UpdatePullRequestInput -> UpdatePullRequestInput
    }
null =
    { baseRefName =
        \inputObj ->
            GraphQL.Engine.addField
                "baseRefName"
                "String"
                Json.Encode.null
                inputObj
    , title =
        \inputObj ->
            GraphQL.Engine.addField "title" "String" Json.Encode.null inputObj
    , body =
        \inputObj ->
            GraphQL.Engine.addField "body" "String" Json.Encode.null inputObj
    , state =
        \inputObj ->
            GraphQL.Engine.addField
                "state"
                "PullRequestUpdateState"
                Json.Encode.null
                inputObj
    , maintainerCanModify =
        \inputObj ->
            GraphQL.Engine.addField
                "maintainerCanModify"
                "Boolean"
                Json.Encode.null
                inputObj
    , assigneeIds =
        \inputObj ->
            GraphQL.Engine.addField
                "assigneeIds"
                "[ID!]"
                Json.Encode.null
                inputObj
    , milestoneId =
        \inputObj ->
            GraphQL.Engine.addField "milestoneId" "ID" Json.Encode.null inputObj
    , labelIds =
        \inputObj ->
            GraphQL.Engine.addField "labelIds" "[ID!]" Json.Encode.null inputObj
    , projectIds =
        \inputObj ->
            GraphQL.Engine.addField
                "projectIds"
                "[ID!]"
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


