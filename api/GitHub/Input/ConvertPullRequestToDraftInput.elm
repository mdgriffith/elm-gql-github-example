module GitHub.Input.ConvertPullRequestToDraftInput exposing (ConvertPullRequestToDraftInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, ConvertPullRequestToDraftInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ConvertPullRequestToDraftInput =
    GitHub.Input.ConvertPullRequestToDraftInput


input : { pullRequestId : GitHub.Id } -> ConvertPullRequestToDraftInput
input requiredArgs =
    GraphQL.Engine.addField
        "pullRequestId"
        "ID!"
        (GitHub.id.encode requiredArgs.pullRequestId)
        (GraphQL.Engine.inputObject "ConvertPullRequestToDraftInput")


clientMutationId :
    String -> ConvertPullRequestToDraftInput -> ConvertPullRequestToDraftInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        ConvertPullRequestToDraftInput -> ConvertPullRequestToDraftInput
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


