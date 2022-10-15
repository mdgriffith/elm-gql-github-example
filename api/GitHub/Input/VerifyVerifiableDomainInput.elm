module GitHub.Input.VerifyVerifiableDomainInput exposing (VerifyVerifiableDomainInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, VerifyVerifiableDomainInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias VerifyVerifiableDomainInput =
    GitHub.Input.VerifyVerifiableDomainInput


input : { id : GitHub.Id } -> VerifyVerifiableDomainInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "VerifyVerifiableDomainInput")


clientMutationId :
    String -> VerifyVerifiableDomainInput -> VerifyVerifiableDomainInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        VerifyVerifiableDomainInput -> VerifyVerifiableDomainInput
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


