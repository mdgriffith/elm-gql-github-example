module GitHub.Input.DeploymentOrder exposing (DeploymentOrder, input)

{-| 
## Creating an input

@docs input, DeploymentOrder
-}


import GitHub.Enum.DeploymentOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeploymentOrder =
    GitHub.Input.DeploymentOrder


input :
    { field : GitHub.Enum.DeploymentOrderField.DeploymentOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> DeploymentOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "DeploymentOrderField!"
            (GitHub.Enum.DeploymentOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "DeploymentOrder")
        )


