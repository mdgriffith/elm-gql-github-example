module GitHub.Input.TeamOrder exposing (TeamOrder, input)

{-| 
## Creating an input

@docs input, TeamOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.TeamOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias TeamOrder =
    GitHub.Input.TeamOrder


input :
    { field : GitHub.Enum.TeamOrderField.TeamOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> TeamOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "TeamOrderField!"
            (GitHub.Enum.TeamOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "TeamOrder")
        )


