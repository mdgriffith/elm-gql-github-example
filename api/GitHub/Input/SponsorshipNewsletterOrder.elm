module GitHub.Input.SponsorshipNewsletterOrder exposing (SponsorshipNewsletterOrder, input)

{-| 
## Creating an input

@docs input, SponsorshipNewsletterOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.SponsorshipNewsletterOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias SponsorshipNewsletterOrder =
    GitHub.Input.SponsorshipNewsletterOrder


input :
    { field :
        GitHub.Enum.SponsorshipNewsletterOrderField.SponsorshipNewsletterOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> SponsorshipNewsletterOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "SponsorshipNewsletterOrderField!"
            (GitHub.Enum.SponsorshipNewsletterOrderField.encode
                requiredArgs.field
            )
            (GraphQL.Engine.inputObject "SponsorshipNewsletterOrder")
        )


