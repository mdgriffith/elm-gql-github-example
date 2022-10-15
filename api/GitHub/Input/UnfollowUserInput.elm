module GitHub.Input.UnfollowUserInput exposing (UnfollowUserInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UnfollowUserInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UnfollowUserInput =
    GitHub.Input.UnfollowUserInput


input : { userId : GitHub.Id } -> UnfollowUserInput
input requiredArgs =
    GraphQL.Engine.addField
        "userId"
        "ID!"
        (GitHub.id.encode requiredArgs.userId)
        (GraphQL.Engine.inputObject "UnfollowUserInput")


clientMutationId : String -> UnfollowUserInput -> UnfollowUserInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : UnfollowUserInput -> UnfollowUserInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


