module GitHub.Input.UnmarkFileAsViewedInput exposing (UnmarkFileAsViewedInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UnmarkFileAsViewedInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UnmarkFileAsViewedInput =
    GitHub.Input.UnmarkFileAsViewedInput


input : { pullRequestId : GitHub.Id, path : String } -> UnmarkFileAsViewedInput
input requiredArgs =
    GraphQL.Engine.addField
        "path"
        "String!"
        (Json.Encode.string requiredArgs.path)
        (GraphQL.Engine.addField
            "pullRequestId"
            "ID!"
            (GitHub.id.encode requiredArgs.pullRequestId)
            (GraphQL.Engine.inputObject "UnmarkFileAsViewedInput")
        )


clientMutationId : String -> UnmarkFileAsViewedInput -> UnmarkFileAsViewedInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : UnmarkFileAsViewedInput -> UnmarkFileAsViewedInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


