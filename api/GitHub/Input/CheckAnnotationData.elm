module GitHub.Input.CheckAnnotationData exposing (CheckAnnotationData, input, null, rawDetails, title)

{-| 
## Creating an input

@docs input, CheckAnnotationData

## Null values

@docs null

## Optional fields

@docs rawDetails, title
-}


import GitHub.Enum.CheckAnnotationLevel
import GitHub.Input
import GraphQL.Engine
import Json.Decode
import Json.Encode


type alias CheckAnnotationData =
    GitHub.Input.CheckAnnotationData


input :
    { path : String
    , location : GitHub.Input.CheckAnnotationRange
    , annotationLevel : GitHub.Enum.CheckAnnotationLevel.CheckAnnotationLevel
    , message : String
    }
    -> CheckAnnotationData
input requiredArgs =
    GraphQL.Engine.addField
        "message"
        "String!"
        (Json.Encode.string requiredArgs.message)
        (GraphQL.Engine.addField
            "annotationLevel"
            "CheckAnnotationLevel!"
            (GitHub.Enum.CheckAnnotationLevel.encode
                requiredArgs.annotationLevel
            )
            (GraphQL.Engine.addField
                "location"
                "CheckAnnotationRange!"
                (GraphQL.Engine.encodeInputObjectAsJson requiredArgs.location)
                (GraphQL.Engine.addField
                    "path"
                    "String!"
                    (Json.Encode.string requiredArgs.path)
                    (GraphQL.Engine.inputObject "CheckAnnotationData")
                )
            )
        )


title : String -> CheckAnnotationData -> CheckAnnotationData
title newArg_ inputObj_ =
    GraphQL.Engine.addField
        "title"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


rawDetails : String -> CheckAnnotationData -> CheckAnnotationData
rawDetails newArg_ inputObj_ =
    GraphQL.Engine.addField
        "rawDetails"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { title : CheckAnnotationData -> CheckAnnotationData
    , rawDetails : CheckAnnotationData -> CheckAnnotationData
    }
null =
    { title =
        \inputObj ->
            GraphQL.Engine.addField "title" "String" Json.Encode.null inputObj
    , rawDetails =
        \inputObj ->
            GraphQL.Engine.addField
                "rawDetails"
                "String"
                Json.Encode.null
                inputObj
    }


