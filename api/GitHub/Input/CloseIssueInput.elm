module GitHub.Input.CloseIssueInput exposing (CloseIssueInput, clientMutationId, input, null, stateReason)

{-| 
## Creating an input

@docs input, CloseIssueInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, stateReason
-}


import GitHub
import GitHub.Enum.IssueClosedStateReason
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CloseIssueInput =
    GitHub.Input.CloseIssueInput


input : { issueId : GitHub.Id } -> CloseIssueInput
input requiredArgs =
    GraphQL.Engine.addField
        "issueId"
        "ID!"
        (GitHub.id.encode requiredArgs.issueId)
        (GraphQL.Engine.inputObject "CloseIssueInput")


stateReason :
    GitHub.Enum.IssueClosedStateReason.IssueClosedStateReason
    -> CloseIssueInput
    -> CloseIssueInput
stateReason newArg_ inputObj_ =
    GraphQL.Engine.addField
        "stateReason"
        "IssueClosedStateReason"
        (GitHub.Enum.IssueClosedStateReason.encode newArg_)
        inputObj_


clientMutationId : String -> CloseIssueInput -> CloseIssueInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { stateReason : CloseIssueInput -> CloseIssueInput
    , clientMutationId : CloseIssueInput -> CloseIssueInput
    }
null =
    { stateReason =
        \inputObj ->
            GraphQL.Engine.addField
                "stateReason"
                "IssueClosedStateReason"
                Json.Encode.null
                inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


