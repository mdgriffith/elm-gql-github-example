module GitHub.Input.FollowUserInput exposing (FollowUserInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, FollowUserInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias FollowUserInput =
    GitHub.Input.FollowUserInput


input : { userId : GitHub.Id } -> FollowUserInput
input requiredArgs =
    GraphQL.Engine.addField
        "userId"
        "ID!"
        (GitHub.id.encode requiredArgs.userId)
        (GraphQL.Engine.inputObject "FollowUserInput")


clientMutationId : String -> FollowUserInput -> FollowUserInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : FollowUserInput -> FollowUserInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


