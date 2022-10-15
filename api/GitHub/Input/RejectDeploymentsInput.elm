module GitHub.Input.RejectDeploymentsInput exposing (RejectDeploymentsInput, clientMutationId, comment, input, null)

{-| 
## Creating an input

@docs input, RejectDeploymentsInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, comment
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RejectDeploymentsInput =
    GitHub.Input.RejectDeploymentsInput


input :
    { workflowRunId : GitHub.Id, environmentIds : List GitHub.Id }
    -> RejectDeploymentsInput
input requiredArgs =
    GraphQL.Engine.addField
        "environmentIds"
        "[ID!]!"
        (Json.Encode.list GitHub.id.encode requiredArgs.environmentIds)
        (GraphQL.Engine.addField
            "workflowRunId"
            "ID!"
            (GitHub.id.encode requiredArgs.workflowRunId)
            (GraphQL.Engine.inputObject "RejectDeploymentsInput")
        )


comment : String -> RejectDeploymentsInput -> RejectDeploymentsInput
comment newArg_ inputObj_ =
    GraphQL.Engine.addField
        "comment"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId : String -> RejectDeploymentsInput -> RejectDeploymentsInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { comment : RejectDeploymentsInput -> RejectDeploymentsInput
    , clientMutationId : RejectDeploymentsInput -> RejectDeploymentsInput
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


