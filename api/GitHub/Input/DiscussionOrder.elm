module GitHub.Input.DiscussionOrder exposing (DiscussionOrder, input)

{-| 
## Creating an input

@docs input, DiscussionOrder
-}


import GitHub.Enum.DiscussionOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DiscussionOrder =
    GitHub.Input.DiscussionOrder


input :
    { field : GitHub.Enum.DiscussionOrderField.DiscussionOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> DiscussionOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "DiscussionOrderField!"
            (GitHub.Enum.DiscussionOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "DiscussionOrder")
        )


