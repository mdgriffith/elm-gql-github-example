module GitHub.Input.StarOrder exposing (StarOrder, input)

{-| 
## Creating an input

@docs input, StarOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.StarOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias StarOrder =
    GitHub.Input.StarOrder


input :
    { field : GitHub.Enum.StarOrderField.StarOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> StarOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "StarOrderField!"
            (GitHub.Enum.StarOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "StarOrder")
        )


