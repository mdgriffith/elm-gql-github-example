module GitHub.Input.UnmarkDiscussionCommentAsAnswerInput exposing (UnmarkDiscussionCommentAsAnswerInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UnmarkDiscussionCommentAsAnswerInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UnmarkDiscussionCommentAsAnswerInput =
    GitHub.Input.UnmarkDiscussionCommentAsAnswerInput


input : { id : GitHub.Id } -> UnmarkDiscussionCommentAsAnswerInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "UnmarkDiscussionCommentAsAnswerInput")


clientMutationId :
    String
    -> UnmarkDiscussionCommentAsAnswerInput
    -> UnmarkDiscussionCommentAsAnswerInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UnmarkDiscussionCommentAsAnswerInput
        -> UnmarkDiscussionCommentAsAnswerInput
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


