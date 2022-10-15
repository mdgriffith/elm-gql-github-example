module GitHub.Input.UpdatePullRequestReviewCommentInput exposing (UpdatePullRequestReviewCommentInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdatePullRequestReviewCommentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdatePullRequestReviewCommentInput =
    GitHub.Input.UpdatePullRequestReviewCommentInput


input :
    { pullRequestReviewCommentId : GitHub.Id, body : String }
    -> UpdatePullRequestReviewCommentInput
input requiredArgs =
    GraphQL.Engine.addField
        "body"
        "String!"
        (Json.Encode.string requiredArgs.body)
        (GraphQL.Engine.addField
            "pullRequestReviewCommentId"
            "ID!"
            (GitHub.id.encode requiredArgs.pullRequestReviewCommentId)
            (GraphQL.Engine.inputObject "UpdatePullRequestReviewCommentInput")
        )


clientMutationId :
    String
    -> UpdatePullRequestReviewCommentInput
    -> UpdatePullRequestReviewCommentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdatePullRequestReviewCommentInput
        -> UpdatePullRequestReviewCommentInput
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


