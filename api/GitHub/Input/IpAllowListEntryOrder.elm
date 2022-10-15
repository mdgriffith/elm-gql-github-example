module GitHub.Input.IpAllowListEntryOrder exposing (IpAllowListEntryOrder, input)

{-| 
## Creating an input

@docs input, IpAllowListEntryOrder
-}


import GitHub.Enum.IpAllowListEntryOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias IpAllowListEntryOrder =
    GitHub.Input.IpAllowListEntryOrder


input :
    { field : GitHub.Enum.IpAllowListEntryOrderField.IpAllowListEntryOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> IpAllowListEntryOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "IpAllowListEntryOrderField!"
            (GitHub.Enum.IpAllowListEntryOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "IpAllowListEntryOrder")
        )


