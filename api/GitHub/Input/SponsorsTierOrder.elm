module GitHub.Input.SponsorsTierOrder exposing (SponsorsTierOrder, input)

{-| 
## Creating an input

@docs input, SponsorsTierOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.SponsorsTierOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias SponsorsTierOrder =
    GitHub.Input.SponsorsTierOrder


input :
    { field : GitHub.Enum.SponsorsTierOrderField.SponsorsTierOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> SponsorsTierOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "SponsorsTierOrderField!"
            (GitHub.Enum.SponsorsTierOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "SponsorsTierOrder")
        )


