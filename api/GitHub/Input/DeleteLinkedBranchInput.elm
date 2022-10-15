module GitHub.Input.DeleteLinkedBranchInput exposing (DeleteLinkedBranchInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteLinkedBranchInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteLinkedBranchInput =
    GitHub.Input.DeleteLinkedBranchInput


input : { linkedBranchId : GitHub.Id } -> DeleteLinkedBranchInput
input requiredArgs =
    GraphQL.Engine.addField
        "linkedBranchId"
        "ID!"
        (GitHub.id.encode requiredArgs.linkedBranchId)
        (GraphQL.Engine.inputObject "DeleteLinkedBranchInput")


clientMutationId : String -> DeleteLinkedBranchInput -> DeleteLinkedBranchInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : DeleteLinkedBranchInput -> DeleteLinkedBranchInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


