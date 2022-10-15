module GitHub.Input.DeleteVerifiableDomainInput exposing (DeleteVerifiableDomainInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteVerifiableDomainInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteVerifiableDomainInput =
    GitHub.Input.DeleteVerifiableDomainInput


input : { id : GitHub.Id } -> DeleteVerifiableDomainInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "DeleteVerifiableDomainInput")


clientMutationId :
    String -> DeleteVerifiableDomainInput -> DeleteVerifiableDomainInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        DeleteVerifiableDomainInput -> DeleteVerifiableDomainInput
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


