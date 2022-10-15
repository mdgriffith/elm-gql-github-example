module GitHub.Input.ChangeUserStatusInput exposing (ChangeUserStatusInput, clientMutationId, emoji, expiresAt, input, limitedAvailability, message, null, organizationId)

{-| 
## Creating an input

@docs input, ChangeUserStatusInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, expiresAt, limitedAvailability, organizationId, message, emoji
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ChangeUserStatusInput =
    GitHub.Input.ChangeUserStatusInput


input : ChangeUserStatusInput
input =
    GraphQL.Engine.inputObject "ChangeUserStatusInput"


emoji : String -> ChangeUserStatusInput -> ChangeUserStatusInput
emoji newArg_ inputObj_ =
    GraphQL.Engine.addField
        "emoji"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


message : String -> ChangeUserStatusInput -> ChangeUserStatusInput
message newArg_ inputObj_ =
    GraphQL.Engine.addField
        "message"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


organizationId : GitHub.Id -> ChangeUserStatusInput -> ChangeUserStatusInput
organizationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "organizationId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


limitedAvailability : Bool -> ChangeUserStatusInput -> ChangeUserStatusInput
limitedAvailability newArg_ inputObj_ =
    GraphQL.Engine.addField
        "limitedAvailability"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


expiresAt : GitHub.DateTime -> ChangeUserStatusInput -> ChangeUserStatusInput
expiresAt newArg_ inputObj_ =
    GraphQL.Engine.addField
        "expiresAt"
        "DateTime"
        (GitHub.dateTime.encode newArg_)
        inputObj_


clientMutationId : String -> ChangeUserStatusInput -> ChangeUserStatusInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { emoji : ChangeUserStatusInput -> ChangeUserStatusInput
    , message : ChangeUserStatusInput -> ChangeUserStatusInput
    , organizationId : ChangeUserStatusInput -> ChangeUserStatusInput
    , limitedAvailability : ChangeUserStatusInput -> ChangeUserStatusInput
    , expiresAt : ChangeUserStatusInput -> ChangeUserStatusInput
    , clientMutationId : ChangeUserStatusInput -> ChangeUserStatusInput
    }
null =
    { emoji =
        \inputObj ->
            GraphQL.Engine.addField "emoji" "String" Json.Encode.null inputObj
    , message =
        \inputObj ->
            GraphQL.Engine.addField "message" "String" Json.Encode.null inputObj
    , organizationId =
        \inputObj ->
            GraphQL.Engine.addField
                "organizationId"
                "ID"
                Json.Encode.null
                inputObj
    , limitedAvailability =
        \inputObj ->
            GraphQL.Engine.addField
                "limitedAvailability"
                "Boolean"
                Json.Encode.null
                inputObj
    , expiresAt =
        \inputObj ->
            GraphQL.Engine.addField
                "expiresAt"
                "DateTime"
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


