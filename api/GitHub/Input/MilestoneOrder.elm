module GitHub.Input.MilestoneOrder exposing (MilestoneOrder, input)

{-| 
## Creating an input

@docs input, MilestoneOrder
-}


import GitHub.Enum.MilestoneOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias MilestoneOrder =
    GitHub.Input.MilestoneOrder


input :
    { field : GitHub.Enum.MilestoneOrderField.MilestoneOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> MilestoneOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "MilestoneOrderField!"
            (GitHub.Enum.MilestoneOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "MilestoneOrder")
        )


