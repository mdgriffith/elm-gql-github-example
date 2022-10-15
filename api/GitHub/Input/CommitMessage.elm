module GitHub.Input.CommitMessage exposing (CommitMessage, body, input, null)

{-| 
## Creating an input

@docs input, CommitMessage

## Null values

@docs null

## Optional fields

@docs body
-}


import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CommitMessage =
    GitHub.Input.CommitMessage


input : { headline : String } -> CommitMessage
input requiredArgs =
    GraphQL.Engine.addField
        "headline"
        "String!"
        (Json.Encode.string requiredArgs.headline)
        (GraphQL.Engine.inputObject "CommitMessage")


body : String -> CommitMessage -> CommitMessage
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { body : CommitMessage -> CommitMessage }
null =
    { body =
        \inputObj ->
            GraphQL.Engine.addField "body" "String" Json.Encode.null inputObj
    }


