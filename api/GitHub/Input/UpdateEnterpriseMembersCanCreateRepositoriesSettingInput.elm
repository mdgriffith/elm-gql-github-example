module GitHub.Input.UpdateEnterpriseMembersCanCreateRepositoriesSettingInput exposing (UpdateEnterpriseMembersCanCreateRepositoriesSettingInput, clientMutationId, input, membersCanCreateInternalRepositories, membersCanCreatePrivateRepositories, membersCanCreatePublicRepositories, membersCanCreateRepositoriesPolicyEnabled, null, settingValue)

{-| 
## Creating an input

@docs input, UpdateEnterpriseMembersCanCreateRepositoriesSettingInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, membersCanCreateInternalRepositories, membersCanCreatePrivateRepositories, membersCanCreatePublicRepositories, membersCanCreateRepositoriesPolicyEnabled, settingValue
-}


import GitHub
import GitHub.Enum.EnterpriseMembersCanCreateRepositoriesSettingValue
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateEnterpriseMembersCanCreateRepositoriesSettingInput =
    GitHub.Input.UpdateEnterpriseMembersCanCreateRepositoriesSettingInput


input :
    { enterpriseId : GitHub.Id }
    -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
input requiredArgs =
    GraphQL.Engine.addField
        "enterpriseId"
        "ID!"
        (GitHub.id.encode requiredArgs.enterpriseId)
        (GraphQL.Engine.inputObject
            "UpdateEnterpriseMembersCanCreateRepositoriesSettingInput"
        )


settingValue :
    GitHub.Enum.EnterpriseMembersCanCreateRepositoriesSettingValue.EnterpriseMembersCanCreateRepositoriesSettingValue
    -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
    -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
settingValue newArg_ inputObj_ =
    GraphQL.Engine.addField
        "settingValue"
        "EnterpriseMembersCanCreateRepositoriesSettingValue"
        (GitHub.Enum.EnterpriseMembersCanCreateRepositoriesSettingValue.encode
            newArg_
        )
        inputObj_


membersCanCreateRepositoriesPolicyEnabled :
    Bool
    -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
    -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
membersCanCreateRepositoriesPolicyEnabled newArg_ inputObj_ =
    GraphQL.Engine.addField
        "membersCanCreateRepositoriesPolicyEnabled"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


membersCanCreatePublicRepositories :
    Bool
    -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
    -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
membersCanCreatePublicRepositories newArg_ inputObj_ =
    GraphQL.Engine.addField
        "membersCanCreatePublicRepositories"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


membersCanCreatePrivateRepositories :
    Bool
    -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
    -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
membersCanCreatePrivateRepositories newArg_ inputObj_ =
    GraphQL.Engine.addField
        "membersCanCreatePrivateRepositories"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


membersCanCreateInternalRepositories :
    Bool
    -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
    -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
membersCanCreateInternalRepositories newArg_ inputObj_ =
    GraphQL.Engine.addField
        "membersCanCreateInternalRepositories"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId :
    String
    -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
    -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { settingValue :
        UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
        -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
    , membersCanCreateRepositoriesPolicyEnabled :
        UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
        -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
    , membersCanCreatePublicRepositories :
        UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
        -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
    , membersCanCreatePrivateRepositories :
        UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
        -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
    , membersCanCreateInternalRepositories :
        UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
        -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
    , clientMutationId :
        UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
        -> UpdateEnterpriseMembersCanCreateRepositoriesSettingInput
    }
null =
    { settingValue =
        \inputObj ->
            GraphQL.Engine.addField
                "settingValue"
                "EnterpriseMembersCanCreateRepositoriesSettingValue"
                Json.Encode.null
                inputObj
    , membersCanCreateRepositoriesPolicyEnabled =
        \inputObj ->
            GraphQL.Engine.addField
                "membersCanCreateRepositoriesPolicyEnabled"
                "Boolean"
                Json.Encode.null
                inputObj
    , membersCanCreatePublicRepositories =
        \inputObj ->
            GraphQL.Engine.addField
                "membersCanCreatePublicRepositories"
                "Boolean"
                Json.Encode.null
                inputObj
    , membersCanCreatePrivateRepositories =
        \inputObj ->
            GraphQL.Engine.addField
                "membersCanCreatePrivateRepositories"
                "Boolean"
                Json.Encode.null
                inputObj
    , membersCanCreateInternalRepositories =
        \inputObj ->
            GraphQL.Engine.addField
                "membersCanCreateInternalRepositories"
                "Boolean"
                Json.Encode.null
                inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


