module GitHub.Input.TeamDiscussionCommentOrder exposing (TeamDiscussionCommentOrder, input)

{-| 
## Creating an input

@docs input, TeamDiscussionCommentOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.TeamDiscussionCommentOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias TeamDiscussionCommentOrder =
    GitHub.Input.TeamDiscussionCommentOrder


input :
    { field :
        GitHub.Enum.TeamDiscussionCommentOrderField.TeamDiscussionCommentOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> TeamDiscussionCommentOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "TeamDiscussionCommentOrderField!"
            (GitHub.Enum.TeamDiscussionCommentOrderField.encode
                requiredArgs.field
            )
            (GraphQL.Engine.inputObject "TeamDiscussionCommentOrder")
        )


