module GitHub.Input.ProjectOrder exposing (ProjectOrder, input)

{-| 
## Creating an input

@docs input, ProjectOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.ProjectOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ProjectOrder =
    GitHub.Input.ProjectOrder


input :
    { field : GitHub.Enum.ProjectOrderField.ProjectOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> ProjectOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "ProjectOrderField!"
            (GitHub.Enum.ProjectOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "ProjectOrder")
        )


