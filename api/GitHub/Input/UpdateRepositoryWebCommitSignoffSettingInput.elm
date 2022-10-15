module GitHub.Input.UpdateRepositoryWebCommitSignoffSettingInput exposing (UpdateRepositoryWebCommitSignoffSettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateRepositoryWebCommitSignoffSettingInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateRepositoryWebCommitSignoffSettingInput =
    GitHub.Input.UpdateRepositoryWebCommitSignoffSettingInput


input :
    { repositoryId : GitHub.Id, webCommitSignoffRequired : Bool }
    -> UpdateRepositoryWebCommitSignoffSettingInput
input requiredArgs =
    GraphQL.Engine.addField
        "webCommitSignoffRequired"
        "Boolean!"
        (Json.Encode.bool requiredArgs.webCommitSignoffRequired)
        (GraphQL.Engine.addField
            "repositoryId"
            "ID!"
            (GitHub.id.encode requiredArgs.repositoryId)
            (GraphQL.Engine.inputObject
                "UpdateRepositoryWebCommitSignoffSettingInput"
            )
        )


clientMutationId :
    String
    -> UpdateRepositoryWebCommitSignoffSettingInput
    -> UpdateRepositoryWebCommitSignoffSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateRepositoryWebCommitSignoffSettingInput
        -> UpdateRepositoryWebCommitSignoffSettingInput
    }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


