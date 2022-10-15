module GitHub.Input.OrgEnterpriseOwnerOrder exposing (OrgEnterpriseOwnerOrder, input)

{-| 
## Creating an input

@docs input, OrgEnterpriseOwnerOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.OrgEnterpriseOwnerOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias OrgEnterpriseOwnerOrder =
    GitHub.Input.OrgEnterpriseOwnerOrder


input :
    { field :
        GitHub.Enum.OrgEnterpriseOwnerOrderField.OrgEnterpriseOwnerOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> OrgEnterpriseOwnerOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "OrgEnterpriseOwnerOrderField!"
            (GitHub.Enum.OrgEnterpriseOwnerOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "OrgEnterpriseOwnerOrder")
        )


