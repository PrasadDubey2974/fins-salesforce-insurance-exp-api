%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "isValid": false,
  "invalidReason": "Invalid State Code.  "
})