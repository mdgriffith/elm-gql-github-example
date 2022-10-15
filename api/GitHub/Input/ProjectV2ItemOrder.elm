module GitHub.Input.ProjectV2ItemOrder exposing (ProjectV2ItemOrder, input)

{-| 
## Creating an input

@docs input, ProjectV2ItemOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.ProjectV2ItemOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ProjectV2ItemOrder =
    GitHub.Input.ProjectV2ItemOrder


input :
    { field : GitHub.Enum.ProjectV2ItemOrderField.ProjectV2ItemOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> ProjectV2ItemOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "ProjectV2ItemOrderField!"
            (GitHub.Enum.ProjectV2ItemOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "ProjectV2ItemOrder")
        )


