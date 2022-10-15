module GitHub.Input.ProjectV2ItemFieldValueOrder exposing (ProjectV2ItemFieldValueOrder, input)

{-| 
## Creating an input

@docs input, ProjectV2ItemFieldValueOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.ProjectV2ItemFieldValueOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ProjectV2ItemFieldValueOrder =
    GitHub.Input.ProjectV2ItemFieldValueOrder


input :
    { field :
        GitHub.Enum.ProjectV2ItemFieldValueOrderField.ProjectV2ItemFieldValueOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> ProjectV2ItemFieldValueOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "ProjectV2ItemFieldValueOrderField!"
            (GitHub.Enum.ProjectV2ItemFieldValueOrderField.encode
                requiredArgs.field
            )
            (GraphQL.Engine.inputObject "ProjectV2ItemFieldValueOrder")
        )


