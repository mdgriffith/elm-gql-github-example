module GitHub.Input.ClearProjectV2ItemFieldValueInput exposing (ClearProjectV2ItemFieldValueInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, ClearProjectV2ItemFieldValueInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ClearProjectV2ItemFieldValueInput =
    GitHub.Input.ClearProjectV2ItemFieldValueInput


input :
    { projectId : GitHub.Id, itemId : GitHub.Id, fieldId : GitHub.Id }
    -> ClearProjectV2ItemFieldValueInput
input requiredArgs =
    GraphQL.Engine.addField
        "fieldId"
        "ID!"
        (GitHub.id.encode requiredArgs.fieldId)
        (GraphQL.Engine.addField
            "itemId"
            "ID!"
            (GitHub.id.encode requiredArgs.itemId)
            (GraphQL.Engine.addField
                "projectId"
                "ID!"
                (GitHub.id.encode requiredArgs.projectId)
                (GraphQL.Engine.inputObject "ClearProjectV2ItemFieldValueInput")
            )
        )


clientMutationId :
    String
    -> ClearProjectV2ItemFieldValueInput
    -> ClearProjectV2ItemFieldValueInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        ClearProjectV2ItemFieldValueInput -> ClearProjectV2ItemFieldValueInput
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


