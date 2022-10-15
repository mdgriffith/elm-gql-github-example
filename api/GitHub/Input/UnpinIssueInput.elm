module GitHub.Input.UnpinIssueInput exposing (UnpinIssueInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UnpinIssueInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UnpinIssueInput =
    GitHub.Input.UnpinIssueInput


input : { issueId : GitHub.Id } -> UnpinIssueInput
input requiredArgs =
    GraphQL.Engine.addField
        "issueId"
        "ID!"
        (GitHub.id.encode requiredArgs.issueId)
        (GraphQL.Engine.inputObject "UnpinIssueInput")


clientMutationId : String -> UnpinIssueInput -> UnpinIssueInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : UnpinIssueInput -> UnpinIssueInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


