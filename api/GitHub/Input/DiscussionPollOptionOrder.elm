module GitHub.Input.DiscussionPollOptionOrder exposing (DiscussionPollOptionOrder, input)

{-| 
## Creating an input

@docs input, DiscussionPollOptionOrder
-}


import GitHub.Enum.DiscussionPollOptionOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DiscussionPollOptionOrder =
    GitHub.Input.DiscussionPollOptionOrder


input :
    { field :
        GitHub.Enum.DiscussionPollOptionOrderField.DiscussionPollOptionOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> DiscussionPollOptionOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "DiscussionPollOptionOrderField!"
            (GitHub.Enum.DiscussionPollOptionOrderField.encode
                requiredArgs.field
            )
            (GraphQL.Engine.inputObject "DiscussionPollOptionOrder")
        )


