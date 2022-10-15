module GitHub.Input.DeletePullRequestReviewInput exposing (DeletePullRequestReviewInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeletePullRequestReviewInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeletePullRequestReviewInput =
    GitHub.Input.DeletePullRequestReviewInput


input : { pullRequestReviewId : GitHub.Id } -> DeletePullRequestReviewInput
input requiredArgs =
    GraphQL.Engine.addField
        "pullRequestReviewId"
        "ID!"
        (GitHub.id.encode requiredArgs.pullRequestReviewId)
        (GraphQL.Engine.inputObject "DeletePullRequestReviewInput")


clientMutationId :
    String -> DeletePullRequestReviewInput -> DeletePullRequestReviewInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        DeletePullRequestReviewInput -> DeletePullRequestReviewInput
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


