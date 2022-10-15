module GitHub.Input.ProjectV2FieldOrder exposing (ProjectV2FieldOrder, input)

{-| 
## Creating an input

@docs input, ProjectV2FieldOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.ProjectV2FieldOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ProjectV2FieldOrder =
    GitHub.Input.ProjectV2FieldOrder


input :
    { field : GitHub.Enum.ProjectV2FieldOrderField.ProjectV2FieldOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> ProjectV2FieldOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "ProjectV2FieldOrderField!"
            (GitHub.Enum.ProjectV2FieldOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "ProjectV2FieldOrder")
        )


