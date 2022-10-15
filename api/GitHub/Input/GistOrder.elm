module GitHub.Input.GistOrder exposing (GistOrder, input)

{-| 
## Creating an input

@docs input, GistOrder
-}


import GitHub.Enum.GistOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias GistOrder =
    GitHub.Input.GistOrder


input :
    { field : GitHub.Enum.GistOrderField.GistOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> GistOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "GistOrderField!"
            (GitHub.Enum.GistOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "GistOrder")
        )


