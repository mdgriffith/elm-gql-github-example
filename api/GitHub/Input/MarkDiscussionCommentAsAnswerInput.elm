module GitHub.Input.MarkDiscussionCommentAsAnswerInput exposing (MarkDiscussionCommentAsAnswerInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, MarkDiscussionCommentAsAnswerInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias MarkDiscussionCommentAsAnswerInput =
    GitHub.Input.MarkDiscussionCommentAsAnswerInput


input : { id : GitHub.Id } -> MarkDiscussionCommentAsAnswerInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "MarkDiscussionCommentAsAnswerInput")


clientMutationId :
    String
    -> MarkDiscussionCommentAsAnswerInput
    -> MarkDiscussionCommentAsAnswerInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        MarkDiscussionCommentAsAnswerInput -> MarkDiscussionCommentAsAnswerInput
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


