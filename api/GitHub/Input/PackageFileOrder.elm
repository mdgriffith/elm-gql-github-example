module GitHub.Input.PackageFileOrder exposing (PackageFileOrder, direction, field, input, null)

{-| 
## Creating an input

@docs input, PackageFileOrder

## Null values

@docs null

## Optional fields

@docs direction, field
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.PackageFileOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias PackageFileOrder =
    GitHub.Input.PackageFileOrder


input : PackageFileOrder
input =
    GraphQL.Engine.inputObject "PackageFileOrder"


field :
    GitHub.Enum.PackageFileOrderField.PackageFileOrderField
    -> PackageFileOrder
    -> PackageFileOrder
field newArg_ inputObj_ =
    GraphQL.Engine.addField
        "field"
        "PackageFileOrderField"
        (GitHub.Enum.PackageFileOrderField.encode newArg_)
        inputObj_


direction :
    GitHub.Enum.OrderDirection.OrderDirection
    -> PackageFileOrder
    -> PackageFileOrder
direction newArg_ inputObj_ =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection"
        (GitHub.Enum.OrderDirection.encode newArg_)
        inputObj_


null :
    { field : PackageFileOrder -> PackageFileOrder
    , direction : PackageFileOrder -> PackageFileOrder
    }
null =
    { field =
        \inputObj ->
            GraphQL.Engine.addField
                "field"
                "PackageFileOrderField"
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


