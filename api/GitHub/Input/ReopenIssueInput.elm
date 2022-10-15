module GitHub.Input.ReopenIssueInput exposing (ReopenIssueInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, ReopenIssueInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ReopenIssueInput =
    GitHub.Input.ReopenIssueInput


input : { issueId : GitHub.Id } -> ReopenIssueInput
input requiredArgs =
    GraphQL.Engine.addField
        "issueId"
        "ID!"
        (GitHub.id.encode requiredArgs.issueId)
        (GraphQL.Engine.inputObject "ReopenIssueInput")


clientMutationId : String -> ReopenIssueInput -> ReopenIssueInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : ReopenIssueInput -> ReopenIssueInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


