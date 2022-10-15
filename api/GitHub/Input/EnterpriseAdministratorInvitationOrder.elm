module GitHub.Input.EnterpriseAdministratorInvitationOrder exposing (EnterpriseAdministratorInvitationOrder, input)

{-| 
## Creating an input

@docs input, EnterpriseAdministratorInvitationOrder
-}


import GitHub.Enum.EnterpriseAdministratorInvitationOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias EnterpriseAdministratorInvitationOrder =
    GitHub.Input.EnterpriseAdministratorInvitationOrder


input :
    { field :
        GitHub.Enum.EnterpriseAdministratorInvitationOrderField.EnterpriseAdministratorInvitationOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> EnterpriseAdministratorInvitationOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "EnterpriseAdministratorInvitationOrderField!"
            (GitHub.Enum.EnterpriseAdministratorInvitationOrderField.encode
                requiredArgs.field
            )
            (GraphQL.Engine.inputObject "EnterpriseAdministratorInvitationOrder"
            )
        )


