module GitHub.Input.CreatePullRequestInput exposing (CreatePullRequestInput, body, clientMutationId, draft, input, maintainerCanModify, null)

{-| 
## Creating an input

@docs input, CreatePullRequestInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, draft, maintainerCanModify, body
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreatePullRequestInput =
    GitHub.Input.CreatePullRequestInput


input :
    { repositoryId : GitHub.Id
    , baseRefName : String
    , headRefName : String
    , title : String
    }
    -> CreatePullRequestInput
input requiredArgs =
    GraphQL.Engine.addField
        "title"
        "String!"
        (Json.Encode.string requiredArgs.title)
        (GraphQL.Engine.addField
            "headRefName"
            "String!"
            (Json.Encode.string requiredArgs.headRefName)
            (GraphQL.Engine.addField
                "baseRefName"
                "String!"
                (Json.Encode.string requiredArgs.baseRefName)
                (GraphQL.Engine.addField
                    "repositoryId"
                    "ID!"
                    (GitHub.id.encode requiredArgs.repositoryId)
                    (GraphQL.Engine.inputObject "CreatePullRequestInput")
                )
            )
        )


body : String -> CreatePullRequestInput -> CreatePullRequestInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


maintainerCanModify : Bool -> CreatePullRequestInput -> CreatePullRequestInput
maintainerCanModify newArg_ inputObj_ =
    GraphQL.Engine.addField
        "maintainerCanModify"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


draft : Bool -> CreatePullRequestInput -> CreatePullRequestInput
draft newArg_ inputObj_ =
    GraphQL.Engine.addField
        "draft"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId : String -> CreatePullRequestInput -> CreatePullRequestInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { body : CreatePullRequestInput -> CreatePullRequestInput
    , maintainerCanModify : CreatePullRequestInput -> CreatePullRequestInput
    , draft : CreatePullRequestInput -> CreatePullRequestInput
    , clientMutationId : CreatePullRequestInput -> CreatePullRequestInput
    }
null =
    { body =
        \inputObj ->
            GraphQL.Engine.addField "body" "String" Json.Encode.null inputObj
    , maintainerCanModify =
        \inputObj ->
            GraphQL.Engine.addField
                "maintainerCanModify"
                "Boolean"
                Json.Encode.null
                inputObj
    , draft =
        \inputObj ->
            GraphQL.Engine.addField "draft" "Boolean" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


