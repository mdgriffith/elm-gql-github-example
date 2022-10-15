module GitHub.Input.ClosePullRequestInput exposing (ClosePullRequestInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, ClosePullRequestInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ClosePullRequestInput =
    GitHub.Input.ClosePullRequestInput


input : { pullRequestId : GitHub.Id } -> ClosePullRequestInput
input requiredArgs =
    GraphQL.Engine.addField
        "pullRequestId"
        "ID!"
        (GitHub.id.encode requiredArgs.pullRequestId)
        (GraphQL.Engine.inputObject "ClosePullRequestInput")


clientMutationId : String -> ClosePullRequestInput -> ClosePullRequestInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : ClosePullRequestInput -> ClosePullRequestInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


