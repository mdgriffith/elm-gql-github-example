module GitHub.Input.CreateProjectInput exposing (CreateProjectInput, body, clientMutationId, input, null, repositoryIds, template)

{-| 
## Creating an input

@docs input, CreateProjectInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, repositoryIds, template, body
-}


import GitHub
import GitHub.Enum.ProjectTemplate
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateProjectInput =
    GitHub.Input.CreateProjectInput


input : { ownerId : GitHub.Id, name : String } -> CreateProjectInput
input requiredArgs =
    GraphQL.Engine.addField
        "name"
        "String!"
        (Json.Encode.string requiredArgs.name)
        (GraphQL.Engine.addField
            "ownerId"
            "ID!"
            (GitHub.id.encode requiredArgs.ownerId)
            (GraphQL.Engine.inputObject "CreateProjectInput")
        )


body : String -> CreateProjectInput -> CreateProjectInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


template :
    GitHub.Enum.ProjectTemplate.ProjectTemplate
    -> CreateProjectInput
    -> CreateProjectInput
template newArg_ inputObj_ =
    GraphQL.Engine.addField
        "template"
        "ProjectTemplate"
        (GitHub.Enum.ProjectTemplate.encode newArg_)
        inputObj_


repositoryIds : List GitHub.Id -> CreateProjectInput -> CreateProjectInput
repositoryIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "repositoryIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


clientMutationId : String -> CreateProjectInput -> CreateProjectInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { body : CreateProjectInput -> CreateProjectInput
    , template : CreateProjectInput -> CreateProjectInput
    , repositoryIds : CreateProjectInput -> CreateProjectInput
    , clientMutationId : CreateProjectInput -> CreateProjectInput
    }
null =
    { body =
        \inputObj ->
            GraphQL.Engine.addField "body" "String" Json.Encode.null inputObj
    , template =
        \inputObj ->
            GraphQL.Engine.addField
                "template"
                "ProjectTemplate"
                Json.Encode.null
                inputObj
    , repositoryIds =
        \inputObj ->
            GraphQL.Engine.addField
                "repositoryIds"
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


