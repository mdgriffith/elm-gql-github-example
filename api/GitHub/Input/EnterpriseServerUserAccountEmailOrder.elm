module GitHub.Input.EnterpriseServerUserAccountEmailOrder exposing (EnterpriseServerUserAccountEmailOrder, input)

{-| 
## Creating an input

@docs input, EnterpriseServerUserAccountEmailOrder
-}


import GitHub.Enum.EnterpriseServerUserAccountEmailOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias EnterpriseServerUserAccountEmailOrder =
    GitHub.Input.EnterpriseServerUserAccountEmailOrder


input :
    { field :
        GitHub.Enum.EnterpriseServerUserAccountEmailOrderField.EnterpriseServerUserAccountEmailOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> EnterpriseServerUserAccountEmailOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "EnterpriseServerUserAccountEmailOrderField!"
            (GitHub.Enum.EnterpriseServerUserAccountEmailOrderField.encode
                requiredArgs.field
            )
            (GraphQL.Engine.inputObject "EnterpriseServerUserAccountEmailOrder")
        )


