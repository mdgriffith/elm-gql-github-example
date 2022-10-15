module GitHub.Input.CheckAnnotationRange exposing (CheckAnnotationRange, endColumn, input, null, startColumn)

{-| 
## Creating an input

@docs input, CheckAnnotationRange

## Null values

@docs null

## Optional fields

@docs endColumn, startColumn
-}


import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CheckAnnotationRange =
    GitHub.Input.CheckAnnotationRange


input : { startLine : Int, endLine : Int } -> CheckAnnotationRange
input requiredArgs =
    GraphQL.Engine.addField
        "endLine"
        "Int!"
        (Json.Encode.int requiredArgs.endLine)
        (GraphQL.Engine.addField
            "startLine"
            "Int!"
            (Json.Encode.int requiredArgs.startLine)
            (GraphQL.Engine.inputObject "CheckAnnotationRange")
        )


startColumn : Int -> CheckAnnotationRange -> CheckAnnotationRange
startColumn newArg_ inputObj_ =
    GraphQL.Engine.addField
        "startColumn"
        "Int"
        (Json.Encode.int newArg_)
        inputObj_


endColumn : Int -> CheckAnnotationRange -> CheckAnnotationRange
endColumn newArg_ inputObj_ =
    GraphQL.Engine.addField
        "endColumn"
        "Int"
        (Json.Encode.int newArg_)
        inputObj_


null :
    { startColumn : CheckAnnotationRange -> CheckAnnotationRange
    , endColumn : CheckAnnotationRange -> CheckAnnotationRange
    }
null =
    { startColumn =
        \inputObj ->
            GraphQL.Engine.addField
                "startColumn"
                "Int"
                Json.Encode.null
                inputObj
    , endColumn =
        \inputObj ->
            GraphQL.Engine.addField "endColumn" "Int" Json.Encode.null inputObj
    }


