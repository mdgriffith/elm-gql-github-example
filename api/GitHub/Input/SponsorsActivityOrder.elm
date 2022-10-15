module GitHub.Input.SponsorsActivityOrder exposing (SponsorsActivityOrder, input)

{-| 
## Creating an input

@docs input, SponsorsActivityOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.SponsorsActivityOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias SponsorsActivityOrder =
    GitHub.Input.SponsorsActivityOrder


input :
    { field : GitHub.Enum.SponsorsActivityOrderField.SponsorsActivityOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> SponsorsActivityOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "SponsorsActivityOrderField!"
            (GitHub.Enum.SponsorsActivityOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "SponsorsActivityOrder")
        )


