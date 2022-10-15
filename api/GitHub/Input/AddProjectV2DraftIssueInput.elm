module GitHub.Input.AddProjectV2DraftIssueInput exposing (AddProjectV2DraftIssueInput, assigneeIds, body, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, AddProjectV2DraftIssueInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, assigneeIds, body
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddProjectV2DraftIssueInput =
    GitHub.Input.AddProjectV2DraftIssueInput


input : { projectId : GitHub.Id, title : String } -> AddProjectV2DraftIssueInput
input requiredArgs =
    GraphQL.Engine.addField
        "title"
        "String!"
        (Json.Encode.string requiredArgs.title)
        (GraphQL.Engine.addField
            "projectId"
            "ID!"
            (GitHub.id.encode requiredArgs.projectId)
            (GraphQL.Engine.inputObject "AddProjectV2DraftIssueInput")
        )


body : String -> AddProjectV2DraftIssueInput -> AddProjectV2DraftIssueInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


assigneeIds :
    List GitHub.Id -> AddProjectV2DraftIssueInput -> AddProjectV2DraftIssueInput
assigneeIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "assigneeIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


clientMutationId :
    String -> AddProjectV2DraftIssueInput -> AddProjectV2DraftIssueInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { body : AddProjectV2DraftIssueInput -> AddProjectV2DraftIssueInput
    , assigneeIds : AddProjectV2DraftIssueInput -> AddProjectV2DraftIssueInput
    , clientMutationId :
        AddProjectV2DraftIssueInput -> AddProjectV2DraftIssueInput
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
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


