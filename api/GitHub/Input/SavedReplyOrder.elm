module GitHub.Input.SavedReplyOrder exposing (SavedReplyOrder, input)

{-| 
## Creating an input

@docs input, SavedReplyOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.SavedReplyOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias SavedReplyOrder =
    GitHub.Input.SavedReplyOrder


input :
    { field : GitHub.Enum.SavedReplyOrderField.SavedReplyOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> SavedReplyOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "SavedReplyOrderField!"
            (GitHub.Enum.SavedReplyOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "SavedReplyOrder")
        )


