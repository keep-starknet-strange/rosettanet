PARAMETERS:
class_hash: A FieldElement representing the hash of the desired account class.
constructor_calldata: A List comprising the arguments for the account constructor.
contract_address_salt: A FieldElement that functions as a random salt determining the account address.
signature: A List containing additional information provided by the sender, used for transaction validation.
max_fee: A FieldElement indicating the maximum fee the sender is prepared to pay for the transaction.
nonce: A FieldElement representing the transaction nonce.
version: A FieldElement indicating the transaction's version. The value is set to 1.

REQUEST:

curl {{STARKNET RPC}}
-X POST \
-H "Content-Type: application/json" \
-d '{
   "jsonrpc": "2.0",
   "method": "starknet_addDeployAccountTransaction",
   "params": {
      "class_hash": "0x23371b227eaecd8e8920cd429d2cd0f3fee6abaacca08d3ab82a7cdd",
      "constructor_calldata": [
         "0x1",
         "0x677bb1cdc050e8d63855e8743ab6e09179138def390676cc03c484daf112ba1",
         "0x362398bec32bc0ebb411203221a35a0301193a96f317ebe5e40be9f60d15320",
         "0x0",
         "0x1",
         "0x1",
         "0x2b",
         "0x0"
      ],
      "contract_address_salt": "0x23371b227eaecd8e8920cd429d2cd0f3fee6abaacca08d3ab82a7cdd",
      "signature": [
         "3557065757165699682249469970267166698995647077461960906176449260016084767701",
         "3202126414680946801789588986259466145787792017299869598314522555275920413944"
      ],
      "max_fee": "0x4f388496839",
      "nonce": "0x7",
      "version": "0x0"
   },
   "id": 1
}'

RESULT:

{
    "jsonrpc": "2.0",
    "result": {
        "transaction_hash": "0x1ce0d76c0c085306fd32679b75f9541fab71851da8d3e3898a691b49ed8175c"
    },
    "id": 1
}
