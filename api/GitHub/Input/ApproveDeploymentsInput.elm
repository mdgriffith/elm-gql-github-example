module GitHub.Input.ApproveDeploymentsInput exposing (ApproveDeploymentsInput, clientMutationId, comment, input, null)

{-| 
## Creating an input

@docs input, ApproveDeploymentsInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, comment
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ApproveDeploymentsInput =
    GitHub.Input.ApproveDeploymentsInput


input :
    { workflowRunId : GitHub.Id, environmentIds : List GitHub.Id }
    -> ApproveDeploymentsInput
input requiredArgs =
    GraphQL.Engine.addField
        "environmentIds"
        "[ID!]!"
        (Json.Encode.list GitHub.id.encode requiredArgs.environmentIds)
        (GraphQL.Engine.addField
            "workflowRunId"
            "ID!"
            (GitHub.id.encode requiredArgs.workflowRunId)
            (GraphQL.Engine.inputObject "ApproveDeploymentsInput")
        )


comment : String -> ApproveDeploymentsInput -> ApproveDeploymentsInput
comment newArg_ inputObj_ =
    GraphQL.Engine.addField
        "comment"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId : String -> ApproveDeploymentsInput -> ApproveDeploymentsInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { comment : ApproveDeploymentsInput -> ApproveDeploymentsInput
    , clientMutationId : ApproveDeploymentsInput -> ApproveDeploymentsInput
    }
null =
    { comment =
        \inputObj ->
            GraphQL.Engine.addField "comment" "String" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


