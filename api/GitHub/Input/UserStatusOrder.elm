module GitHub.Input.UserStatusOrder exposing (UserStatusOrder, input)

{-| 
## Creating an input

@docs input, UserStatusOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.UserStatusOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UserStatusOrder =
    GitHub.Input.UserStatusOrder


input :
    { field : GitHub.Enum.UserStatusOrderField.UserStatusOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> UserStatusOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "UserStatusOrderField!"
            (GitHub.Enum.UserStatusOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "UserStatusOrder")
        )


