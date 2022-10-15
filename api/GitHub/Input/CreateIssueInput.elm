module GitHub.Input.CreateIssueInput exposing (CreateIssueInput, assigneeIds, body, clientMutationId, input, issueTemplate, labelIds, milestoneId, null, projectIds)

{-| 
## Creating an input

@docs input, CreateIssueInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, issueTemplate, projectIds, labelIds, milestoneId, assigneeIds, body
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateIssueInput =
    GitHub.Input.CreateIssueInput


input : { repositoryId : GitHub.Id, title : String } -> CreateIssueInput
input requiredArgs =
    GraphQL.Engine.addField
        "title"
        "String!"
        (Json.Encode.string requiredArgs.title)
        (GraphQL.Engine.addField
            "repositoryId"
            "ID!"
            (GitHub.id.encode requiredArgs.repositoryId)
            (GraphQL.Engine.inputObject "CreateIssueInput")
        )


body : String -> CreateIssueInput -> CreateIssueInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


assigneeIds : List GitHub.Id -> CreateIssueInput -> CreateIssueInput
assigneeIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "assigneeIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


milestoneId : GitHub.Id -> CreateIssueInput -> CreateIssueInput
milestoneId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "milestoneId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


labelIds : List GitHub.Id -> CreateIssueInput -> CreateIssueInput
labelIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "labelIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


projectIds : List GitHub.Id -> CreateIssueInput -> CreateIssueInput
projectIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "projectIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


issueTemplate : String -> CreateIssueInput -> CreateIssueInput
issueTemplate newArg_ inputObj_ =
    GraphQL.Engine.addField
        "issueTemplate"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId : String -> CreateIssueInput -> CreateIssueInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { body : CreateIssueInput -> CreateIssueInput
    , assigneeIds : CreateIssueInput -> CreateIssueInput
    , milestoneId : CreateIssueInput -> CreateIssueInput
    , labelIds : CreateIssueInput -> CreateIssueInput
    , projectIds : CreateIssueInput -> CreateIssueInput
    , issueTemplate : CreateIssueInput -> CreateIssueInput
    , clientMutationId : CreateIssueInput -> CreateIssueInput
    }
null =
    { body =
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
    , projectIds =
        \inputObj ->
            GraphQL.Engine.addField
                "projectIds"
                "[ID!]"
                Json.Encode.null
                inputObj
    , issueTemplate =
        \inputObj ->
            GraphQL.Engine.addField
                "issueTemplate"
                "String"
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


