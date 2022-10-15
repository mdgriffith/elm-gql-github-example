module GitHub.Input.DeleteDiscussionCommentInput exposing (DeleteDiscussionCommentInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteDiscussionCommentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteDiscussionCommentInput =
    GitHub.Input.DeleteDiscussionCommentInput


input : { id : GitHub.Id } -> DeleteDiscussionCommentInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "DeleteDiscussionCommentInput")


clientMutationId :
    String -> DeleteDiscussionCommentInput -> DeleteDiscussionCommentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        DeleteDiscussionCommentInput -> DeleteDiscussionCommentInput
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


