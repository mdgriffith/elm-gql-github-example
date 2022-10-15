module GitHub.Input.AddVerifiableDomainInput exposing (AddVerifiableDomainInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, AddVerifiableDomainInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddVerifiableDomainInput =
    GitHub.Input.AddVerifiableDomainInput


input : { ownerId : GitHub.Id, domain : GitHub.Uri } -> AddVerifiableDomainInput
input requiredArgs =
    GraphQL.Engine.addField
        "domain"
        "URI!"
        (GitHub.uri.encode requiredArgs.domain)
        (GraphQL.Engine.addField
            "ownerId"
            "ID!"
            (GitHub.id.encode requiredArgs.ownerId)
            (GraphQL.Engine.inputObject "AddVerifiableDomainInput")
        )


clientMutationId :
    String -> AddVerifiableDomainInput -> AddVerifiableDomainInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId : AddVerifiableDomainInput -> AddVerifiableDomainInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


