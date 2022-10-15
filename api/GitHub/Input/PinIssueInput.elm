module GitHub.Input.PinIssueInput exposing (PinIssueInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, PinIssueInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias PinIssueInput =
    GitHub.Input.PinIssueInput


input : { issueId : GitHub.Id } -> PinIssueInput
input requiredArgs =
    GraphQL.Engine.addField
        "issueId"
        "ID!"
        (GitHub.id.encode requiredArgs.issueId)
        (GraphQL.Engine.inputObject "PinIssueInput")


clientMutationId : String -> PinIssueInput -> PinIssueInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : PinIssueInput -> PinIssueInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


