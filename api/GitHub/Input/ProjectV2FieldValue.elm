module GitHub.Input.ProjectV2FieldValue exposing (ProjectV2FieldValue, date, input, iterationId, null, number, singleSelectOptionId, text)

{-| 
## Creating an input

@docs input, ProjectV2FieldValue

## Null values

@docs null

## Optional fields

@docs iterationId, singleSelectOptionId, date, number, text
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ProjectV2FieldValue =
    GitHub.Input.ProjectV2FieldValue


input : ProjectV2FieldValue
input =
    GraphQL.Engine.inputObject "ProjectV2FieldValue"


text : String -> ProjectV2FieldValue -> ProjectV2FieldValue
text newArg_ inputObj_ =
    GraphQL.Engine.addField
        "text"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


number : Float -> ProjectV2FieldValue -> ProjectV2FieldValue
number newArg_ inputObj_ =
    GraphQL.Engine.addField
        "number"
        "Float"
        (Json.Encode.float newArg_)
        inputObj_


date : GitHub.Date -> ProjectV2FieldValue -> ProjectV2FieldValue
date newArg_ inputObj_ =
    GraphQL.Engine.addField "date" "Date" (GitHub.date.encode newArg_) inputObj_


singleSelectOptionId : String -> ProjectV2FieldValue -> ProjectV2FieldValue
singleSelectOptionId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "singleSelectOptionId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


iterationId : String -> ProjectV2FieldValue -> ProjectV2FieldValue
iterationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "iterationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { text : ProjectV2FieldValue -> ProjectV2FieldValue
    , number : ProjectV2FieldValue -> ProjectV2FieldValue
    , date : ProjectV2FieldValue -> ProjectV2FieldValue
    , singleSelectOptionId : ProjectV2FieldValue -> ProjectV2FieldValue
    , iterationId : ProjectV2FieldValue -> ProjectV2FieldValue
    }
null =
    { text =
        \inputObj ->
            GraphQL.Engine.addField "text" "String" Json.Encode.null inputObj
    , number =
        \inputObj ->
            GraphQL.Engine.addField "number" "Float" Json.Encode.null inputObj
    , date =
        \inputObj ->
            GraphQL.Engine.addField "date" "Date" Json.Encode.null inputObj
    , singleSelectOptionId =
        \inputObj ->
            GraphQL.Engine.addField
                "singleSelectOptionId"
                "String"
                Json.Encode.null
                inputObj
    , iterationId =
        \inputObj ->
            GraphQL.Engine.addField
                "iterationId"
                "String"
                Json.Encode.null
                inputObj
    }


