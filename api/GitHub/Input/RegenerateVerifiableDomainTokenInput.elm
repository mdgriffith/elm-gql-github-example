module GitHub.Input.RegenerateVerifiableDomainTokenInput exposing (RegenerateVerifiableDomainTokenInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, RegenerateVerifiableDomainTokenInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RegenerateVerifiableDomainTokenInput =
    GitHub.Input.RegenerateVerifiableDomainTokenInput


input : { id : GitHub.Id } -> RegenerateVerifiableDomainTokenInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "RegenerateVerifiableDomainTokenInput")


clientMutationId :
    String
    -> RegenerateVerifiableDomainTokenInput
    -> RegenerateVerifiableDomainTokenInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        RegenerateVerifiableDomainTokenInput
        -> RegenerateVerifiableDomainTokenInput
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


