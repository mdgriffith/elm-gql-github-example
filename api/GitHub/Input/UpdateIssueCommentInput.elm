module GitHub.Input.UpdateIssueCommentInput exposing (UpdateIssueCommentInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateIssueCommentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateIssueCommentInput =
    GitHub.Input.UpdateIssueCommentInput


input : { id : GitHub.Id, body : String } -> UpdateIssueCommentInput
input requiredArgs =
    GraphQL.Engine.addField
        "body"
        "String!"
        (Json.Encode.string requiredArgs.body)
        (GraphQL.Engine.addField
            "id"
            "ID!"
            (GitHub.id.encode requiredArgs.id)
            (GraphQL.Engine.inputObject "UpdateIssueCommentInput")
        )


clientMutationId : String -> UpdateIssueCommentInput -> UpdateIssueCommentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : UpdateIssueCommentInput -> UpdateIssueCommentInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


