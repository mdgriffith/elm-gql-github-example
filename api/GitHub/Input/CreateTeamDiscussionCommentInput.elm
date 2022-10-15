module GitHub.Input.CreateTeamDiscussionCommentInput exposing (CreateTeamDiscussionCommentInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, CreateTeamDiscussionCommentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateTeamDiscussionCommentInput =
    GitHub.Input.CreateTeamDiscussionCommentInput


input :
    { discussionId : GitHub.Id, body : String }
    -> CreateTeamDiscussionCommentInput
input requiredArgs =
    GraphQL.Engine.addField
        "body"
        "String!"
        (Json.Encode.string requiredArgs.body)
        (GraphQL.Engine.addField
            "discussionId"
            "ID!"
            (GitHub.id.encode requiredArgs.discussionId)
            (GraphQL.Engine.inputObject "CreateTeamDiscussionCommentInput")
        )


clientMutationId :
    String
    -> CreateTeamDiscussionCommentInput
    -> CreateTeamDiscussionCommentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        CreateTeamDiscussionCommentInput -> CreateTeamDiscussionCommentInput
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


