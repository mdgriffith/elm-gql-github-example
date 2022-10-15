module GitHub.Input.SponsorOrder exposing (SponsorOrder, input)

{-| 
## Creating an input

@docs input, SponsorOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.SponsorOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias SponsorOrder =
    GitHub.Input.SponsorOrder


input :
    { field : GitHub.Enum.SponsorOrderField.SponsorOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> SponsorOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "SponsorOrderField!"
            (GitHub.Enum.SponsorOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "SponsorOrder")
        )


