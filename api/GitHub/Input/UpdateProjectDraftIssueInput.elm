module GitHub.Input.UpdateProjectDraftIssueInput exposing (UpdateProjectDraftIssueInput, assigneeIds, body, clientMutationId, input, null, title)

{-| 
## Creating an input

@docs input, UpdateProjectDraftIssueInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, assigneeIds, body, title
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateProjectDraftIssueInput =
    GitHub.Input.UpdateProjectDraftIssueInput


input : { draftIssueId : GitHub.Id } -> UpdateProjectDraftIssueInput
input requiredArgs =
    GraphQL.Engine.addField
        "draftIssueId"
        "ID!"
        (GitHub.id.encode requiredArgs.draftIssueId)
        (GraphQL.Engine.inputObject "UpdateProjectDraftIssueInput")


title : String -> UpdateProjectDraftIssueInput -> UpdateProjectDraftIssueInput
title newArg_ inputObj_ =
    GraphQL.Engine.addField
        "title"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


body : String -> UpdateProjectDraftIssueInput -> UpdateProjectDraftIssueInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


assigneeIds :
    List GitHub.Id
    -> UpdateProjectDraftIssueInput
    -> UpdateProjectDraftIssueInput
assigneeIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "assigneeIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


clientMutationId :
    String -> UpdateProjectDraftIssueInput -> UpdateProjectDraftIssueInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { title : UpdateProjectDraftIssueInput -> UpdateProjectDraftIssueInput
    , body : UpdateProjectDraftIssueInput -> UpdateProjectDraftIssueInput
    , assigneeIds : UpdateProjectDraftIssueInput -> UpdateProjectDraftIssueInput
    , clientMutationId :
        UpdateProjectDraftIssueInput -> UpdateProjectDraftIssueInput
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
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


