module GitHub.Input.ReopenPullRequestInput exposing (ReopenPullRequestInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, ReopenPullRequestInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ReopenPullRequestInput =
    GitHub.Input.ReopenPullRequestInput


input : { pullRequestId : GitHub.Id } -> ReopenPullRequestInput
input requiredArgs =
    GraphQL.Engine.addField
        "pullRequestId"
        "ID!"
        (GitHub.id.encode requiredArgs.pullRequestId)
        (GraphQL.Engine.inputObject "ReopenPullRequestInput")


clientMutationId : String -> ReopenPullRequestInput -> ReopenPullRequestInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : ReopenPullRequestInput -> ReopenPullRequestInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


