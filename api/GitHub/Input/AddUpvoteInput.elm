module GitHub.Input.AddUpvoteInput exposing (AddUpvoteInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, AddUpvoteInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddUpvoteInput =
    GitHub.Input.AddUpvoteInput


input : { subjectId : GitHub.Id } -> AddUpvoteInput
input requiredArgs =
    GraphQL.Engine.addField
        "subjectId"
        "ID!"
        (GitHub.id.encode requiredArgs.subjectId)
        (GraphQL.Engine.inputObject "AddUpvoteInput")


clientMutationId : String -> AddUpvoteInput -> AddUpvoteInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : AddUpvoteInput -> AddUpvoteInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


