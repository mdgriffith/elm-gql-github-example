module GitHub.Input.UnlockLockableInput exposing (UnlockLockableInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UnlockLockableInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UnlockLockableInput =
    GitHub.Input.UnlockLockableInput


input : { lockableId : GitHub.Id } -> UnlockLockableInput
input requiredArgs =
    GraphQL.Engine.addField
        "lockableId"
        "ID!"
        (GitHub.id.encode requiredArgs.lockableId)
        (GraphQL.Engine.inputObject "UnlockLockableInput")


clientMutationId : String -> UnlockLockableInput -> UnlockLockableInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : UnlockLockableInput -> UnlockLockableInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


