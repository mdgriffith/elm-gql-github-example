module GitHub.Input.RefOrder exposing (RefOrder, input)

{-| 
## Creating an input

@docs input, RefOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.RefOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RefOrder =
    GitHub.Input.RefOrder


input :
    { field : GitHub.Enum.RefOrderField.RefOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> RefOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "RefOrderField!"
            (GitHub.Enum.RefOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "RefOrder")
        )


