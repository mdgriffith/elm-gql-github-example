module GitHub.Input.TeamMemberOrder exposing (TeamMemberOrder, input)

{-| 
## Creating an input

@docs input, TeamMemberOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.TeamMemberOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias TeamMemberOrder =
    GitHub.Input.TeamMemberOrder


input :
    { field : GitHub.Enum.TeamMemberOrderField.TeamMemberOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> TeamMemberOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "TeamMemberOrderField!"
            (GitHub.Enum.TeamMemberOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "TeamMemberOrder")
        )


