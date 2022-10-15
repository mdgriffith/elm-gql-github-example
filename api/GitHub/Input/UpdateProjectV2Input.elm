module GitHub.Input.UpdateProjectV2Input exposing (UpdateProjectV2Input, clientMutationId, closed, input, null, public, readme, shortDescription, title)

{-| 
## Creating an input

@docs input, UpdateProjectV2Input

## Null values

@docs null

## Optional fields

@docs clientMutationId, public, closed, readme, shortDescription, title
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateProjectV2Input =
    GitHub.Input.UpdateProjectV2Input


input : { projectId : GitHub.Id } -> UpdateProjectV2Input
input requiredArgs =
    GraphQL.Engine.addField
        "projectId"
        "ID!"
        (GitHub.id.encode requiredArgs.projectId)
        (GraphQL.Engine.inputObject "UpdateProjectV2Input")


title : String -> UpdateProjectV2Input -> UpdateProjectV2Input
title newArg_ inputObj_ =
    GraphQL.Engine.addField
        "title"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


shortDescription : String -> UpdateProjectV2Input -> UpdateProjectV2Input
shortDescription newArg_ inputObj_ =
    GraphQL.Engine.addField
        "shortDescription"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


readme : String -> UpdateProjectV2Input -> UpdateProjectV2Input
readme newArg_ inputObj_ =
    GraphQL.Engine.addField
        "readme"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


closed : Bool -> UpdateProjectV2Input -> UpdateProjectV2Input
closed newArg_ inputObj_ =
    GraphQL.Engine.addField
        "closed"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


public : Bool -> UpdateProjectV2Input -> UpdateProjectV2Input
public newArg_ inputObj_ =
    GraphQL.Engine.addField
        "public"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId : String -> UpdateProjectV2Input -> UpdateProjectV2Input
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { title : UpdateProjectV2Input -> UpdateProjectV2Input
    , shortDescription : UpdateProjectV2Input -> UpdateProjectV2Input
    , readme : UpdateProjectV2Input -> UpdateProjectV2Input
    , closed : UpdateProjectV2Input -> UpdateProjectV2Input
    , public : UpdateProjectV2Input -> UpdateProjectV2Input
    , clientMutationId : UpdateProjectV2Input -> UpdateProjectV2Input
    }
null =
    { title =
        \inputObj ->
            GraphQL.Engine.addField "title" "String" Json.Encode.null inputObj
    , shortDescription =
        \inputObj ->
            GraphQL.Engine.addField
                "shortDescription"
                "String"
                Json.Encode.null
                inputObj
    , readme =
        \inputObj ->
            GraphQL.Engine.addField "readme" "String" Json.Encode.null inputObj
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


