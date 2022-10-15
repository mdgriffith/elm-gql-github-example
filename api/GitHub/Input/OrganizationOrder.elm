module GitHub.Input.OrganizationOrder exposing (OrganizationOrder, input)

{-| 
## Creating an input

@docs input, OrganizationOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.OrganizationOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias OrganizationOrder =
    GitHub.Input.OrganizationOrder


input :
    { field : GitHub.Enum.OrganizationOrderField.OrganizationOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> OrganizationOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "OrganizationOrderField!"
            (GitHub.Enum.OrganizationOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "OrganizationOrder")
        )


