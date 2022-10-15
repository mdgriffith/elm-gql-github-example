module GitHub.Input.CheckRunFilter exposing (CheckRunFilter, appId, checkName, checkType, conclusions, input, null, status, statuses)

{-| 
## Creating an input

@docs input, CheckRunFilter

## Null values

@docs null

## Optional fields

@docs conclusions, statuses, status, checkName, appId, checkType
-}


import GitHub.Enum.CheckConclusionState
import GitHub.Enum.CheckRunType
import GitHub.Enum.CheckStatusState
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CheckRunFilter =
    GitHub.Input.CheckRunFilter


input : CheckRunFilter
input =
    GraphQL.Engine.inputObject "CheckRunFilter"


checkType :
    GitHub.Enum.CheckRunType.CheckRunType -> CheckRunFilter -> CheckRunFilter
checkType newArg_ inputObj_ =
    GraphQL.Engine.addField
        "checkType"
        "CheckRunType"
        (GitHub.Enum.CheckRunType.encode newArg_)
        inputObj_


appId : Int -> CheckRunFilter -> CheckRunFilter
appId newArg_ inputObj_ =
    GraphQL.Engine.addField "appId" "Int" (Json.Encode.int newArg_) inputObj_


checkName : String -> CheckRunFilter -> CheckRunFilter
checkName newArg_ inputObj_ =
    GraphQL.Engine.addField
        "checkName"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


status :
    GitHub.Enum.CheckStatusState.CheckStatusState
    -> CheckRunFilter
    -> CheckRunFilter
status newArg_ inputObj_ =
    GraphQL.Engine.addField
        "status"
        "CheckStatusState"
        (GitHub.Enum.CheckStatusState.encode newArg_)
        inputObj_


statuses :
    List GitHub.Enum.CheckStatusState.CheckStatusState
    -> CheckRunFilter
    -> CheckRunFilter
statuses newArg_ inputObj_ =
    GraphQL.Engine.addField
        "statuses"
        "[CheckStatusState!]"
        (Json.Encode.list GitHub.Enum.CheckStatusState.encode newArg_)
        inputObj_


conclusions :
    List GitHub.Enum.CheckConclusionState.CheckConclusionState
    -> CheckRunFilter
    -> CheckRunFilter
conclusions newArg_ inputObj_ =
    GraphQL.Engine.addField
        "conclusions"
        "[CheckConclusionState!]"
        (Json.Encode.list GitHub.Enum.CheckConclusionState.encode newArg_)
        inputObj_


null :
    { checkType : CheckRunFilter -> CheckRunFilter
    , appId : CheckRunFilter -> CheckRunFilter
    , checkName : CheckRunFilter -> CheckRunFilter
    , status : CheckRunFilter -> CheckRunFilter
    , statuses : CheckRunFilter -> CheckRunFilter
    , conclusions : CheckRunFilter -> CheckRunFilter
    }
null =
    { checkType =
        \inputObj ->
            GraphQL.Engine.addField
                "checkType"
                "CheckRunType"
                Json.Encode.null
                inputObj
    , appId =
        \inputObj ->
            GraphQL.Engine.addField "appId" "Int" Json.Encode.null inputObj
    , checkName =
        \inputObj ->
            GraphQL.Engine.addField
                "checkName"
                "String"
                Json.Encode.null
                inputObj
    , status =
        \inputObj ->
            GraphQL.Engine.addField
                "status"
                "CheckStatusState"
                Json.Encode.null
                inputObj
    , statuses =
        \inputObj ->
            GraphQL.Engine.addField
                "statuses"
                "[CheckStatusState!]"
                Json.Encode.null
                inputObj
    , conclusions =
        \inputObj ->
            GraphQL.Engine.addField
                "conclusions"
                "[CheckConclusionState!]"
                Json.Encode.null
                inputObj
    }


