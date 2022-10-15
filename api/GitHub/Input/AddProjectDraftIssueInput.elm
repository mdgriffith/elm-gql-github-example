module GitHub.Input.AddProjectDraftIssueInput exposing (AddProjectDraftIssueInput, assigneeIds, body, clientMutationId, input, null, projectId, title)

{-| 
## Creating an input

@docs input, AddProjectDraftIssueInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, assigneeIds, body, title, projectId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddProjectDraftIssueInput =
    GitHub.Input.AddProjectDraftIssueInput


input : AddProjectDraftIssueInput
input =
    GraphQL.Engine.inputObject "AddProjectDraftIssueInput"


projectId : GitHub.Id -> AddProjectDraftIssueInput -> AddProjectDraftIssueInput
projectId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "projectId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


title : String -> AddProjectDraftIssueInput -> AddProjectDraftIssueInput
title newArg_ inputObj_ =
    GraphQL.Engine.addField
        "title"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


body : String -> AddProjectDraftIssueInput -> AddProjectDraftIssueInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


assigneeIds :
    List GitHub.Id -> AddProjectDraftIssueInput -> AddProjectDraftIssueInput
assigneeIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "assigneeIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


clientMutationId :
    String -> AddProjectDraftIssueInput -> AddProjectDraftIssueInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { projectId : AddProjectDraftIssueInput -> AddProjectDraftIssueInput
    , title : AddProjectDraftIssueInput -> AddProjectDraftIssueInput
    , body : AddProjectDraftIssueInput -> AddProjectDraftIssueInput
    , assigneeIds : AddProjectDraftIssueInput -> AddProjectDraftIssueInput
    , clientMutationId : AddProjectDraftIssueInput -> AddProjectDraftIssueInput
    }
null =
    { projectId =
        \inputObj ->
            GraphQL.Engine.addField "projectId" "ID" Json.Encode.null inputObj
    , title =
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


