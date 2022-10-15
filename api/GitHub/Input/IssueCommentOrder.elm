module GitHub.Input.IssueCommentOrder exposing (IssueCommentOrder, input)

{-| 
## Creating an input

@docs input, IssueCommentOrder
-}


import GitHub.Enum.IssueCommentOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias IssueCommentOrder =
    GitHub.Input.IssueCommentOrder


input :
    { field : GitHub.Enum.IssueCommentOrderField.IssueCommentOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> IssueCommentOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "IssueCommentOrderField!"
            (GitHub.Enum.IssueCommentOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "IssueCommentOrder")
        )


