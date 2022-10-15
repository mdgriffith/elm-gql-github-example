module GitHub.Input.PackageOrder exposing (PackageOrder, direction, field, input, null)

{-| 
## Creating an input

@docs input, PackageOrder

## Null values

@docs null

## Optional fields

@docs direction, field
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.PackageOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias PackageOrder =
    GitHub.Input.PackageOrder


input : PackageOrder
input =
    GraphQL.Engine.inputObject "PackageOrder"


field :
    GitHub.Enum.PackageOrderField.PackageOrderField
    -> PackageOrder
    -> PackageOrder
field newArg_ inputObj_ =
    GraphQL.Engine.addField
        "field"
        "PackageOrderField"
        (GitHub.Enum.PackageOrderField.encode newArg_)
        inputObj_


direction :
    GitHub.Enum.OrderDirection.OrderDirection -> PackageOrder -> PackageOrder
direction newArg_ inputObj_ =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection"
        (GitHub.Enum.OrderDirection.encode newArg_)
        inputObj_


null :
    { field : PackageOrder -> PackageOrder
    , direction : PackageOrder -> PackageOrder
    }
null =
    { field =
        \inputObj ->
            GraphQL.Engine.addField
                "field"
                "PackageOrderField"
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


