module GitHub.Input.CheckSuiteFilter exposing (CheckSuiteFilter, appId, checkName, input, null)

{-| 
## Creating an input

@docs input, CheckSuiteFilter

## Null values

@docs null

## Optional fields

@docs checkName, appId
-}


import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CheckSuiteFilter =
    GitHub.Input.CheckSuiteFilter


input : CheckSuiteFilter
input =
    GraphQL.Engine.inputObject "CheckSuiteFilter"


appId : Int -> CheckSuiteFilter -> CheckSuiteFilter
appId newArg_ inputObj_ =
    GraphQL.Engine.addField "appId" "Int" (Json.Encode.int newArg_) inputObj_


checkName : String -> CheckSuiteFilter -> CheckSuiteFilter
checkName newArg_ inputObj_ =
    GraphQL.Engine.addField
        "checkName"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { appId : CheckSuiteFilter -> CheckSuiteFilter
    , checkName : CheckSuiteFilter -> CheckSuiteFilter
    }
null =
    { appId =
        \inputObj ->
            GraphQL.Engine.addField "appId" "Int" Json.Encode.null inputObj
    , checkName =
        \inputObj ->
            GraphQL.Engine.addField
                "checkName"
                "String"
                Json.Encode.null
                inputObj
    }


