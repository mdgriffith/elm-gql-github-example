module GitHub.Input.CreateRepositoryInput exposing (CreateRepositoryInput, clientMutationId, description, hasIssuesEnabled, hasWikiEnabled, homepageUrl, input, null, ownerId, teamId, template)

{-| 
## Creating an input

@docs input, CreateRepositoryInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, teamId, hasIssuesEnabled, hasWikiEnabled, homepageUrl, template, description, ownerId
-}


import GitHub
import GitHub.Enum.RepositoryVisibility
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateRepositoryInput =
    GitHub.Input.CreateRepositoryInput


input :
    { name : String
    , visibility : GitHub.Enum.RepositoryVisibility.RepositoryVisibility
    }
    -> CreateRepositoryInput
input requiredArgs =
    GraphQL.Engine.addField
        "visibility"
        "RepositoryVisibility!"
        (GitHub.Enum.RepositoryVisibility.encode requiredArgs.visibility)
        (GraphQL.Engine.addField
            "name"
            "String!"
            (Json.Encode.string requiredArgs.name)
            (GraphQL.Engine.inputObject "CreateRepositoryInput")
        )


ownerId : GitHub.Id -> CreateRepositoryInput -> CreateRepositoryInput
ownerId newArg_ inputObj_ =
    GraphQL.Engine.addField "ownerId" "ID" (GitHub.id.encode newArg_) inputObj_


description : String -> CreateRepositoryInput -> CreateRepositoryInput
description newArg_ inputObj_ =
    GraphQL.Engine.addField
        "description"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


template : Bool -> CreateRepositoryInput -> CreateRepositoryInput
template newArg_ inputObj_ =
    GraphQL.Engine.addField
        "template"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


homepageUrl : GitHub.Uri -> CreateRepositoryInput -> CreateRepositoryInput
homepageUrl newArg_ inputObj_ =
    GraphQL.Engine.addField
        "homepageUrl"
        "URI"
        (GitHub.uri.encode newArg_)
        inputObj_


hasWikiEnabled : Bool -> CreateRepositoryInput -> CreateRepositoryInput
hasWikiEnabled newArg_ inputObj_ =
    GraphQL.Engine.addField
        "hasWikiEnabled"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


hasIssuesEnabled : Bool -> CreateRepositoryInput -> CreateRepositoryInput
hasIssuesEnabled newArg_ inputObj_ =
    GraphQL.Engine.addField
        "hasIssuesEnabled"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


teamId : GitHub.Id -> CreateRepositoryInput -> CreateRepositoryInput
teamId newArg_ inputObj_ =
    GraphQL.Engine.addField "teamId" "ID" (GitHub.id.encode newArg_) inputObj_


clientMutationId : String -> CreateRepositoryInput -> CreateRepositoryInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { ownerId : CreateRepositoryInput -> CreateRepositoryInput
    , description : CreateRepositoryInput -> CreateRepositoryInput
    , template : CreateRepositoryInput -> CreateRepositoryInput
    , homepageUrl : CreateRepositoryInput -> CreateRepositoryInput
    , hasWikiEnabled : CreateRepositoryInput -> CreateRepositoryInput
    , hasIssuesEnabled : CreateRepositoryInput -> CreateRepositoryInput
    , teamId : CreateRepositoryInput -> CreateRepositoryInput
    , clientMutationId : CreateRepositoryInput -> CreateRepositoryInput
    }
null =
    { ownerId =
        \inputObj ->
            GraphQL.Engine.addField "ownerId" "ID" Json.Encode.null inputObj
    , description =
        \inputObj ->
            GraphQL.Engine.addField
                "description"
                "String"
                Json.Encode.null
                inputObj
    , template =
        \inputObj ->
            GraphQL.Engine.addField
                "template"
                "Boolean"
                Json.Encode.null
                inputObj
    , homepageUrl =
        \inputObj ->
            GraphQL.Engine.addField
                "homepageUrl"
                "URI"
                Json.Encode.null
                inputObj
    , hasWikiEnabled =
        \inputObj ->
            GraphQL.Engine.addField
                "hasWikiEnabled"
                "Boolean"
                Json.Encode.null
                inputObj
    , hasIssuesEnabled =
        \inputObj ->
            GraphQL.Engine.addField
                "hasIssuesEnabled"
                "Boolean"
                Json.Encode.null
                inputObj
    , teamId =
        \inputObj ->
            GraphQL.Engine.addField "teamId" "ID" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


