module GitHub.Input.MarkPullRequestReadyForReviewInput exposing (MarkPullRequestReadyForReviewInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, MarkPullRequestReadyForReviewInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias MarkPullRequestReadyForReviewInput =
    GitHub.Input.MarkPullRequestReadyForReviewInput


input : { pullRequestId : GitHub.Id } -> MarkPullRequestReadyForReviewInput
input requiredArgs =
    GraphQL.Engine.addField
        "pullRequestId"
        "ID!"
        (GitHub.id.encode requiredArgs.pullRequestId)
        (GraphQL.Engine.inputObject "MarkPullRequestReadyForReviewInput")


clientMutationId :
    String
    -> MarkPullRequestReadyForReviewInput
    -> MarkPullRequestReadyForReviewInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        MarkPullRequestReadyForReviewInput -> MarkPullRequestReadyForReviewInput
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


