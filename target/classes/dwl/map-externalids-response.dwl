/**
 * Order external Id response mapping
 * 
 */
%dw 2.0
output application/json
---
/**
 * Maps CIM external IDs to Salesforce
 * @table Salesforce,CIM,Description
 * @row Type,externalIdType,The type of external identifier
 * @row Name,externalIdType,The display name of the external ID Type
 * @row SortOrder,number,The preferred display position of an item in the list
 * @row Id,externalId,The actual external identifier
 * @row LastChanged,statusLastChangedDate,The last status changed date
 */
payload map (item, index) -> {
	Type: item.externalIdType[0],
	Name: item.externalIdType[0] match {
		case "CORE_BANKING" -> "Core Banking"
		case "CREDIT_CARD" -> "Credit Card"
		case "DOCUSIGN" -> "DocuSign"
		case "FIS" -> "FIS"
		case "HOGAN" -> "Hogan"
		case "JIRA" -> "Jira"
		case "LOS" -> "LOS"
		case "MDM" -> "Global"
		case "OFBIZ" -> "OMS"
		case "PIM" -> "PIM"
		case "SALESFORCE_B2C" -> "Commerce"
		case "SALESFORCE_CORE" -> "Salesforce"
		case "SALESFORCE_FSC_BANKING" -> "FSC Banking"
		case "SALESFORCE_FSC_INSURANCE" -> "FSC Insurance"
		case "SALESFORCE_FSC_WEALTH" -> "FSC Wealth"
		case "SALESFORCE_MARKETING" -> "Marketing"
		case "SALESFORCE_MANUFACTURING" -> "Manufacturing"
		case "SAP_4HANA" -> "S/4HANA"
		case "SAP_ECC" -> "SAP"
		case "SERVICENOW" -> "SERVICENOW"
		else -> item.externalIdType[0]
	},
	SortOrder: item.externalIdType[0] match {
		case "CORE_BANKING" -> 7
		case "CREDIT_CARD" -> 8
		case "DOCUSIGN" -> 10
		case "FIS" -> 50
		case "HOGAN" -> 51
		case "JIRA" -> 30
		case "LOS" -> 9
		case "MDM" -> 1
		case "OFBIZ" -> 31
		case "PIM" -> "35"
		case "SALESFORCE_B2C" -> 6
		case "SALESFORCE_CORE" -> 2
		case "SALESFORCE_FSC_BANKING" -> 3
		case "SALESFORCE_FSC_INSURANCE" -> 4
		case "SALESFORCE_FSC_WEALTH" -> 5
		case "SALESFORCE_MARKETING" -> 9
		case "SALESFORCE_MANUFACTURING" -> 40
		case "SAP_4HANA" -> 32 
		case "SAP_ECC" -> 33
		case "SERVICENOW" -> 34
		else -> 99
	},
	Id: item.externalId,
	Status: item.status,
	LastChanged: item.statusLastChangedDate default ""
}
