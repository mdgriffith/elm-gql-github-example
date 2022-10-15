module GitHub.Input.SponsorableOrder exposing (SponsorableOrder, input)

{-| 
## Creating an input

@docs input, SponsorableOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.SponsorableOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias SponsorableOrder =
    GitHub.Input.SponsorableOrder


input :
    { field : GitHub.Enum.SponsorableOrderField.SponsorableOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> SponsorableOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "SponsorableOrderField!"
            (GitHub.Enum.SponsorableOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "SponsorableOrder")
        )


