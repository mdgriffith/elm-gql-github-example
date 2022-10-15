module GitHub.Enum.EnterpriseServerUserAccountsUploadSyncState exposing (EnterpriseServerUserAccountsUploadSyncState(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, EnterpriseServerUserAccountsUploadSyncState
-}


import Json.Decode
import Json.Encode


type EnterpriseServerUserAccountsUploadSyncState
    = PENDING
    | SUCCESS
    | FAILURE


list : List EnterpriseServerUserAccountsUploadSyncState
list =
    [ PENDING, SUCCESS, FAILURE ]


decoder : Json.Decode.Decoder EnterpriseServerUserAccountsUploadSyncState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "PENDING" ->
                        Json.Decode.succeed PENDING

                    "SUCCESS" ->
                        Json.Decode.succeed SUCCESS

                    "FAILURE" ->
                        Json.Decode.succeed FAILURE

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : EnterpriseServerUserAccountsUploadSyncState -> Json.Encode.Value
encode val =
    case val of
        PENDING ->
            Json.Encode.string "PENDING"

        SUCCESS ->
            Json.Encode.string "SUCCESS"

        FAILURE ->
            Json.Encode.string "FAILURE"


