module GitHub.Input.DisablePullRequestAutoMergeInput exposing (DisablePullRequestAutoMergeInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DisablePullRequestAutoMergeInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DisablePullRequestAutoMergeInput =
    GitHub.Input.DisablePullRequestAutoMergeInput


input : { pullRequestId : GitHub.Id } -> DisablePullRequestAutoMergeInput
input requiredArgs =
    GraphQL.Engine.addField
        "pullRequestId"
        "ID!"
        (GitHub.id.encode requiredArgs.pullRequestId)
        (GraphQL.Engine.inputObject "DisablePullRequestAutoMergeInput")


clientMutationId :
    String
    -> DisablePullRequestAutoMergeInput
    -> DisablePullRequestAutoMergeInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        DisablePullRequestAutoMergeInput -> DisablePullRequestAutoMergeInput
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


