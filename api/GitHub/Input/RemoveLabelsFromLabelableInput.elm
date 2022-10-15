module GitHub.Input.RemoveLabelsFromLabelableInput exposing (RemoveLabelsFromLabelableInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, RemoveLabelsFromLabelableInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RemoveLabelsFromLabelableInput =
    GitHub.Input.RemoveLabelsFromLabelableInput


input :
    { labelableId : GitHub.Id, labelIds : List GitHub.Id }
    -> RemoveLabelsFromLabelableInput
input requiredArgs =
    GraphQL.Engine.addField
        "labelIds"
        "[ID!]!"
        (Json.Encode.list GitHub.id.encode requiredArgs.labelIds)
        (GraphQL.Engine.addField
            "labelableId"
            "ID!"
            (GitHub.id.encode requiredArgs.labelableId)
            (GraphQL.Engine.inputObject "RemoveLabelsFromLabelableInput")
        )


clientMutationId :
    String -> RemoveLabelsFromLabelableInput -> RemoveLabelsFromLabelableInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        RemoveLabelsFromLabelableInput -> RemoveLabelsFromLabelableInput
    }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


