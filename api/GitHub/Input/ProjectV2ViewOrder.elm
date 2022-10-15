module GitHub.Input.ProjectV2ViewOrder exposing (ProjectV2ViewOrder, input)

{-| 
## Creating an input

@docs input, ProjectV2ViewOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.ProjectV2ViewOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ProjectV2ViewOrder =
    GitHub.Input.ProjectV2ViewOrder


input :
    { field : GitHub.Enum.ProjectV2ViewOrderField.ProjectV2ViewOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> ProjectV2ViewOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "ProjectV2ViewOrderField!"
            (GitHub.Enum.ProjectV2ViewOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "ProjectV2ViewOrder")
        )


