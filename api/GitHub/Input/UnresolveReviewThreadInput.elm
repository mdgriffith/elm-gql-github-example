module GitHub.Input.UnresolveReviewThreadInput exposing (UnresolveReviewThreadInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UnresolveReviewThreadInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UnresolveReviewThreadInput =
    GitHub.Input.UnresolveReviewThreadInput


input : { threadId : GitHub.Id } -> UnresolveReviewThreadInput
input requiredArgs =
    GraphQL.Engine.addField
        "threadId"
        "ID!"
        (GitHub.id.encode requiredArgs.threadId)
        (GraphQL.Engine.inputObject "UnresolveReviewThreadInput")


clientMutationId :
    String -> UnresolveReviewThreadInput -> UnresolveReviewThreadInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UnresolveReviewThreadInput -> UnresolveReviewThreadInput
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


