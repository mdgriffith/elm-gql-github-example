module GitHub.Input.SecurityAdvisoryOrder exposing (SecurityAdvisoryOrder, input)

{-| 
## Creating an input

@docs input, SecurityAdvisoryOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.SecurityAdvisoryOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias SecurityAdvisoryOrder =
    GitHub.Input.SecurityAdvisoryOrder


input :
    { field : GitHub.Enum.SecurityAdvisoryOrderField.SecurityAdvisoryOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> SecurityAdvisoryOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "SecurityAdvisoryOrderField!"
            (GitHub.Enum.SecurityAdvisoryOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "SecurityAdvisoryOrder")
        )


