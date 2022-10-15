module GitHub.Input.AbortQueuedMigrationsInput exposing (AbortQueuedMigrationsInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, AbortQueuedMigrationsInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AbortQueuedMigrationsInput =
    GitHub.Input.AbortQueuedMigrationsInput


input : { ownerId : GitHub.Id } -> AbortQueuedMigrationsInput
input requiredArgs =
    GraphQL.Engine.addField
        "ownerId"
        "ID!"
        (GitHub.id.encode requiredArgs.ownerId)
        (GraphQL.Engine.inputObject "AbortQueuedMigrationsInput")


clientMutationId :
    String -> AbortQueuedMigrationsInput -> AbortQueuedMigrationsInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        AbortQueuedMigrationsInput -> AbortQueuedMigrationsInput
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


