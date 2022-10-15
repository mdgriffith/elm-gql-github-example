module GitHub.Input.PullRequestOrder exposing (PullRequestOrder, input)

{-| 
## Creating an input

@docs input, PullRequestOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.PullRequestOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias PullRequestOrder =
    GitHub.Input.PullRequestOrder


input :
    { field : GitHub.Enum.PullRequestOrderField.PullRequestOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> PullRequestOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "PullRequestOrderField!"
            (GitHub.Enum.PullRequestOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "PullRequestOrder")
        )


