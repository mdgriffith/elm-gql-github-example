module GitHub.Input.CheckRunAction exposing (CheckRunAction, input)

{-| 
## Creating an input

@docs input, CheckRunAction
-}


import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CheckRunAction =
    GitHub.Input.CheckRunAction


input :
    { label : String, description : String, identifier : String }
    -> CheckRunAction
input requiredArgs =
    GraphQL.Engine.addField
        "identifier"
        "String!"
        (Json.Encode.string requiredArgs.identifier)
        (GraphQL.Engine.addField
            "description"
            "String!"
            (Json.Encode.string requiredArgs.description)
            (GraphQL.Engine.addField
                "label"
                "String!"
                (Json.Encode.string requiredArgs.label)
                (GraphQL.Engine.inputObject "CheckRunAction")
            )
        )


