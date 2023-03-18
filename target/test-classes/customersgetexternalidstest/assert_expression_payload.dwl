%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    Type: "MDM",
    Name: "Global",
    SortOrder: 1,
    Id: "fdf506a7-4ef0-11ec-b220-0edfa5a1842e",
    Status: "VALID",
    LastChanged: "2021-11-26T19:42:30.000Z"
  }, 
  {
    Type: "SALESFORCE_CORE",
    Name: "Salesforce",
    SortOrder: 2,
    Id: "CUSTAMNZAIYHML12Y",
    Status: "VALID",
    LastChanged: "2021-11-26T19:42:30.000Z"
  }
])