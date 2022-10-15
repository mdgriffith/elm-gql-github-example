module GitHub.Input.VerifiableDomainOrder exposing (VerifiableDomainOrder, input)

{-| 
## Creating an input

@docs input, VerifiableDomainOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.VerifiableDomainOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias VerifiableDomainOrder =
    GitHub.Input.VerifiableDomainOrder


input :
    { field : GitHub.Enum.VerifiableDomainOrderField.VerifiableDomainOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> VerifiableDomainOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "VerifiableDomainOrderField!"
            (GitHub.Enum.VerifiableDomainOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "VerifiableDomainOrder")
        )


