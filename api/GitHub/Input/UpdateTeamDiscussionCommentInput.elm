module GitHub.Input.UpdateTeamDiscussionCommentInput exposing (UpdateTeamDiscussionCommentInput, bodyVersion, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateTeamDiscussionCommentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, bodyVersion
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateTeamDiscussionCommentInput =
    GitHub.Input.UpdateTeamDiscussionCommentInput


input : { id : GitHub.Id, body : String } -> UpdateTeamDiscussionCommentInput
input requiredArgs =
    GraphQL.Engine.addField
        "body"
        "String!"
        (Json.Encode.string requiredArgs.body)
        (GraphQL.Engine.addField
            "id"
            "ID!"
            (GitHub.id.encode requiredArgs.id)
            (GraphQL.Engine.inputObject "UpdateTeamDiscussionCommentInput")
        )


bodyVersion :
    String
    -> UpdateTeamDiscussionCommentInput
    -> UpdateTeamDiscussionCommentInput
bodyVersion newArg_ inputObj_ =
    GraphQL.Engine.addField
        "bodyVersion"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId :
    String
    -> UpdateTeamDiscussionCommentInput
    -> UpdateTeamDiscussionCommentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { bodyVersion :
        UpdateTeamDiscussionCommentInput -> UpdateTeamDiscussionCommentInput
    , clientMutationId :
        UpdateTeamDiscussionCommentInput -> UpdateTeamDiscussionCommentInput
    }
null =
    { bodyVersion =
        \inputObj ->
            GraphQL.Engine.addField
                "bodyVersion"
                "String"
                Json.Encode.null
                inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


