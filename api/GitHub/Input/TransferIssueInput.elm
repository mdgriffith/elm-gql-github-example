module GitHub.Input.TransferIssueInput exposing (TransferIssueInput, clientMutationId, createLabelsIfMissing, input, null)

{-| 
## Creating an input

@docs input, TransferIssueInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, createLabelsIfMissing
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias TransferIssueInput =
    GitHub.Input.TransferIssueInput


input : { issueId : GitHub.Id, repositoryId : GitHub.Id } -> TransferIssueInput
input requiredArgs =
    GraphQL.Engine.addField
        "repositoryId"
        "ID!"
        (GitHub.id.encode requiredArgs.repositoryId)
        (GraphQL.Engine.addField
            "issueId"
            "ID!"
            (GitHub.id.encode requiredArgs.issueId)
            (GraphQL.Engine.inputObject "TransferIssueInput")
        )


createLabelsIfMissing : Bool -> TransferIssueInput -> TransferIssueInput
createLabelsIfMissing newArg_ inputObj_ =
    GraphQL.Engine.addField
        "createLabelsIfMissing"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId : String -> TransferIssueInput -> TransferIssueInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { createLabelsIfMissing : TransferIssueInput -> TransferIssueInput
    , clientMutationId : TransferIssueInput -> TransferIssueInput
    }
null =
    { createLabelsIfMissing =
        \inputObj ->
            GraphQL.Engine.addField
                "createLabelsIfMissing"
                "Boolean"
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


