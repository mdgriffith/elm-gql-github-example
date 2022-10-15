module GitHub.Input.CommitContributionOrder exposing (CommitContributionOrder, input)

{-| 
## Creating an input

@docs input, CommitContributionOrder
-}


import GitHub.Enum.CommitContributionOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CommitContributionOrder =
    GitHub.Input.CommitContributionOrder


input :
    { field :
        GitHub.Enum.CommitContributionOrderField.CommitContributionOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> CommitContributionOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "CommitContributionOrderField!"
            (GitHub.Enum.CommitContributionOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "CommitContributionOrder")
        )


