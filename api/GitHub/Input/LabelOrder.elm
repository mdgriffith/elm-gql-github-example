module GitHub.Input.LabelOrder exposing (LabelOrder, input)

{-| 
## Creating an input

@docs input, LabelOrder
-}


import GitHub.Enum.LabelOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias LabelOrder =
    GitHub.Input.LabelOrder


input :
    { field : GitHub.Enum.LabelOrderField.LabelOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> LabelOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "LabelOrderField!"
            (GitHub.Enum.LabelOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "LabelOrder")
        )


