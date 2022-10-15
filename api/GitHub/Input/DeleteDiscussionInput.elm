module GitHub.Input.DeleteDiscussionInput exposing (DeleteDiscussionInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteDiscussionInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteDiscussionInput =
    GitHub.Input.DeleteDiscussionInput


input : { id : GitHub.Id } -> DeleteDiscussionInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "DeleteDiscussionInput")


clientMutationId : String -> DeleteDiscussionInput -> DeleteDiscussionInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : DeleteDiscussionInput -> DeleteDiscussionInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


