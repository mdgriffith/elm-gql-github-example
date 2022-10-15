module GitHub.Input.WorkflowRunOrder exposing (WorkflowRunOrder, input)

{-| 
## Creating an input

@docs input, WorkflowRunOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.WorkflowRunOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias WorkflowRunOrder =
    GitHub.Input.WorkflowRunOrder


input :
    { field : GitHub.Enum.WorkflowRunOrderField.WorkflowRunOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> WorkflowRunOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "WorkflowRunOrderField!"
            (GitHub.Enum.WorkflowRunOrderField.encode requiredArgs.field)
            (GraphQL.Engine.inputObject "WorkflowRunOrder")
        )


