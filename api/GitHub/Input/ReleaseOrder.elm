module GitHub.Input.ReleaseOrder exposing (ReleaseOrder, input)

{-| 
## Creating an input

@docs input, ReleaseOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.ReleaseOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ReleaseOrder =
    GitHub.Input.ReleaseOrder


input :
    { field : GitHub.Enum.ReleaseOrderField.ReleaseOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> ReleaseOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "ReleaseOrderField!"
            (GitHub.Enum.ReleaseOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "ReleaseOrder")
        )


