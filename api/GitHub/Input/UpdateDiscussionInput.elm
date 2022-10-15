module GitHub.Input.UpdateDiscussionInput exposing (UpdateDiscussionInput, body, categoryId, clientMutationId, input, null, title)

{-| 
## Creating an input

@docs input, UpdateDiscussionInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, categoryId, body, title
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateDiscussionInput =
    GitHub.Input.UpdateDiscussionInput


input : { discussionId : GitHub.Id } -> UpdateDiscussionInput
input requiredArgs =
    GraphQL.Engine.addField
        "discussionId"
        "ID!"
        (GitHub.id.encode requiredArgs.discussionId)
        (GraphQL.Engine.inputObject "UpdateDiscussionInput")


title : String -> UpdateDiscussionInput -> UpdateDiscussionInput
title newArg_ inputObj_ =
    GraphQL.Engine.addField
        "title"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


body : String -> UpdateDiscussionInput -> UpdateDiscussionInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


categoryId : GitHub.Id -> UpdateDiscussionInput -> UpdateDiscussionInput
categoryId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "categoryId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


clientMutationId : String -> UpdateDiscussionInput -> UpdateDiscussionInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { title : UpdateDiscussionInput -> UpdateDiscussionInput
    , body : UpdateDiscussionInput -> UpdateDiscussionInput
    , categoryId : UpdateDiscussionInput -> UpdateDiscussionInput
    , clientMutationId : UpdateDiscussionInput -> UpdateDiscussionInput
    }
null =
    { title =
        \inputObj ->
            GraphQL.Engine.addField "title" "String" Json.Encode.null inputObj
    , body =
        \inputObj ->
            GraphQL.Engine.addField "body" "String" Json.Encode.null inputObj
    , categoryId =
        \inputObj ->
            GraphQL.Engine.addField "categoryId" "ID" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


