module GitHub.Input.LockLockableInput exposing (LockLockableInput, clientMutationId, input, lockReason, null)

{-| 
## Creating an input

@docs input, LockLockableInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, lockReason
-}


import GitHub
import GitHub.Enum.LockReason
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias LockLockableInput =
    GitHub.Input.LockLockableInput


input : { lockableId : GitHub.Id } -> LockLockableInput
input requiredArgs =
    GraphQL.Engine.addField
        "lockableId"
        "ID!"
        (GitHub.id.encode requiredArgs.lockableId)
        (GraphQL.Engine.inputObject "LockLockableInput")


lockReason :
    GitHub.Enum.LockReason.LockReason -> LockLockableInput -> LockLockableInput
lockReason newArg_ inputObj_ =
    GraphQL.Engine.addField
        "lockReason"
        "LockReason"
        (GitHub.Enum.LockReason.encode newArg_)
        inputObj_


clientMutationId : String -> LockLockableInput -> LockLockableInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { lockReason : LockLockableInput -> LockLockableInput
    , clientMutationId : LockLockableInput -> LockLockableInput
    }
null =
    { lockReason =
        \inputObj ->
            GraphQL.Engine.addField
                "lockReason"
                "LockReason"
                Json.Encode.null
                inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


