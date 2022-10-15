module GitHub.Input.ResolveReviewThreadInput exposing (ResolveReviewThreadInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, ResolveReviewThreadInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ResolveReviewThreadInput =
    GitHub.Input.ResolveReviewThreadInput


input : { threadId : GitHub.Id } -> ResolveReviewThreadInput
input requiredArgs =
    GraphQL.Engine.addField
        "threadId"
        "ID!"
        (GitHub.id.encode requiredArgs.threadId)
        (GraphQL.Engine.inputObject "ResolveReviewThreadInput")


clientMutationId :
    String -> ResolveReviewThreadInput -> ResolveReviewThreadInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId : ResolveReviewThreadInput -> ResolveReviewThreadInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


