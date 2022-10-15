module GitHub.Input.EnterpriseServerUserAccountsUploadOrder exposing (EnterpriseServerUserAccountsUploadOrder, input)

{-| 
## Creating an input

@docs input, EnterpriseServerUserAccountsUploadOrder
-}


import GitHub.Enum.EnterpriseServerUserAccountsUploadOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias EnterpriseServerUserAccountsUploadOrder =
    GitHub.Input.EnterpriseServerUserAccountsUploadOrder


input :
    { field :
        GitHub.Enum.EnterpriseServerUserAccountsUploadOrderField.EnterpriseServerUserAccountsUploadOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> EnterpriseServerUserAccountsUploadOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "EnterpriseServerUserAccountsUploadOrderField!"
            (GitHub.Enum.EnterpriseServerUserAccountsUploadOrderField.encode
                requiredArgs.field
            )
            (GraphQL.Engine.inputObject
                "EnterpriseServerUserAccountsUploadOrder"
            )
        )


