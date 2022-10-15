module GitHub.Input.RepositoryOrder exposing (RepositoryOrder, input)

{-| 
## Creating an input

@docs input, RepositoryOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.RepositoryOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RepositoryOrder =
    GitHub.Input.RepositoryOrder


input :
    { field : GitHub.Enum.RepositoryOrderField.RepositoryOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> RepositoryOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "RepositoryOrderField!"
            (GitHub.Enum.RepositoryOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "RepositoryOrder")
        )


