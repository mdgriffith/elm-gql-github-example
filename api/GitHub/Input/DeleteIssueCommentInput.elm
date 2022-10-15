module GitHub.Input.DeleteIssueCommentInput exposing (DeleteIssueCommentInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteIssueCommentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteIssueCommentInput =
    GitHub.Input.DeleteIssueCommentInput


input : { id : GitHub.Id } -> DeleteIssueCommentInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "DeleteIssueCommentInput")


clientMutationId : String -> DeleteIssueCommentInput -> DeleteIssueCommentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : DeleteIssueCommentInput -> DeleteIssueCommentInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


