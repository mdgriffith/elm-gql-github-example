module GitHub.Input.ClearLabelsFromLabelableInput exposing (ClearLabelsFromLabelableInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, ClearLabelsFromLabelableInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ClearLabelsFromLabelableInput =
    GitHub.Input.ClearLabelsFromLabelableInput


input : { labelableId : GitHub.Id } -> ClearLabelsFromLabelableInput
input requiredArgs =
    GraphQL.Engine.addField
        "labelableId"
        "ID!"
        (GitHub.id.encode requiredArgs.labelableId)
        (GraphQL.Engine.inputObject "ClearLabelsFromLabelableInput")


clientMutationId :
    String -> ClearLabelsFromLabelableInput -> ClearLabelsFromLabelableInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        ClearLabelsFromLabelableInput -> ClearLabelsFromLabelableInput
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


