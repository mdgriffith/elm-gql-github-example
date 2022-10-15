module GitHub.Input.UpdateDiscussionCommentInput exposing (UpdateDiscussionCommentInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateDiscussionCommentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateDiscussionCommentInput =
    GitHub.Input.UpdateDiscussionCommentInput


input : { commentId : GitHub.Id, body : String } -> UpdateDiscussionCommentInput
input requiredArgs =
    GraphQL.Engine.addField
        "body"
        "String!"
        (Json.Encode.string requiredArgs.body)
        (GraphQL.Engine.addField
            "commentId"
            "ID!"
            (GitHub.id.encode requiredArgs.commentId)
            (GraphQL.Engine.inputObject "UpdateDiscussionCommentInput")
        )


clientMutationId :
    String -> UpdateDiscussionCommentInput -> UpdateDiscussionCommentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateDiscussionCommentInput -> UpdateDiscussionCommentInput
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


