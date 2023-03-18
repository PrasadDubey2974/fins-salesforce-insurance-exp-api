%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    "Type": "MDM",
    "Name": "Global",
    "SortOrder": 1,
    "Id": "2040b06c-b1cc-11ed-857d-5600043798f5",
    "Status": "VALID",
    "LastChanged": "2022-03-28T13:06:58.000Z"
  },
  {
    "Type": "SALESFORCE_FSC_BANKING",
    "Name": "FSC Banking",
    "SortOrder": 3,
    "Id": "",
    "Status": "VALID",
    "LastChanged": "2022-03-28T13:28:54.000Z"
  }
])