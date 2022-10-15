module GitHub.Input.TeamDiscussionOrder exposing (TeamDiscussionOrder, input)

{-| 
## Creating an input

@docs input, TeamDiscussionOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.TeamDiscussionOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias TeamDiscussionOrder =
    GitHub.Input.TeamDiscussionOrder


input :
    { field : GitHub.Enum.TeamDiscussionOrderField.TeamDiscussionOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> TeamDiscussionOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "TeamDiscussionOrderField!"
            (GitHub.Enum.TeamDiscussionOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "TeamDiscussionOrder")
        )


