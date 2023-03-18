/**
 * Ping Status Response of the backend APIs
 */
%dw 2.0
output application/java
---
[{
	"name" : vars.backendCheckHost,
	"status" : vars.backendSystemStatus
}]