module GitHub.Input.DeleteIpAllowListEntryInput exposing (DeleteIpAllowListEntryInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteIpAllowListEntryInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteIpAllowListEntryInput =
    GitHub.Input.DeleteIpAllowListEntryInput


input : { ipAllowListEntryId : GitHub.Id } -> DeleteIpAllowListEntryInput
input requiredArgs =
    GraphQL.Engine.addField
        "ipAllowListEntryId"
        "ID!"
        (GitHub.id.encode requiredArgs.ipAllowListEntryId)
        (GraphQL.Engine.inputObject "DeleteIpAllowListEntryInput")


clientMutationId :
    String -> DeleteIpAllowListEntryInput -> DeleteIpAllowListEntryInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        DeleteIpAllowListEntryInput -> DeleteIpAllowListEntryInput
    }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


