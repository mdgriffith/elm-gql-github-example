module GitHub.Input.EnterpriseServerUserAccountOrder exposing (EnterpriseServerUserAccountOrder, input)

{-| 
## Creating an input

@docs input, EnterpriseServerUserAccountOrder
-}


import GitHub.Enum.EnterpriseServerUserAccountOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias EnterpriseServerUserAccountOrder =
    GitHub.Input.EnterpriseServerUserAccountOrder


input :
    { field :
        GitHub.Enum.EnterpriseServerUserAccountOrderField.EnterpriseServerUserAccountOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> EnterpriseServerUserAccountOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "EnterpriseServerUserAccountOrderField!"
            (GitHub.Enum.EnterpriseServerUserAccountOrderField.encode
                requiredArgs.field
            )
            (GraphQL.Engine.inputObject "EnterpriseServerUserAccountOrder")
        )


