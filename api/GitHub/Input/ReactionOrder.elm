module GitHub.Input.ReactionOrder exposing (ReactionOrder, input)

{-| 
## Creating an input

@docs input, ReactionOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.ReactionOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ReactionOrder =
    GitHub.Input.ReactionOrder


input :
    { field : GitHub.Enum.ReactionOrderField.ReactionOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> ReactionOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "ReactionOrderField!"
            (GitHub.Enum.ReactionOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "ReactionOrder")
        )


