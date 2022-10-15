module GitHub.Input.AddLabelsToLabelableInput exposing (AddLabelsToLabelableInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, AddLabelsToLabelableInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddLabelsToLabelableInput =
    GitHub.Input.AddLabelsToLabelableInput


input :
    { labelableId : GitHub.Id, labelIds : List GitHub.Id }
    -> AddLabelsToLabelableInput
input requiredArgs =
    GraphQL.Engine.addField
        "labelIds"
        "[ID!]!"
        (Json.Encode.list GitHub.id.encode requiredArgs.labelIds)
        (GraphQL.Engine.addField
            "labelableId"
            "ID!"
            (GitHub.id.encode requiredArgs.labelableId)
            (GraphQL.Engine.inputObject "AddLabelsToLabelableInput")
        )


clientMutationId :
    String -> AddLabelsToLabelableInput -> AddLabelsToLabelableInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId : AddLabelsToLabelableInput -> AddLabelsToLabelableInput
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


