module GitHub.Input.DeletePullRequestReviewCommentInput exposing (DeletePullRequestReviewCommentInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeletePullRequestReviewCommentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeletePullRequestReviewCommentInput =
    GitHub.Input.DeletePullRequestReviewCommentInput


input : { id : GitHub.Id } -> DeletePullRequestReviewCommentInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "DeletePullRequestReviewCommentInput")


clientMutationId :
    String
    -> DeletePullRequestReviewCommentInput
    -> DeletePullRequestReviewCommentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        DeletePullRequestReviewCommentInput
        -> DeletePullRequestReviewCommentInput
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


