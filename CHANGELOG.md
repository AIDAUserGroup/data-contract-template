This document tracks the history and evolution of the **Open Data Contract Standard**.

# v2.2.1 - 2023-12-18 - APPROVED

* Reformat quality examples to be valid YAML.
* Type of definition for authority have standard values: `businessDefinition`, `transformationImplementation`, `videoTutorial`, `tutorial`, and `implementation`.
* Add in `isUnique`, `primaryKeyPosition`, `partitionKeyPosition`, and `clusterKeyPosition` to `column` definition.
* Add [JSON schema](schema/odcs-json-schema.json) to validate YAML files for v2.2.1.
* Integrated as part of [Bitol](https://lfaidata.foundation/projects/bitol/).
* Reformat Markdown tables.

# v2.2.0 - 2023-07-27 - APPROVED

* New name to Open Data Contract Standard.
* `templateName` is now called `standardVersion`, v2.2.0 parsers should account for this change and support both to avoid a breaking change.
* Added support for `authoritativeDefinitions` at the table level.
* Added many examples.
* Various improvements and typo corrections.
* Finalization of fork under AIDA User Group.

# v2.1.1 - 2023-04-26 - APPROVED

* Open source version.
* Additional value field `valueExt` in SLA.

# v2.1.0 - 2023-03-23 - APPROVED

## Data Quality
The data contract adds elements specifically for interfacing with the Data Quality tooling. 

Additions:
* quality (table level & column level check):
* templateName (called standardVersion since v2.2.0)
* dimension
* type
* severity
* businessImpact
* scheduleCronExpression 
* customProperties
* columns
* isPrimaryKey

## Physical names
The data contract is a logical construct; we add more specific links to the physical world.

## Service-level agreement
The service-level agreements not previously used are more detailed to follow the DP QoS pattern. See SLA.

## Other
Removed the weight for system ratings from the data contract. Their default values remain.

# v2.0.0 - SUPERSEED BY V2.1.0

## Guidelines & Evolution
* [Type case](https://google.github.io/styleguide/jsoncstyleguide.xml?showone=Property_Name_Format#Property_Name_Format)
* Support for SemVer versioning.
* Tags can have values.

## Additions
* Version of contract definition: v2.0.0. A breaking change with v1.
* Description:
  * Purpose (text field).
  * Limitations (text field).
  * Usage (text field).
* Domain.
* Dictionary section:
  * Identification of masked column (encryptedColumnName property), example: the email_decrypted column would be masked by email_encrypted.
  * Flag for critical data element.
  * Added keys for transformation data (sources, logic, description).
  * Sample values.
  * Ability to specify links to authoritative sources at the column level (authoritativeDefinitions).
  * Business name.
* List of stakeholders:
  * Username (user account).
  * Role.
  * Date in.
  * Date out.
  * Replaced by.
* Service levels: agreements & objective [orginal inspiration](https://medium.com/@jgperrin/meet-cactar-the-mongolian-warlord-of-data-quality-d7bdbd6a5398).
* Price / cost.
* Name changes to match PPaaS type case.
* Product data:
  * productDl.
  * productSlackChannel.
  * productFeedbackUrl.
* Renamed `tables` key to `dataset`.
* Removed `owner` key.  Owner is now a stakeholder role.
* Additional quality keys:
  * description.
  * toolName.
  * toolRuleName.
* Custom Properties.
* Product dates:
  * generalAvailabilityDate.
  * endOfSupportDate.
  * endOfLifeDate.

# v1 - DEPRECATED
* Description of the data quantum/data artifact.
* Roles.
* Schema:
  * Tables, columns.
  * Data quality.
* System rating weightage.
* Ratings:
  * System, user, etc.
