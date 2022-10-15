module GitHub.Input.UpdateRepositoryInput exposing (UpdateRepositoryInput, clientMutationId, description, hasIssuesEnabled, hasProjectsEnabled, hasWikiEnabled, homepageUrl, input, name, null, template)

{-| 
## Creating an input

@docs input, UpdateRepositoryInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, hasProjectsEnabled, hasIssuesEnabled, hasWikiEnabled, homepageUrl, template, description, name
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateRepositoryInput =
    GitHub.Input.UpdateRepositoryInput


input : { repositoryId : GitHub.Id } -> UpdateRepositoryInput
input requiredArgs =
    GraphQL.Engine.addField
        "repositoryId"
        "ID!"
        (GitHub.id.encode requiredArgs.repositoryId)
        (GraphQL.Engine.inputObject "UpdateRepositoryInput")


name : String -> UpdateRepositoryInput -> UpdateRepositoryInput
name newArg_ inputObj_ =
    GraphQL.Engine.addField
        "name"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


description : String -> UpdateRepositoryInput -> UpdateRepositoryInput
description newArg_ inputObj_ =
    GraphQL.Engine.addField
        "description"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


template : Bool -> UpdateRepositoryInput -> UpdateRepositoryInput
template newArg_ inputObj_ =
    GraphQL.Engine.addField
        "template"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


homepageUrl : GitHub.Uri -> UpdateRepositoryInput -> UpdateRepositoryInput
homepageUrl newArg_ inputObj_ =
    GraphQL.Engine.addField
        "homepageUrl"
        "URI"
        (GitHub.uri.encode newArg_)
        inputObj_


hasWikiEnabled : Bool -> UpdateRepositoryInput -> UpdateRepositoryInput
hasWikiEnabled newArg_ inputObj_ =
    GraphQL.Engine.addField
        "hasWikiEnabled"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


hasIssuesEnabled : Bool -> UpdateRepositoryInput -> UpdateRepositoryInput
hasIssuesEnabled newArg_ inputObj_ =
    GraphQL.Engine.addField
        "hasIssuesEnabled"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


hasProjectsEnabled : Bool -> UpdateRepositoryInput -> UpdateRepositoryInput
hasProjectsEnabled newArg_ inputObj_ =
    GraphQL.Engine.addField
        "hasProjectsEnabled"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId : String -> UpdateRepositoryInput -> UpdateRepositoryInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { name : UpdateRepositoryInput -> UpdateRepositoryInput
    , description : UpdateRepositoryInput -> UpdateRepositoryInput
    , template : UpdateRepositoryInput -> UpdateRepositoryInput
    , homepageUrl : UpdateRepositoryInput -> UpdateRepositoryInput
    , hasWikiEnabled : UpdateRepositoryInput -> UpdateRepositoryInput
    , hasIssuesEnabled : UpdateRepositoryInput -> UpdateRepositoryInput
    , hasProjectsEnabled : UpdateRepositoryInput -> UpdateRepositoryInput
    , clientMutationId : UpdateRepositoryInput -> UpdateRepositoryInput
    }
null =
    { name =
        \inputObj ->
            GraphQL.Engine.addField "name" "String" Json.Encode.null inputObj
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
    , hasProjectsEnabled =
        \inputObj ->
            GraphQL.Engine.addField
                "hasProjectsEnabled"
                "Boolean"
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


