module GitHub.Input.LanguageOrder exposing (LanguageOrder, input)

{-| 
## Creating an input

@docs input, LanguageOrder
-}


import GitHub.Enum.LanguageOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias LanguageOrder =
    GitHub.Input.LanguageOrder


input :
    { field : GitHub.Enum.LanguageOrderField.LanguageOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> LanguageOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "LanguageOrderField!"
            (GitHub.Enum.LanguageOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "LanguageOrder")
        )


