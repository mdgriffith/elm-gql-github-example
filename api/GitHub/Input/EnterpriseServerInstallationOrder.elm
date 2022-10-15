module GitHub.Input.EnterpriseServerInstallationOrder exposing (EnterpriseServerInstallationOrder, input)

{-| 
## Creating an input

@docs input, EnterpriseServerInstallationOrder
-}


import GitHub.Enum.EnterpriseServerInstallationOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias EnterpriseServerInstallationOrder =
    GitHub.Input.EnterpriseServerInstallationOrder


input :
    { field :
        GitHub.Enum.EnterpriseServerInstallationOrderField.EnterpriseServerInstallationOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> EnterpriseServerInstallationOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "EnterpriseServerInstallationOrderField!"
            (GitHub.Enum.EnterpriseServerInstallationOrderField.encode
                requiredArgs.field
            )
            (GraphQL.Engine.inputObject "EnterpriseServerInstallationOrder")
        )


