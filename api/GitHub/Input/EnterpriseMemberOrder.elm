module GitHub.Input.EnterpriseMemberOrder exposing (EnterpriseMemberOrder, input)

{-| 
## Creating an input

@docs input, EnterpriseMemberOrder
-}


import GitHub.Enum.EnterpriseMemberOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias EnterpriseMemberOrder =
    GitHub.Input.EnterpriseMemberOrder


input :
    { field : GitHub.Enum.EnterpriseMemberOrderField.EnterpriseMemberOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> EnterpriseMemberOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "EnterpriseMemberOrderField!"
            (GitHub.Enum.EnterpriseMemberOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "EnterpriseMemberOrder")
        )


