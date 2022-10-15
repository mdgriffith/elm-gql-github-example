module GitHub.Input.UpdateIpAllowListEntryInput exposing (UpdateIpAllowListEntryInput, clientMutationId, input, name, null)

{-| 
## Creating an input

@docs input, UpdateIpAllowListEntryInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, name
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateIpAllowListEntryInput =
    GitHub.Input.UpdateIpAllowListEntryInput


input :
    { ipAllowListEntryId : GitHub.Id, allowListValue : String, isActive : Bool }
    -> UpdateIpAllowListEntryInput
input requiredArgs =
    GraphQL.Engine.addField
        "isActive"
        "Boolean!"
        (Json.Encode.bool requiredArgs.isActive)
        (GraphQL.Engine.addField
            "allowListValue"
            "String!"
            (Json.Encode.string requiredArgs.allowListValue)
            (GraphQL.Engine.addField
                "ipAllowListEntryId"
                "ID!"
                (GitHub.id.encode requiredArgs.ipAllowListEntryId)
                (GraphQL.Engine.inputObject "UpdateIpAllowListEntryInput")
            )
        )


name : String -> UpdateIpAllowListEntryInput -> UpdateIpAllowListEntryInput
name newArg_ inputObj_ =
    GraphQL.Engine.addField
        "name"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId :
    String -> UpdateIpAllowListEntryInput -> UpdateIpAllowListEntryInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { name : UpdateIpAllowListEntryInput -> UpdateIpAllowListEntryInput
    , clientMutationId :
        UpdateIpAllowListEntryInput -> UpdateIpAllowListEntryInput
    }
null =
    { name =
        \inputObj ->
            GraphQL.Engine.addField "name" "String" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


