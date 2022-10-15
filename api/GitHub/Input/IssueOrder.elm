module GitHub.Input.IssueOrder exposing (IssueOrder, input)

{-| 
## Creating an input

@docs input, IssueOrder
-}


import GitHub.Enum.IssueOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias IssueOrder =
    GitHub.Input.IssueOrder


input :
    { field : GitHub.Enum.IssueOrderField.IssueOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> IssueOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "IssueOrderField!"
            (GitHub.Enum.IssueOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "IssueOrder")
        )


