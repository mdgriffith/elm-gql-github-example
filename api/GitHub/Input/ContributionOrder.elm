module GitHub.Input.ContributionOrder exposing (ContributionOrder, input)

{-| 
## Creating an input

@docs input, ContributionOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ContributionOrder =
    GitHub.Input.ContributionOrder


input :
    { direction : GitHub.Enum.OrderDirection.OrderDirection }
    -> ContributionOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.inputObject "ContributionOrder")


