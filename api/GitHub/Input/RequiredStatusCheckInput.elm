module GitHub.Input.RequiredStatusCheckInput exposing (RequiredStatusCheckInput, appId, input, null)

{-| 
## Creating an input

@docs input, RequiredStatusCheckInput

## Null values

@docs null

## Optional fields

@docs appId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RequiredStatusCheckInput =
    GitHub.Input.RequiredStatusCheckInput


input : { context : String } -> RequiredStatusCheckInput
input requiredArgs =
    GraphQL.Engine.addField
        "context"
        "String!"
        (Json.Encode.string requiredArgs.context)
        (GraphQL.Engine.inputObject "RequiredStatusCheckInput")


appId : GitHub.Id -> RequiredStatusCheckInput -> RequiredStatusCheckInput
appId newArg_ inputObj_ =
    GraphQL.Engine.addField "appId" "ID" (GitHub.id.encode newArg_) inputObj_


null : { appId : RequiredStatusCheckInput -> RequiredStatusCheckInput }
null =
    { appId =
        \inputObj ->
            GraphQL.Engine.addField "appId" "ID" Json.Encode.null inputObj
    }


