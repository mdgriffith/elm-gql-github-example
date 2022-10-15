module GitHub.Input.ConvertProjectCardNoteToIssueInput exposing (ConvertProjectCardNoteToIssueInput, body, clientMutationId, input, null, title)

{-| 
## Creating an input

@docs input, ConvertProjectCardNoteToIssueInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, body, title
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ConvertProjectCardNoteToIssueInput =
    GitHub.Input.ConvertProjectCardNoteToIssueInput


input :
    { projectCardId : GitHub.Id, repositoryId : GitHub.Id }
    -> ConvertProjectCardNoteToIssueInput
input requiredArgs =
    GraphQL.Engine.addField
        "repositoryId"
        "ID!"
        (GitHub.id.encode requiredArgs.repositoryId)
        (GraphQL.Engine.addField
            "projectCardId"
            "ID!"
            (GitHub.id.encode requiredArgs.projectCardId)
            (GraphQL.Engine.inputObject "ConvertProjectCardNoteToIssueInput")
        )


title :
    String
    -> ConvertProjectCardNoteToIssueInput
    -> ConvertProjectCardNoteToIssueInput
title newArg_ inputObj_ =
    GraphQL.Engine.addField
        "title"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


body :
    String
    -> ConvertProjectCardNoteToIssueInput
    -> ConvertProjectCardNoteToIssueInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId :
    String
    -> ConvertProjectCardNoteToIssueInput
    -> ConvertProjectCardNoteToIssueInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { title :
        ConvertProjectCardNoteToIssueInput -> ConvertProjectCardNoteToIssueInput
    , body :
        ConvertProjectCardNoteToIssueInput -> ConvertProjectCardNoteToIssueInput
    , clientMutationId :
        ConvertProjectCardNoteToIssueInput -> ConvertProjectCardNoteToIssueInput
    }
null =
    { title =
        \inputObj ->
            GraphQL.Engine.addField "title" "String" Json.Encode.null inputObj
    , body =
        \inputObj ->
            GraphQL.Engine.addField "body" "String" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


