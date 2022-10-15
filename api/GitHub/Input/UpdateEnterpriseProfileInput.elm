module GitHub.Input.UpdateEnterpriseProfileInput exposing (UpdateEnterpriseProfileInput, clientMutationId, description, input, location, name, null, websiteUrl)

{-| 
## Creating an input

@docs input, UpdateEnterpriseProfileInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, location, websiteUrl, description, name
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateEnterpriseProfileInput =
    GitHub.Input.UpdateEnterpriseProfileInput


input : { enterpriseId : GitHub.Id } -> UpdateEnterpriseProfileInput
input requiredArgs =
    GraphQL.Engine.addField
        "enterpriseId"
        "ID!"
        (GitHub.id.encode requiredArgs.enterpriseId)
        (GraphQL.Engine.inputObject "UpdateEnterpriseProfileInput")


name : String -> UpdateEnterpriseProfileInput -> UpdateEnterpriseProfileInput
name newArg_ inputObj_ =
    GraphQL.Engine.addField
        "name"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


description :
    String -> UpdateEnterpriseProfileInput -> UpdateEnterpriseProfileInput
description newArg_ inputObj_ =
    GraphQL.Engine.addField
        "description"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


websiteUrl :
    String -> UpdateEnterpriseProfileInput -> UpdateEnterpriseProfileInput
websiteUrl newArg_ inputObj_ =
    GraphQL.Engine.addField
        "websiteUrl"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


location :
    String -> UpdateEnterpriseProfileInput -> UpdateEnterpriseProfileInput
location newArg_ inputObj_ =
    GraphQL.Engine.addField
        "location"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId :
    String -> UpdateEnterpriseProfileInput -> UpdateEnterpriseProfileInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { name : UpdateEnterpriseProfileInput -> UpdateEnterpriseProfileInput
    , description : UpdateEnterpriseProfileInput -> UpdateEnterpriseProfileInput
    , websiteUrl : UpdateEnterpriseProfileInput -> UpdateEnterpriseProfileInput
    , location : UpdateEnterpriseProfileInput -> UpdateEnterpriseProfileInput
    , clientMutationId :
        UpdateEnterpriseProfileInput -> UpdateEnterpriseProfileInput
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
    , websiteUrl =
        \inputObj ->
            GraphQL.Engine.addField
                "websiteUrl"
                "String"
                Json.Encode.null
                inputObj
    , location =
        \inputObj ->
            GraphQL.Engine.addField
                "location"
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


