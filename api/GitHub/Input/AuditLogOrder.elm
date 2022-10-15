module GitHub.Input.AuditLogOrder exposing (AuditLogOrder, direction, field, input, null)

{-| 
## Creating an input

@docs input, AuditLogOrder

## Null values

@docs null

## Optional fields

@docs direction, field
-}


import GitHub.Enum.AuditLogOrderField
import GitHub.Enum.OrderDirection
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AuditLogOrder =
    GitHub.Input.AuditLogOrder


input : AuditLogOrder
input =
    GraphQL.Engine.inputObject "AuditLogOrder"


field :
    GitHub.Enum.AuditLogOrderField.AuditLogOrderField
    -> AuditLogOrder
    -> AuditLogOrder
field newArg_ inputObj_ =
    GraphQL.Engine.addField
        "field"
        "AuditLogOrderField"
        (GitHub.Enum.AuditLogOrderField.encode newArg_)
        inputObj_


direction :
    GitHub.Enum.OrderDirection.OrderDirection -> AuditLogOrder -> AuditLogOrder
direction newArg_ inputObj_ =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection"
        (GitHub.Enum.OrderDirection.encode newArg_)
        inputObj_


null :
    { field : AuditLogOrder -> AuditLogOrder
    , direction : AuditLogOrder -> AuditLogOrder
    }
null =
    { field =
        \inputObj ->
            GraphQL.Engine.addField
                "field"
                "AuditLogOrderField"
                Json.Encode.null
                inputObj
    , direction =
        \inputObj ->
            GraphQL.Engine.addField
                "direction"
                "OrderDirection"
                Json.Encode.null
                inputObj
    }


