module GitHub.Input.TeamRepositoryOrder exposing (TeamRepositoryOrder, input)

{-| 
## Creating an input

@docs input, TeamRepositoryOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.TeamRepositoryOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias TeamRepositoryOrder =
    GitHub.Input.TeamRepositoryOrder


input :
    { field : GitHub.Enum.TeamRepositoryOrderField.TeamRepositoryOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> TeamRepositoryOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "TeamRepositoryOrderField!"
            (GitHub.Enum.TeamRepositoryOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "TeamRepositoryOrder")
        )


