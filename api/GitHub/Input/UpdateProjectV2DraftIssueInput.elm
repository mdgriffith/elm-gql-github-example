module GitHub.Input.UpdateProjectV2DraftIssueInput exposing (UpdateProjectV2DraftIssueInput, assigneeIds, body, clientMutationId, input, null, title)

{-| 
## Creating an input

@docs input, UpdateProjectV2DraftIssueInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, assigneeIds, body, title
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateProjectV2DraftIssueInput =
    GitHub.Input.UpdateProjectV2DraftIssueInput


input : { draftIssueId : GitHub.Id } -> UpdateProjectV2DraftIssueInput
input requiredArgs =
    GraphQL.Engine.addField
        "draftIssueId"
        "ID!"
        (GitHub.id.encode requiredArgs.draftIssueId)
        (GraphQL.Engine.inputObject "UpdateProjectV2DraftIssueInput")


title :
    String -> UpdateProjectV2DraftIssueInput -> UpdateProjectV2DraftIssueInput
title newArg_ inputObj_ =
    GraphQL.Engine.addField
        "title"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


body :
    String -> UpdateProjectV2DraftIssueInput -> UpdateProjectV2DraftIssueInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


assigneeIds :
    List GitHub.Id
    -> UpdateProjectV2DraftIssueInput
    -> UpdateProjectV2DraftIssueInput
assigneeIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "assigneeIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


clientMutationId :
    String -> UpdateProjectV2DraftIssueInput -> UpdateProjectV2DraftIssueInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { title : UpdateProjectV2DraftIssueInput -> UpdateProjectV2DraftIssueInput
    , body : UpdateProjectV2DraftIssueInput -> UpdateProjectV2DraftIssueInput
    , assigneeIds :
        UpdateProjectV2DraftIssueInput -> UpdateProjectV2DraftIssueInput
    , clientMutationId :
        UpdateProjectV2DraftIssueInput -> UpdateProjectV2DraftIssueInput
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


