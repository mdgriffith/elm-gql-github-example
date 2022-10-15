module GitHub.Input.AddCommentInput exposing (AddCommentInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, AddCommentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddCommentInput =
    GitHub.Input.AddCommentInput


input : { subjectId : GitHub.Id, body : String } -> AddCommentInput
input requiredArgs =
    GraphQL.Engine.addField
        "body"
        "String!"
        (Json.Encode.string requiredArgs.body)
        (GraphQL.Engine.addField
            "subjectId"
            "ID!"
            (GitHub.id.encode requiredArgs.subjectId)
            (GraphQL.Engine.inputObject "AddCommentInput")
        )


clientMutationId : String -> AddCommentInput -> AddCommentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : AddCommentInput -> AddCommentInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


