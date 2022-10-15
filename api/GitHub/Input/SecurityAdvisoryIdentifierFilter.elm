module GitHub.Input.SecurityAdvisoryIdentifierFilter exposing (SecurityAdvisoryIdentifierFilter, input)

{-| 
## Creating an input

@docs input, SecurityAdvisoryIdentifierFilter
-}


import GitHub.Enum.SecurityAdvisoryIdentifierType
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias SecurityAdvisoryIdentifierFilter =
    GitHub.Input.SecurityAdvisoryIdentifierFilter


input :
    { type_ :
        GitHub.Enum.SecurityAdvisoryIdentifierType.SecurityAdvisoryIdentifierType
    , value : String
    }
    -> SecurityAdvisoryIdentifierFilter
input requiredArgs =
    GraphQL.Engine.addField
        "value"
        "String!"
        (Json.Encode.string requiredArgs.value)
        (GraphQL.Engine.addField
            "type"
            "SecurityAdvisoryIdentifierType!"
            (GitHub.Enum.SecurityAdvisoryIdentifierType.encode
                requiredArgs.type_
            )
            (GraphQL.Engine.inputObject "SecurityAdvisoryIdentifierFilter")
        )


