module GitHub.Input.CheckRunOutput exposing (CheckRunOutput, annotations, images, input, null, text)

{-| 
## Creating an input

@docs input, CheckRunOutput

## Null values

@docs null

## Optional fields

@docs images, annotations, text
-}


import GitHub.Input
import GraphQL.Engine
import Json.Decode
import Json.Encode


type alias CheckRunOutput =
    GitHub.Input.CheckRunOutput


input : { title : String, summary : String } -> CheckRunOutput
input requiredArgs =
    GraphQL.Engine.addField
        "summary"
        "String!"
        (Json.Encode.string requiredArgs.summary)
        (GraphQL.Engine.addField
            "title"
            "String!"
            (Json.Encode.string requiredArgs.title)
            (GraphQL.Engine.inputObject "CheckRunOutput")
        )


text : String -> CheckRunOutput -> CheckRunOutput
text newArg_ inputObj_ =
    GraphQL.Engine.addField
        "text"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


annotations :
    List GitHub.Input.CheckAnnotationData -> CheckRunOutput -> CheckRunOutput
annotations newArg_ inputObj_ =
    GraphQL.Engine.addField
        "annotations"
        "[CheckAnnotationData!]"
        (Json.Encode.list GraphQL.Engine.encodeInputObjectAsJson newArg_)
        inputObj_


images :
    List GitHub.Input.CheckRunOutputImage -> CheckRunOutput -> CheckRunOutput
images newArg_ inputObj_ =
    GraphQL.Engine.addField
        "images"
        "[CheckRunOutputImage!]"
        (Json.Encode.list GraphQL.Engine.encodeInputObjectAsJson newArg_)
        inputObj_


null :
    { text : CheckRunOutput -> CheckRunOutput
    , annotations : CheckRunOutput -> CheckRunOutput
    , images : CheckRunOutput -> CheckRunOutput
    }
null =
    { text =
        \inputObj ->
            GraphQL.Engine.addField "text" "String" Json.Encode.null inputObj
    , annotations =
        \inputObj ->
            GraphQL.Engine.addField
                "annotations"
                "[CheckAnnotationData!]"
                Json.Encode.null
                inputObj
    , images =
        \inputObj ->
            GraphQL.Engine.addField
                "images"
                "[CheckRunOutputImage!]"
                Json.Encode.null
                inputObj
    }


