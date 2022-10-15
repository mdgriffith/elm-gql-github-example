module GitHub.Input.SponsorshipOrder exposing (SponsorshipOrder, input)

{-| 
## Creating an input

@docs input, SponsorshipOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.SponsorshipOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias SponsorshipOrder =
    GitHub.Input.SponsorshipOrder


input :
    { field : GitHub.Enum.SponsorshipOrderField.SponsorshipOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> SponsorshipOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "SponsorshipOrderField!"
            (GitHub.Enum.SponsorshipOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "SponsorshipOrder")
        )


