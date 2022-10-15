module GitHub.Input.UpdatePullRequestReviewInput exposing (UpdatePullRequestReviewInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdatePullRequestReviewInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdatePullRequestReviewInput =
    GitHub.Input.UpdatePullRequestReviewInput


input :
    { pullRequestReviewId : GitHub.Id, body : String }
    -> UpdatePullRequestReviewInput
input requiredArgs =
    GraphQL.Engine.addField
        "body"
        "String!"
        (Json.Encode.string requiredArgs.body)
        (GraphQL.Engine.addField
            "pullRequestReviewId"
            "ID!"
            (GitHub.id.encode requiredArgs.pullRequestReviewId)
            (GraphQL.Engine.inputObject "UpdatePullRequestReviewInput")
        )


clientMutationId :
    String -> UpdatePullRequestReviewInput -> UpdatePullRequestReviewInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdatePullRequestReviewInput -> UpdatePullRequestReviewInput
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


