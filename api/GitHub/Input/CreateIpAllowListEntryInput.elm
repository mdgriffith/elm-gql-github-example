module GitHub.Input.CreateIpAllowListEntryInput exposing (CreateIpAllowListEntryInput, clientMutationId, input, name, null)

{-| 
## Creating an input

@docs input, CreateIpAllowListEntryInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, name
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateIpAllowListEntryInput =
    GitHub.Input.CreateIpAllowListEntryInput


input :
    { ownerId : GitHub.Id, allowListValue : String, isActive : Bool }
    -> CreateIpAllowListEntryInput
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
                "ownerId"
                "ID!"
                (GitHub.id.encode requiredArgs.ownerId)
                (GraphQL.Engine.inputObject "CreateIpAllowListEntryInput")
            )
        )


name : String -> CreateIpAllowListEntryInput -> CreateIpAllowListEntryInput
name newArg_ inputObj_ =
    GraphQL.Engine.addField
        "name"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId :
    String -> CreateIpAllowListEntryInput -> CreateIpAllowListEntryInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { name : CreateIpAllowListEntryInput -> CreateIpAllowListEntryInput
    , clientMutationId :
        CreateIpAllowListEntryInput -> CreateIpAllowListEntryInput
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


