module GitHub.Input.AddDiscussionCommentInput exposing (AddDiscussionCommentInput, clientMutationId, input, null, replyToId)

{-| 
## Creating an input

@docs input, AddDiscussionCommentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, replyToId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddDiscussionCommentInput =
    GitHub.Input.AddDiscussionCommentInput


input : { discussionId : GitHub.Id, body : String } -> AddDiscussionCommentInput
input requiredArgs =
    GraphQL.Engine.addField
        "body"
        "String!"
        (Json.Encode.string requiredArgs.body)
        (GraphQL.Engine.addField
            "discussionId"
            "ID!"
            (GitHub.id.encode requiredArgs.discussionId)
            (GraphQL.Engine.inputObject "AddDiscussionCommentInput")
        )


replyToId : GitHub.Id -> AddDiscussionCommentInput -> AddDiscussionCommentInput
replyToId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "replyToId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


clientMutationId :
    String -> AddDiscussionCommentInput -> AddDiscussionCommentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { replyToId : AddDiscussionCommentInput -> AddDiscussionCommentInput
    , clientMutationId : AddDiscussionCommentInput -> AddDiscussionCommentInput
    }
null =
    { replyToId =
        \inputObj ->
            GraphQL.Engine.addField "replyToId" "ID" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


