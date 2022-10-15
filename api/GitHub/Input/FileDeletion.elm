module GitHub.Input.FileDeletion exposing (FileDeletion, input)

{-| 
## Creating an input

@docs input, FileDeletion
-}


import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias FileDeletion =
    GitHub.Input.FileDeletion


input : { path : String } -> FileDeletion
input requiredArgs =
    GraphQL.Engine.addField
        "path"
        "String!"
        (Json.Encode.string requiredArgs.path)
        (GraphQL.Engine.inputObject "FileDeletion")


