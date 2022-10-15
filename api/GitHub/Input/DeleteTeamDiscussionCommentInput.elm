module GitHub.Input.DeleteTeamDiscussionCommentInput exposing (DeleteTeamDiscussionCommentInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteTeamDiscussionCommentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteTeamDiscussionCommentInput =
    GitHub.Input.DeleteTeamDiscussionCommentInput


input : { id : GitHub.Id } -> DeleteTeamDiscussionCommentInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "DeleteTeamDiscussionCommentInput")


clientMutationId :
    String
    -> DeleteTeamDiscussionCommentInput
    -> DeleteTeamDiscussionCommentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        DeleteTeamDiscussionCommentInput -> DeleteTeamDiscussionCommentInput
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


