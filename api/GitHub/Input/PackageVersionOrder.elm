module GitHub.Input.PackageVersionOrder exposing (PackageVersionOrder, direction, field, input, null)

{-| 
## Creating an input

@docs input, PackageVersionOrder

## Null values

@docs null

## Optional fields

@docs direction, field
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.PackageVersionOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias PackageVersionOrder =
    GitHub.Input.PackageVersionOrder


input : PackageVersionOrder
input =
    GraphQL.Engine.inputObject "PackageVersionOrder"


field :
    GitHub.Enum.PackageVersionOrderField.PackageVersionOrderField
    -> PackageVersionOrder
    -> PackageVersionOrder
field newArg_ inputObj_ =
    GraphQL.Engine.addField
        "field"
        "PackageVersionOrderField"
        (GitHub.Enum.PackageVersionOrderField.encode newArg_)
        inputObj_


direction :
    GitHub.Enum.OrderDirection.OrderDirection
    -> PackageVersionOrder
    -> PackageVersionOrder
direction newArg_ inputObj_ =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection"
        (GitHub.Enum.OrderDirection.encode newArg_)
        inputObj_


null :
    { field : PackageVersionOrder -> PackageVersionOrder
    , direction : PackageVersionOrder -> PackageVersionOrder
    }
null =
    { field =
        \inputObj ->
            GraphQL.Engine.addField
                "field"
                "PackageVersionOrderField"
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


