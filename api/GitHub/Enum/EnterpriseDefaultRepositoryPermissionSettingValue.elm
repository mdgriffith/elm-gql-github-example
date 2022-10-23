module GitHub.Enum.EnterpriseDefaultRepositoryPermissionSettingValue exposing (EnterpriseDefaultRepositoryPermissionSettingValue(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, EnterpriseDefaultRepositoryPermissionSettingValue
-}


import Json.Decode
import Json.Encode


type EnterpriseDefaultRepositoryPermissionSettingValue
    = NO_POLICY
    | ADMIN
    | WRITE
    | READ
    | NONE


all : List EnterpriseDefaultRepositoryPermissionSettingValue
all =
    [ NO_POLICY, ADMIN, WRITE, READ, NONE ]


decoder : Json.Decode.Decoder EnterpriseDefaultRepositoryPermissionSettingValue
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "NO_POLICY" ->
                    Json.Decode.succeed NO_POLICY

                "ADMIN" ->
                    Json.Decode.succeed ADMIN

                "WRITE" ->
                    Json.Decode.succeed WRITE

                "READ" ->
                    Json.Decode.succeed READ

                "NONE" ->
                    Json.Decode.succeed NONE

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : EnterpriseDefaultRepositoryPermissionSettingValue -> Json.Encode.Value
encode val =
    case val of
        NO_POLICY ->
            Json.Encode.string "NO_POLICY"

        ADMIN ->
            Json.Encode.string "ADMIN"

        WRITE ->
            Json.Encode.string "WRITE"

        READ ->
            Json.Encode.string "READ"

        NONE ->
            Json.Encode.string "NONE"


