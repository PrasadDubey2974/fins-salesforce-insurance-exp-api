%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo(
	{
    "errorCode": "METHOD_NOT_ALLOWED",
    "errorMessage": "HTTP Method post not allowed for : /contacts/{contactId}/externalIds",
    "transactionId": "36755fe0-c244-11ed-bd1d-72a6ccd9e6b7",
    "timeStamp": "2023-03-14T14:12:54.624+05:30",
    "causedBy": null
}
)