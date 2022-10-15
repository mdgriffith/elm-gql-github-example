module GitHub.Input.CheckRunOutputImage exposing (CheckRunOutputImage, caption, input, null)

{-| 
## Creating an input

@docs input, CheckRunOutputImage

## Null values

@docs null

## Optional fields

@docs caption
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CheckRunOutputImage =
    GitHub.Input.CheckRunOutputImage


input : { alt : String, imageUrl : GitHub.Uri } -> CheckRunOutputImage
input requiredArgs =
    GraphQL.Engine.addField
        "imageUrl"
        "URI!"
        (GitHub.uri.encode requiredArgs.imageUrl)
        (GraphQL.Engine.addField
            "alt"
            "String!"
            (Json.Encode.string requiredArgs.alt)
            (GraphQL.Engine.inputObject "CheckRunOutputImage")
        )


caption : String -> CheckRunOutputImage -> CheckRunOutputImage
caption newArg_ inputObj_ =
    GraphQL.Engine.addField
        "caption"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { caption : CheckRunOutputImage -> CheckRunOutputImage }
null =
    { caption =
        \inputObj ->
            GraphQL.Engine.addField "caption" "String" Json.Encode.null inputObj
    }


