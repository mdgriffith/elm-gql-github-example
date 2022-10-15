module GitHub.Input.FileAddition exposing (FileAddition, input)

{-| 
## Creating an input

@docs input, FileAddition
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias FileAddition =
    GitHub.Input.FileAddition


input : { path : String, contents : GitHub.Base64String } -> FileAddition
input requiredArgs =
    GraphQL.Engine.addField
        "contents"
        "Base64String!"
        (GitHub.base64String.encode requiredArgs.contents)
        (GraphQL.Engine.addField
            "path"
            "String!"
            (Json.Encode.string requiredArgs.path)
            (GraphQL.Engine.inputObject "FileAddition")
        )


