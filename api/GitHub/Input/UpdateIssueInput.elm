module GitHub.Input.UpdateIssueInput exposing (UpdateIssueInput, assigneeIds, body, clientMutationId, input, labelIds, milestoneId, null, projectIds, state, title)

{-| 
## Creating an input

@docs input, UpdateIssueInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, projectIds, state, labelIds, milestoneId, assigneeIds, body, title
-}


import GitHub
import GitHub.Enum.IssueState
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateIssueInput =
    GitHub.Input.UpdateIssueInput


input : { id : GitHub.Id } -> UpdateIssueInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "UpdateIssueInput")


title : String -> UpdateIssueInput -> UpdateIssueInput
title newArg_ inputObj_ =
    GraphQL.Engine.addField
        "title"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


body : String -> UpdateIssueInput -> UpdateIssueInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


assigneeIds : List GitHub.Id -> UpdateIssueInput -> UpdateIssueInput
assigneeIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "assigneeIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


milestoneId : GitHub.Id -> UpdateIssueInput -> UpdateIssueInput
milestoneId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "milestoneId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


labelIds : List GitHub.Id -> UpdateIssueInput -> UpdateIssueInput
labelIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "labelIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


state :
    GitHub.Enum.IssueState.IssueState -> UpdateIssueInput -> UpdateIssueInput
state newArg_ inputObj_ =
    GraphQL.Engine.addField
        "state"
        "IssueState"
        (GitHub.Enum.IssueState.encode newArg_)
        inputObj_


projectIds : List GitHub.Id -> UpdateIssueInput -> UpdateIssueInput
projectIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "projectIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


clientMutationId : String -> UpdateIssueInput -> UpdateIssueInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { title : UpdateIssueInput -> UpdateIssueInput
    , body : UpdateIssueInput -> UpdateIssueInput
    , assigneeIds : UpdateIssueInput -> UpdateIssueInput
    , milestoneId : UpdateIssueInput -> UpdateIssueInput
    , labelIds : UpdateIssueInput -> UpdateIssueInput
    , state : UpdateIssueInput -> UpdateIssueInput
    , projectIds : UpdateIssueInput -> UpdateIssueInput
    , clientMutationId : UpdateIssueInput -> UpdateIssueInput
    }
null =
    { title =
        \inputObj ->
            GraphQL.Engine.addField "title" "String" Json.Encode.null inputObj
    , body =
        \inputObj ->
            GraphQL.Engine.addField "body" "String" Json.Encode.null inputObj
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
    , state =
        \inputObj ->
            GraphQL.Engine.addField
                "state"
                "IssueState"
                Json.Encode.null
                inputObj
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


