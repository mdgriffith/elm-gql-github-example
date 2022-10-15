module GitHub.Input.UpdateProjectNextInput exposing (UpdateProjectNextInput, clientMutationId, closed, description, input, null, projectId, public, shortDescription, title)

{-| 
## Creating an input

@docs input, UpdateProjectNextInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, public, closed, shortDescription, description, title, projectId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateProjectNextInput =
    GitHub.Input.UpdateProjectNextInput


input : UpdateProjectNextInput
input =
    GraphQL.Engine.inputObject "UpdateProjectNextInput"


projectId : GitHub.Id -> UpdateProjectNextInput -> UpdateProjectNextInput
projectId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "projectId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


title : String -> UpdateProjectNextInput -> UpdateProjectNextInput
title newArg_ inputObj_ =
    GraphQL.Engine.addField
        "title"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


description : String -> UpdateProjectNextInput -> UpdateProjectNextInput
description newArg_ inputObj_ =
    GraphQL.Engine.addField
        "description"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


shortDescription : String -> UpdateProjectNextInput -> UpdateProjectNextInput
shortDescription newArg_ inputObj_ =
    GraphQL.Engine.addField
        "shortDescription"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


closed : Bool -> UpdateProjectNextInput -> UpdateProjectNextInput
closed newArg_ inputObj_ =
    GraphQL.Engine.addField
        "closed"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


public : Bool -> UpdateProjectNextInput -> UpdateProjectNextInput
public newArg_ inputObj_ =
    GraphQL.Engine.addField
        "public"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId : String -> UpdateProjectNextInput -> UpdateProjectNextInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { projectId : UpdateProjectNextInput -> UpdateProjectNextInput
    , title : UpdateProjectNextInput -> UpdateProjectNextInput
    , description : UpdateProjectNextInput -> UpdateProjectNextInput
    , shortDescription : UpdateProjectNextInput -> UpdateProjectNextInput
    , closed : UpdateProjectNextInput -> UpdateProjectNextInput
    , public : UpdateProjectNextInput -> UpdateProjectNextInput
    , clientMutationId : UpdateProjectNextInput -> UpdateProjectNextInput
    }
null =
    { projectId =
        \inputObj ->
            GraphQL.Engine.addField "projectId" "ID" Json.Encode.null inputObj
    , title =
        \inputObj ->
            GraphQL.Engine.addField "title" "String" Json.Encode.null inputObj
    , description =
        \inputObj ->
            GraphQL.Engine.addField
                "description"
                "String"
                Json.Encode.null
                inputObj
    , shortDescription =
        \inputObj ->
            GraphQL.Engine.addField
                "shortDescription"
                "String"
                Json.Encode.null
                inputObj
    , closed =
        \inputObj ->
            GraphQL.Engine.addField "closed" "Boolean" Json.Encode.null inputObj
    , public =
        \inputObj ->
            GraphQL.Engine.addField "public" "Boolean" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


