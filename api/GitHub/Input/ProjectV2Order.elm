module GitHub.Input.ProjectV2Order exposing (ProjectV2Order, input)

{-| 
## Creating an input

@docs input, ProjectV2Order
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.ProjectV2OrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ProjectV2Order =
    GitHub.Input.ProjectV2Order


input :
    { field : GitHub.Enum.ProjectV2OrderField.ProjectV2OrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> ProjectV2Order
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "ProjectV2OrderField!"
            (GitHub.Enum.ProjectV2OrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "ProjectV2Order")
        )


