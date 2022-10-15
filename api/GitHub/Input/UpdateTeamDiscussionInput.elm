module GitHub.Input.UpdateTeamDiscussionInput exposing (UpdateTeamDiscussionInput, body, bodyVersion, clientMutationId, input, null, pinned, title)

{-| 
## Creating an input

@docs input, UpdateTeamDiscussionInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, pinned, bodyVersion, body, title
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateTeamDiscussionInput =
    GitHub.Input.UpdateTeamDiscussionInput


input : { id : GitHub.Id } -> UpdateTeamDiscussionInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "UpdateTeamDiscussionInput")


title : String -> UpdateTeamDiscussionInput -> UpdateTeamDiscussionInput
title newArg_ inputObj_ =
    GraphQL.Engine.addField
        "title"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


body : String -> UpdateTeamDiscussionInput -> UpdateTeamDiscussionInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


bodyVersion : String -> UpdateTeamDiscussionInput -> UpdateTeamDiscussionInput
bodyVersion newArg_ inputObj_ =
    GraphQL.Engine.addField
        "bodyVersion"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


pinned : Bool -> UpdateTeamDiscussionInput -> UpdateTeamDiscussionInput
pinned newArg_ inputObj_ =
    GraphQL.Engine.addField
        "pinned"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId :
    String -> UpdateTeamDiscussionInput -> UpdateTeamDiscussionInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { title : UpdateTeamDiscussionInput -> UpdateTeamDiscussionInput
    , body : UpdateTeamDiscussionInput -> UpdateTeamDiscussionInput
    , bodyVersion : UpdateTeamDiscussionInput -> UpdateTeamDiscussionInput
    , pinned : UpdateTeamDiscussionInput -> UpdateTeamDiscussionInput
    , clientMutationId : UpdateTeamDiscussionInput -> UpdateTeamDiscussionInput
    }
null =
    { title =
        \inputObj ->
            GraphQL.Engine.addField "title" "String" Json.Encode.null inputObj
    , body =
        \inputObj ->
            GraphQL.Engine.addField "body" "String" Json.Encode.null inputObj
    , bodyVersion =
        \inputObj ->
            GraphQL.Engine.addField
                "bodyVersion"
                "String"
                Json.Encode.null
                inputObj
    , pinned =
        \inputObj ->
            GraphQL.Engine.addField "pinned" "Boolean" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


