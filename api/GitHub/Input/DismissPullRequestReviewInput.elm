module GitHub.Input.DismissPullRequestReviewInput exposing (DismissPullRequestReviewInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DismissPullRequestReviewInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DismissPullRequestReviewInput =
    GitHub.Input.DismissPullRequestReviewInput


input :
    { pullRequestReviewId : GitHub.Id, message : String }
    -> DismissPullRequestReviewInput
input requiredArgs =
    GraphQL.Engine.addField
        "message"
        "String!"
        (Json.Encode.string requiredArgs.message)
        (GraphQL.Engine.addField
            "pullRequestReviewId"
            "ID!"
            (GitHub.id.encode requiredArgs.pullRequestReviewId)
            (GraphQL.Engine.inputObject "DismissPullRequestReviewInput")
        )


clientMutationId :
    String -> DismissPullRequestReviewInput -> DismissPullRequestReviewInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        DismissPullRequestReviewInput -> DismissPullRequestReviewInput
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


