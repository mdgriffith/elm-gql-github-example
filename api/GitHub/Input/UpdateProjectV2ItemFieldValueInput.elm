module GitHub.Input.UpdateProjectV2ItemFieldValueInput exposing (UpdateProjectV2ItemFieldValueInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateProjectV2ItemFieldValueInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Decode
import Json.Encode


type alias UpdateProjectV2ItemFieldValueInput =
    GitHub.Input.UpdateProjectV2ItemFieldValueInput


input :
    { projectId : GitHub.Id
    , itemId : GitHub.Id
    , fieldId : GitHub.Id
    , value : GitHub.Input.ProjectV2FieldValue
    }
    -> UpdateProjectV2ItemFieldValueInput
input requiredArgs =
    GraphQL.Engine.addField
        "value"
        "ProjectV2FieldValue!"
        (GraphQL.Engine.encodeInputObjectAsJson requiredArgs.value)
        (GraphQL.Engine.addField
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
                    (GraphQL.Engine.inputObject
                        "UpdateProjectV2ItemFieldValueInput"
                    )
                )
            )
        )


clientMutationId :
    String
    -> UpdateProjectV2ItemFieldValueInput
    -> UpdateProjectV2ItemFieldValueInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateProjectV2ItemFieldValueInput -> UpdateProjectV2ItemFieldValueInput
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


