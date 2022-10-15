module GitHub.Input.MarkFileAsViewedInput exposing (MarkFileAsViewedInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, MarkFileAsViewedInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias MarkFileAsViewedInput =
    GitHub.Input.MarkFileAsViewedInput


input : { pullRequestId : GitHub.Id, path : String } -> MarkFileAsViewedInput
input requiredArgs =
    GraphQL.Engine.addField
        "path"
        "String!"
        (Json.Encode.string requiredArgs.path)
        (GraphQL.Engine.addField
            "pullRequestId"
            "ID!"
            (GitHub.id.encode requiredArgs.pullRequestId)
            (GraphQL.Engine.inputObject "MarkFileAsViewedInput")
        )


clientMutationId : String -> MarkFileAsViewedInput -> MarkFileAsViewedInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : MarkFileAsViewedInput -> MarkFileAsViewedInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


