module GitHub.Input.RemoveUpvoteInput exposing (RemoveUpvoteInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, RemoveUpvoteInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RemoveUpvoteInput =
    GitHub.Input.RemoveUpvoteInput


input : { subjectId : GitHub.Id } -> RemoveUpvoteInput
input requiredArgs =
    GraphQL.Engine.addField
        "subjectId"
        "ID!"
        (GitHub.id.encode requiredArgs.subjectId)
        (GraphQL.Engine.inputObject "RemoveUpvoteInput")


clientMutationId : String -> RemoveUpvoteInput -> RemoveUpvoteInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : RemoveUpvoteInput -> RemoveUpvoteInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


