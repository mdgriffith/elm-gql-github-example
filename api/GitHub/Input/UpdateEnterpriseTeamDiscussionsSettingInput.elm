module GitHub.Input.UpdateEnterpriseTeamDiscussionsSettingInput exposing (UpdateEnterpriseTeamDiscussionsSettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateEnterpriseTeamDiscussionsSettingInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.EnterpriseEnabledDisabledSettingValue
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateEnterpriseTeamDiscussionsSettingInput =
    GitHub.Input.UpdateEnterpriseTeamDiscussionsSettingInput


input :
    { enterpriseId : GitHub.Id
    , settingValue :
        GitHub.Enum.EnterpriseEnabledDisabledSettingValue.EnterpriseEnabledDisabledSettingValue
    }
    -> UpdateEnterpriseTeamDiscussionsSettingInput
input requiredArgs =
    GraphQL.Engine.addField
        "settingValue"
        "EnterpriseEnabledDisabledSettingValue!"
        (GitHub.Enum.EnterpriseEnabledDisabledSettingValue.encode
            requiredArgs.settingValue
        )
        (GraphQL.Engine.addField
            "enterpriseId"
            "ID!"
            (GitHub.id.encode requiredArgs.enterpriseId)
            (GraphQL.Engine.inputObject
                "UpdateEnterpriseTeamDiscussionsSettingInput"
            )
        )


clientMutationId :
    String
    -> UpdateEnterpriseTeamDiscussionsSettingInput
    -> UpdateEnterpriseTeamDiscussionsSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateEnterpriseTeamDiscussionsSettingInput
        -> UpdateEnterpriseTeamDiscussionsSettingInput
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


