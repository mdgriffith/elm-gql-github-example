module GitHub.Input.ApproveVerifiableDomainInput exposing (ApproveVerifiableDomainInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, ApproveVerifiableDomainInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ApproveVerifiableDomainInput =
    GitHub.Input.ApproveVerifiableDomainInput


input : { id : GitHub.Id } -> ApproveVerifiableDomainInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "ApproveVerifiableDomainInput")


clientMutationId :
    String -> ApproveVerifiableDomainInput -> ApproveVerifiableDomainInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        ApproveVerifiableDomainInput -> ApproveVerifiableDomainInput
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


