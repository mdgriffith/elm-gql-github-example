module GitHub.Input.UnminimizeCommentInput exposing (UnminimizeCommentInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UnminimizeCommentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UnminimizeCommentInput =
    GitHub.Input.UnminimizeCommentInput


input : { subjectId : GitHub.Id } -> UnminimizeCommentInput
input requiredArgs =
    GraphQL.Engine.addField
        "subjectId"
        "ID!"
        (GitHub.id.encode requiredArgs.subjectId)
        (GraphQL.Engine.inputObject "UnminimizeCommentInput")


clientMutationId : String -> UnminimizeCommentInput -> UnminimizeCommentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : UnminimizeCommentInput -> UnminimizeCommentInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


