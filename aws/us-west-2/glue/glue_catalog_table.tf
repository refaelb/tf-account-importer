resource "aws_glue_catalog_table" "tfer--geisinger-glue-db-003A-departmentdim" {
  catalog_id    = "650251715284"
  database_name = "geisinger-glue-db"
  name          = "departmentdim"
  owner         = "owner"

  parameters = {
    CrawlerSchemaDeserializerVersion = "1.0"
    CrawlerSchemaSerializerVersion   = "1.0"
    UPDATED_BY_CRAWLER               = "GeisingerCrawler"
    areColumnsQuoted                 = "false"
    averageRecordSize                = "752"
    classification                   = "csv"
    columnsOrdered                   = "true"
    compressionType                  = "none"
    delimiter                        = ","
    objectCount                      = "3"
    recordCount                      = "626"
    sizeKey                          = "472483"
    "skip.header.line.count"         = "1"
    typeOfData                       = "file"
  }

  retention = "0"

  storage_descriptor {
    columns {
      name = "address"
      type = "string"
    }

    columns {
      name = "bedepicid"
      type = "string"
    }

    columns {
      name = "bedincensus"
      type = "string"
    }

    columns {
      name = "bedname"
      type = "string"
    }

    columns {
      name = "careareaepicid"
      type = "string"
    }

    columns {
      name = "careareaname"
      type = "string"
    }

    columns {
      name = "city"
      type = "string"
    }

    columns {
      name = "country"
      type = "string"
    }

    columns {
      name = "county"
      type = "string"
    }

    columns {
      name = "departmentabbreviation"
      type = "string"
    }

    columns {
      name = "departmentcenter"
      type = "string"
    }

    columns {
      name = "departmentepicid"
      type = "string"
    }

    columns {
      name = "departmentexternalname"
      type = "string"
    }

    columns {
      name = "departmentkey"
      type = "bigint"
    }

    columns {
      name = "departmentlevelofcaregrouper"
      type = "string"
    }

    columns {
      name = "departmentname"
      type = "string"
    }

    columns {
      name = "departmentservicegrouper"
      type = "string"
    }

    columns {
      name = "departmentspecialty"
      type = "string"
    }

    columns {
      name = "departmentspecialtyabbreviation"
      type = "string"
    }

    columns {
      name = "departmentspecialtyepicid"
      type = "bigint"
    }

    columns {
      name = "departmentstandardspecialty"
      type = "string"
    }

    columns {
      name = "departmenttype"
      type = "string"
    }

    columns {
      name = "emrparticipantlevel"
      type = "string"
    }

    columns {
      name = "homecareccn"
      type = "string"
    }

    columns {
      name = "isbed"
      type = "bigint"
    }

    columns {
      name = "isbehavioralhealth"
      type = "bigint"
    }

    columns {
      name = "isbusinesssegment"
      type = "bigint"
    }

    columns {
      name = "iscarearea"
      type = "bigint"
    }

    columns {
      name = "isdepartment"
      type = "bigint"
    }

    columns {
      name = "isfacilityprofile"
      type = "bigint"
    }

    columns {
      name = "islocation"
      type = "bigint"
    }

    columns {
      name = "isroom"
      type = "bigint"
    }

    columns {
      name = "isroomgroup"
      type = "bigint"
    }

    columns {
      name = "isservicearea"
      type = "bigint"
    }

    columns {
      name = "isserviceareaorbusinesssegment"
      type = "bigint"
    }

    columns {
      name = "issubmitter"
      type = "bigint"
    }

    columns {
      name = "licensetype"
      type = "string"
    }

    columns {
      name = "locationabbreviation"
      type = "string"
    }

    columns {
      name = "locationccn"
      type = "string"
    }

    columns {
      name = "locationccnepicid"
      type = "bigint"
    }

    columns {
      name = "locationepicid"
      type = "bigint"
    }

    columns {
      name = "locationname"
      type = "string"
    }

    columns {
      name = "name"
      type = "string"
    }

    columns {
      name = "otherareaname"
      type = "string"
    }

    columns {
      name = "parentlocationepicid"
      type = "bigint"
    }

    columns {
      name = "parentlocationname"
      type = "string"
    }

    columns {
      name = "postalcode"
      type = "string"
    }

    columns {
      name = "regionepicid"
      type = "bigint"
    }

    columns {
      name = "regionname"
      type = "string"
    }

    columns {
      name = "restricteddepartment"
      type = "double"
    }

    columns {
      name = "roomepicid"
      type = "string"
    }

    columns {
      name = "roomgroupepicid"
      type = "string"
    }

    columns {
      name = "roomgroupname"
      type = "string"
    }

    columns {
      name = "roomname"
      type = "string"
    }

    columns {
      name = "serviceareaepicid"
      type = "bigint"
    }

    columns {
      name = "serviceareaname"
      type = "string"
    }

    columns {
      name = "stateorprovince"
      type = "string"
    }

    columns {
      name = "stateorprovinceabbreviation"
      type = "string"
    }

    columns {
      name = "status_creationinstant"
      type = "string"
    }

    columns {
      name = "status_lastupdateddate"
      type = "string"
    }

    columns {
      name = "submitterepicid"
      type = "string"
    }

    columns {
      name = "type"
      type = "string"
    }

    compressed        = "false"
    input_format      = "org.apache.hadoop.mapred.TextInputFormat"
    location          = "s3://geisinger-data-bucket/glue_tables/DepartmentDim/"
    number_of_buckets = "-1"
    output_format     = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    parameters = {
      CrawlerSchemaDeserializerVersion = "1.0"
      CrawlerSchemaSerializerVersion   = "1.0"
      UPDATED_BY_CRAWLER               = "GeisingerCrawler"
      areColumnsQuoted                 = "false"
      averageRecordSize                = "752"
      classification                   = "csv"
      columnsOrdered                   = "true"
      compressionType                  = "none"
      delimiter                        = ","
      objectCount                      = "3"
      recordCount                      = "626"
      sizeKey                          = "472483"
      "skip.header.line.count"         = "1"
      typeOfData                       = "file"
    }

    ser_de_info {
      parameters = {
        "field.delim" = ","
      }

      serialization_library = "org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe"
    }

    stored_as_sub_directories = "false"
  }

  table_type = "EXTERNAL_TABLE"
}

resource "aws_glue_catalog_table" "tfer--geisinger-glue-db-003A-patientdim" {
  catalog_id    = "650251715284"
  database_name = "geisinger-glue-db"
  name          = "patientdim"
  owner         = "owner"

  parameters = {
    CrawlerSchemaDeserializerVersion = "1.0"
    CrawlerSchemaSerializerVersion   = "1.0"
    UPDATED_BY_CRAWLER               = "GeisingerCrawler"
    areColumnsQuoted                 = "false"
    averageRecordSize                = "768"
    classification                   = "csv"
    columnsOrdered                   = "true"
    compressionType                  = "none"
    delimiter                        = ","
    objectCount                      = "1"
    recordCount                      = "15725"
    sizeKey                          = "12076800"
    "skip.header.line.count"         = "1"
    typeOfData                       = "file"
  }

  retention = "0"

  storage_descriptor {
    columns {
      name = "address"
      type = "string"
    }

    columns {
      name = "addresskey"
      type = "bigint"
    }

    columns {
      name = "areadeprivationindexkey"
      type = "bigint"
    }

    columns {
      name = "birthdate"
      type = "string"
    }

    columns {
      name = "censusblockgroupfipscode"
      type = "string"
    }

    columns {
      name = "censustractkey"
      type = "bigint"
    }

    columns {
      name = "city"
      type = "string"
    }

    columns {
      name = "confirmationstatuscombokey"
      type = "bigint"
    }

    columns {
      name = "country"
      type = "string"
    }

    columns {
      name = "countryoforigin"
      type = "string"
    }

    columns {
      name = "county"
      type = "string"
    }

    columns {
      name = "deathdate"
      type = "string"
    }

    columns {
      name = "deathinstant"
      type = "string"
    }

    columns {
      name = "deathlocation"
      type = "string"
    }

    columns {
      name = "dualstatuscode"
      type = "string"
    }

    columns {
      name = "durablekey"
      type = "bigint"
    }

    columns {
      name = "emailaddress"
      type = "string"
    }

    columns {
      name = "enddate"
      type = "string"
    }

    columns {
      name = "enterpriseid"
      type = "string"
    }

    columns {
      name = "ethnicity"
      type = "string"
    }

    columns {
      name = "fifthrace"
      type = "string"
    }

    columns {
      name = "firstname"
      type = "string"
    }

    columns {
      name = "firstrace"
      type = "string"
    }

    columns {
      name = "fourthrace"
      type = "string"
    }

    columns {
      name = "genderidentity"
      type = "string"
    }

    columns {
      name = "highestlevelofeducation"
      type = "string"
    }

    columns {
      name = "homephonenumber"
      type = "string"
    }

    columns {
      name = "indigenousstatus"
      type = "string"
    }

    columns {
      name = "iscurrent"
      type = "boolean"
    }

    columns {
      name = "ishistoricalpatient"
      type = "bigint"
    }

    columns {
      name = "isvalid"
      type = "bigint"
    }

    columns {
      name = "lastimmunizationqueryinstantutc"
      type = "string"
    }

    columns {
      name = "lastname"
      type = "string"
    }

    columns {
      name = "maritalstatus"
      type = "string"
    }

    columns {
      name = "medicarehospiceenrollmentenddate"
      type = "string"
    }

    columns {
      name = "medicarehospiceenrollmentstartdate"
      type = "string"
    }

    columns {
      name = "medicarepartaentitlementstartdate"
      type = "string"
    }

    columns {
      name = "medicarepartbentitlementstartdate"
      type = "string"
    }

    columns {
      name = "middlename"
      type = "string"
    }

    columns {
      name = "mychartstatus"
      type = "string"
    }

    columns {
      name = "name"
      type = "string"
    }

    columns {
      name = "originalmedicareentitlementreasoncode"
      type = "bigint"
    }

    columns {
      name = "patientepicid"
      type = "bigint"
    }

    columns {
      name = "patientkey"
      type = "bigint"
    }

    columns {
      name = "patientracecombokey"
      type = "bigint"
    }

    columns {
      name = "patienttypecombokey"
      type = "bigint"
    }

    columns {
      name = "postalcode"
      type = "string"
    }

    columns {
      name = "postalcodekey"
      type = "bigint"
    }

    columns {
      name = "preferredlanguage"
      type = "string"
    }

    columns {
      name = "preferredname"
      type = "string"
    }

    columns {
      name = "preliminarycauseofdeathdiagnosiskey"
      type = "bigint"
    }

    columns {
      name = "primarycareproviderdurablekey"
      type = "bigint"
    }

    columns {
      name = "primarycareproviderkey"
      type = "bigint"
    }

    columns {
      name = "primaryfinancialclass"
      type = "string"
    }

    columns {
      name = "primarymrn"
      type = "bigint"
    }

    columns {
      name = "problemcombokey"
      type = "bigint"
    }

    columns {
      name = "religion"
      type = "string"
    }

    columns {
      name = "restricted"
      type = "bigint"
    }

    columns {
      name = "secondrace"
      type = "string"
    }

    columns {
      name = "sex"
      type = "string"
    }

    columns {
      name = "sexassignedatbirth"
      type = "string"
    }

    columns {
      name = "sexualorientation"
      type = "string"
    }

    columns {
      name = "smokingstatus"
      type = "string"
    }

    columns {
      name = "ssn"
      type = "string"
    }

    columns {
      name = "startdate"
      type = "string"
    }

    columns {
      name = "stateorprovince"
      type = "string"
    }

    columns {
      name = "stateorprovinceabbreviation"
      type = "string"
    }

    columns {
      name = "status"
      type = "string"
    }

    columns {
      name = "status_creationinstant"
      type = "string"
    }

    columns {
      name = "status_lastupdateddate"
      type = "string"
    }

    columns {
      name = "test"
      type = "bigint"
    }

    columns {
      name = "thirdrace"
      type = "string"
    }

    columns {
      name = "workphonenumber"
      type = "string"
    }

    compressed        = "false"
    input_format      = "org.apache.hadoop.mapred.TextInputFormat"
    location          = "s3://geisinger-data-bucket/glue_tables/PatientDim/"
    number_of_buckets = "-1"
    output_format     = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    parameters = {
      CrawlerSchemaDeserializerVersion = "1.0"
      CrawlerSchemaSerializerVersion   = "1.0"
      UPDATED_BY_CRAWLER               = "GeisingerCrawler"
      areColumnsQuoted                 = "false"
      averageRecordSize                = "768"
      classification                   = "csv"
      columnsOrdered                   = "true"
      compressionType                  = "none"
      delimiter                        = ","
      objectCount                      = "1"
      recordCount                      = "15725"
      sizeKey                          = "12076800"
      "skip.header.line.count"         = "1"
      typeOfData                       = "file"
    }

    ser_de_info {
      parameters = {
        "field.delim" = ","
      }

      serialization_library = "org.apache.hadoop.hive.serde2.OpenCSVSerde"
    }

    stored_as_sub_directories = "false"
  }

  table_type = "EXTERNAL_TABLE"
}

resource "aws_glue_catalog_table" "tfer--geisinger-glue-db-003A-proceduredim" {
  catalog_id    = "650251715284"
  database_name = "geisinger-glue-db"
  name          = "proceduredim"
  owner         = "owner"

  parameters = {
    CrawlerSchemaDeserializerVersion = "1.0"
    CrawlerSchemaSerializerVersion   = "1.0"
    UPDATED_BY_CRAWLER               = "GeisingerCrawler"
    areColumnsQuoted                 = "false"
    averageRecordSize                = "371"
    classification                   = "csv"
    columnsOrdered                   = "true"
    compressionType                  = "none"
    customSerde                      = "OpenCSVSerDe"
    delimiter                        = ","
    objectCount                      = "13"
    recordCount                      = "14808"
    sizeKey                          = "5534025"
    "skip.header.line.count"         = "1"
    typeOfData                       = "file"
  }

  retention = "0"

  storage_descriptor {
    columns {
      name = "adacode"
      type = "string"
    }

    columns {
      name = "asacode"
      type = "string"
    }

    columns {
      name = "category"
      type = "string"
    }

    columns {
      name = "clinicalclassificationsoftwaregroupepicid"
      type = "string"
    }

    columns {
      name = "code"
      type = "string"
    }

    columns {
      name = "codeset"
      type = "string"
    }

    columns {
      name = "cptcode"
      type = "string"
    }

    columns {
      name = "durablekey"
      type = "bigint"
    }

    columns {
      name = "enddate"
      type = "string"
    }

    columns {
      name = "hcpcscode"
      type = "string"
    }

    columns {
      name = "iscurrent"
      type = "boolean"
    }

    columns {
      name = "islungscreeningprogramprocedure"
      type = "string"
    }

    columns {
      name = "level"
      type = "string"
    }

    columns {
      name = "name"
      type = "string"
    }

    columns {
      name = "othercode"
      type = "string"
    }

    columns {
      name = "othercodetype"
      type = "string"
    }

    columns {
      name = "patientfriendlyname"
      type = "string"
    }

    columns {
      name = "procedureepicid"
      type = "string"
    }

    columns {
      name = "procedurekey"
      type = "bigint"
    }

    columns {
      name = "resultreporttype"
      type = "string"
    }

    columns {
      name = "revenuecode"
      type = "string"
    }

    columns {
      name = "screeningprogramproceduretype"
      type = "string"
    }

    columns {
      name = "shortname"
      type = "string"
    }

    columns {
      name = "startdate"
      type = "string"
    }

    columns {
      name = "status_creationinstant"
      type = "string"
    }

    columns {
      name = "status_lastupdateddate"
      type = "string"
    }

    compressed        = "false"
    input_format      = "org.apache.hadoop.mapred.TextInputFormat"
    location          = "s3://geisinger-data-bucket/glue_tables/ProcedureDim/"
    number_of_buckets = "-1"
    output_format     = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    parameters = {
      CrawlerSchemaDeserializerVersion = "1.0"
      CrawlerSchemaSerializerVersion   = "1.0"
      UPDATED_BY_CRAWLER               = "GeisingerCrawler"
      areColumnsQuoted                 = "false"
      averageRecordSize                = "371"
      classification                   = "csv"
      columnsOrdered                   = "true"
      compressionType                  = "none"
      customSerde                      = "OpenCSVSerDe"
      delimiter                        = ","
      objectCount                      = "13"
      recordCount                      = "14808"
      sizeKey                          = "5534025"
      "skip.header.line.count"         = "1"
      typeOfData                       = "file"
    }

    ser_de_info {
      parameters = {
        "field.delim" = ","
      }

      serialization_library = "org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe"
    }

    stored_as_sub_directories = "false"
  }

  table_type = "EXTERNAL_TABLE"
}

resource "aws_glue_catalog_table" "tfer--geisinger-glue-db-003A-providerdim" {
  catalog_id    = "650251715284"
  database_name = "geisinger-glue-db"
  name          = "providerdim"
  owner         = "owner"

  parameters = {
    CrawlerSchemaDeserializerVersion = "1.0"
    CrawlerSchemaSerializerVersion   = "1.0"
    UPDATED_BY_CRAWLER               = "GeisingerCrawler"
    areColumnsQuoted                 = "false"
    averageRecordSize                = "601"
    classification                   = "csv"
    columnsOrdered                   = "true"
    compressionType                  = "none"
    delimiter                        = ","
    objectCount                      = "3"
    recordCount                      = "2101"
    sizeKey                          = "1264776"
    "skip.header.line.count"         = "1"
    typeOfData                       = "file"
  }

  retention = "0"

  storage_descriptor {
    columns {
      name = "anesthesiaprovidergroup"
      type = "string"
    }

    columns {
      name = "cliniciantitle"
      type = "string"
    }

    columns {
      name = "deanumber"
      type = "string"
    }

    columns {
      name = "durablekey"
      type = "bigint"
    }

    columns {
      name = "email"
      type = "string"
    }

    columns {
      name = "employeedurablekey"
      type = "bigint"
    }

    columns {
      name = "employeeepicid"
      type = "string"
    }

    columns {
      name = "enddate"
      type = "string"
    }

    columns {
      name = "entitytype"
      type = "string"
    }

    columns {
      name = "fifthspecialty"
      type = "string"
    }

    columns {
      name = "fourthspecialty"
      type = "string"
    }

    columns {
      name = "generic"
      type = "double"
    }

    columns {
      name = "iscurrent"
      type = "boolean"
    }

    columns {
      name = "ismedicationauthorizingprovider"
      type = "double"
    }

    columns {
      name = "medicaididnumber"
      type = "string"
    }

    columns {
      name = "medicareidnumber"
      type = "string"
    }

    columns {
      name = "name"
      type = "string"
    }

    columns {
      name = "npi"
      type = "string"
    }

    columns {
      name = "officeaddress"
      type = "string"
    }

    columns {
      name = "officecity"
      type = "string"
    }

    columns {
      name = "officecountry"
      type = "string"
    }

    columns {
      name = "officecounty"
      type = "string"
    }

    columns {
      name = "officephonenumber"
      type = "string"
    }

    columns {
      name = "officepostalcode"
      type = "string"
    }

    columns {
      name = "officestateorprovince"
      type = "string"
    }

    columns {
      name = "officestateorprovinceabbreviation"
      type = "string"
    }

    columns {
      name = "primarydepartment"
      type = "string"
    }

    columns {
      name = "primarydepartmentepicid"
      type = "string"
    }

    columns {
      name = "primarylocation"
      type = "string"
    }

    columns {
      name = "primaryservicearea"
      type = "string"
    }

    columns {
      name = "primaryspecialty"
      type = "string"
    }

    columns {
      name = "primaryspecialtycmscode"
      type = "string"
    }

    columns {
      name = "primaryspecialtycmsname"
      type = "string"
    }

    columns {
      name = "primaryspecialtytaxonomycode"
      type = "string"
    }

    columns {
      name = "primaryspecialtytaxonomyname"
      type = "string"
    }

    columns {
      name = "providerdirectoryepicid"
      type = "string"
    }

    columns {
      name = "providerepicid"
      type = "string"
    }

    columns {
      name = "providerkey"
      type = "bigint"
    }

    columns {
      name = "resident"
      type = "double"
    }

    columns {
      name = "secondspecialty"
      type = "string"
    }

    columns {
      name = "sex"
      type = "string"
    }

    columns {
      name = "sixthspecialty"
      type = "string"
    }

    columns {
      name = "startdate"
      type = "string"
    }

    columns {
      name = "status_creationinstant"
      type = "string"
    }

    columns {
      name = "status_lastupdateddate"
      type = "string"
    }

    columns {
      name = "thirdspecialty"
      type = "string"
    }

    columns {
      name = "type"
      type = "string"
    }

    columns {
      name = "upin"
      type = "string"
    }

    compressed        = "false"
    input_format      = "org.apache.hadoop.mapred.TextInputFormat"
    location          = "s3://geisinger-data-bucket/glue_tables/ProviderDim/"
    number_of_buckets = "-1"
    output_format     = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    parameters = {
      CrawlerSchemaDeserializerVersion = "1.0"
      CrawlerSchemaSerializerVersion   = "1.0"
      UPDATED_BY_CRAWLER               = "GeisingerCrawler"
      areColumnsQuoted                 = "false"
      averageRecordSize                = "601"
      classification                   = "csv"
      columnsOrdered                   = "true"
      compressionType                  = "none"
      delimiter                        = ","
      objectCount                      = "3"
      recordCount                      = "2101"
      sizeKey                          = "1264776"
      "skip.header.line.count"         = "1"
      typeOfData                       = "file"
    }

    ser_de_info {
      parameters = {
        "field.delim" = ","
      }

      serialization_library = "org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe"
    }

    stored_as_sub_directories = "false"
  }

  table_type = "EXTERNAL_TABLE"
}

resource "aws_glue_catalog_table" "tfer--geisinger-glue-db-003A-surgicalcasefact" {
  catalog_id    = "650251715284"
  database_name = "geisinger-glue-db"
  name          = "surgicalcasefact"
  owner         = "owner"

  parameters = {
    CrawlerSchemaDeserializerVersion = "1.0"
    CrawlerSchemaSerializerVersion   = "1.0"
    UPDATED_BY_CRAWLER               = "GeisingerCrawler"
    areColumnsQuoted                 = "false"
    averageRecordSize                = "1757"
    classification                   = "csv"
    columnsOrdered                   = "true"
    compressionType                  = "none"
    delimiter                        = ","
    objectCount                      = "1"
    recordCount                      = "13711"
    sizeKey                          = "24090841"
    "skip.header.line.count"         = "1"
    typeOfData                       = "file"
  }

  retention = "0"

  storage_descriptor {
    columns {
      name = "admissiondatekey"
      type = "bigint"
    }

    columns {
      name = "admissioninstant"
      type = "string"
    }

    columns {
      name = "admissionpatientclass"
      type = "string"
    }

    columns {
      name = "anesthesiacloseencounterdatekey"
      type = "bigint"
    }

    columns {
      name = "anesthesiacloseencounterinstant"
      type = "string"
    }

    columns {
      name = "anesthesiaemergenceinstant"
      type = "string"
    }

    columns {
      name = "anesthesiainductiondatekey"
      type = "bigint"
    }

    columns {
      name = "anesthesiainductioninstant"
      type = "string"
    }

    columns {
      name = "anesthesiainductiontimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "anesthesiareadydatekey"
      type = "bigint"
    }

    columns {
      name = "anesthesiareadyinstant"
      type = "string"
    }

    columns {
      name = "anesthesiareadytimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "anesthesiasignoffinstant"
      type = "string"
    }

    columns {
      name = "anesthesiastartdatekey"
      type = "bigint"
    }

    columns {
      name = "anesthesiastartinstant"
      type = "string"
    }

    columns {
      name = "anesthesiastarttimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "anesthesiastopdatekey"
      type = "bigint"
    }

    columns {
      name = "anesthesiastopinstant"
      type = "string"
    }

    columns {
      name = "anesthesiastoptimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "billedasascore"
      type = "string"
    }

    columns {
      name = "canceled"
      type = "bigint"
    }

    columns {
      name = "casediagnosiscombokey"
      type = "bigint"
    }

    columns {
      name = "caselengthaccuracyoverunder"
      type = "string"
    }

    columns {
      name = "caserequestdatekey"
      type = "bigint"
    }

    columns {
      name = "caserequestinstant"
      type = "string"
    }

    columns {
      name = "caserequesttimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "classification"
      type = "string"
    }

    columns {
      name = "confidential"
      type = "string"
    }

    columns {
      name = "count"
      type = "bigint"
    }

    columns {
      name = "countssummary"
      type = "string"
    }

    columns {
      name = "deathdatekey"
      type = "bigint"
    }

    columns {
      name = "delayreason"
      type = "string"
    }

    columns {
      name = "delaytype"
      type = "string"
    }

    columns {
      name = "dischargedatekey"
      type = "bigint"
    }

    columns {
      name = "dischargedisposition"
      type = "string"
    }

    columns {
      name = "dischargeinstant"
      type = "string"
    }

    columns {
      name = "firstanesthesiaproviderdurablekey"
      type = "bigint"
    }

    columns {
      name = "firstanesthesiaproviderkey"
      type = "bigint"
    }

    columns {
      name = "hospitalencounterkey"
      type = "bigint"
    }

    columns {
      name = "lastanesthesiaaddendumdatekey"
      type = "bigint"
    }

    columns {
      name = "lastanesthesiaaddenduminstant"
      type = "string"
    }

    columns {
      name = "locationkey"
      type = "bigint"
    }

    columns {
      name = "logstatus"
      type = "string"
    }

    columns {
      name = "numberofpanels"
      type = "double"
    }

    columns {
      name = "numberofprocedures"
      type = "double"
    }

    columns {
      name = "operatingroomkey"
      type = "bigint"
    }

    columns {
      name = "pacucarecompletedatekey"
      type = "bigint"
    }

    columns {
      name = "pacucarecompleteinstant"
      type = "string"
    }

    columns {
      name = "pacucarecompletetimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "paculevel"
      type = "string"
    }

    columns {
      name = "patientdurablekey"
      type = "bigint"
    }

    columns {
      name = "patientinfacilitydatekey"
      type = "bigint"
    }

    columns {
      name = "patientinfacilityinstant"
      type = "string"
    }

    columns {
      name = "patientinfacilitytimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "patientinpacudatekey"
      type = "bigint"
    }

    columns {
      name = "patientinpacuinstant"
      type = "string"
    }

    columns {
      name = "patientinpacutimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "patientinpostopdatekey"
      type = "bigint"
    }

    columns {
      name = "patientinpostopinstant"
      type = "string"
    }

    columns {
      name = "patientinpostoptimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "patientinpreproceduredatekey"
      type = "bigint"
    }

    columns {
      name = "patientinpreprocedureinstant"
      type = "string"
    }

    columns {
      name = "patientinpreproceduretimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "patientinroomdatekey"
      type = "bigint"
    }

    columns {
      name = "patientinroominstant"
      type = "string"
    }

    columns {
      name = "patientinroomtimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "patientkey"
      type = "bigint"
    }

    columns {
      name = "patientoutofpacudatekey"
      type = "bigint"
    }

    columns {
      name = "patientoutofpacuinstant"
      type = "string"
    }

    columns {
      name = "patientoutofpacutimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "patientoutofpostopdatekey"
      type = "bigint"
    }

    columns {
      name = "patientoutofpostopinstant"
      type = "string"
    }

    columns {
      name = "patientoutofpostoptimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "patientoutofroomdatekey"
      type = "bigint"
    }

    columns {
      name = "patientoutofroominstant"
      type = "string"
    }

    columns {
      name = "patientoutofroomtimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "postopcarecompletedatekey"
      type = "bigint"
    }

    columns {
      name = "postopcarecompleteinstant"
      type = "string"
    }

    columns {
      name = "postopcarecompletetimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "postopdiagnosiscombokey"
      type = "bigint"
    }

    columns {
      name = "postoplevel"
      type = "string"
    }

    columns {
      name = "preprocedurecompletedatekey"
      type = "bigint"
    }

    columns {
      name = "preprocedurecompleteinstant"
      type = "string"
    }

    columns {
      name = "preprocedurecompletetimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "preprocedurediagnosiscombokey"
      type = "bigint"
    }

    columns {
      name = "preprocedurelevel"
      type = "string"
    }

    columns {
      name = "primaryanesthesiatype"
      type = "string"
    }

    columns {
      name = "primarycirculatordurablekey"
      type = "bigint"
    }

    columns {
      name = "primarycirculatorkey"
      type = "bigint"
    }

    columns {
      name = "primarypacunursedurablekey"
      type = "bigint"
    }

    columns {
      name = "primarypacunursekey"
      type = "bigint"
    }

    columns {
      name = "primarypostopnursedurablekey"
      type = "bigint"
    }

    columns {
      name = "primarypostopnursekey"
      type = "bigint"
    }

    columns {
      name = "primarypreprocedurenursedurablekey"
      type = "bigint"
    }

    columns {
      name = "primarypreprocedurenursekey"
      type = "bigint"
    }

    columns {
      name = "primaryprocedureapproach"
      type = "string"
    }

    columns {
      name = "primaryprocedurecodedurablekey"
      type = "bigint"
    }

    columns {
      name = "primaryprocedurecodekey"
      type = "bigint"
    }

    columns {
      name = "primaryproceduredurablekey"
      type = "bigint"
    }

    columns {
      name = "primaryprocedurekey"
      type = "bigint"
    }

    columns {
      name = "primaryprocedurelaterality"
      type = "string"
    }

    columns {
      name = "primaryprocedurewoundclass"
      type = "string"
    }

    columns {
      name = "primaryscrubnursedurablekey"
      type = "bigint"
    }

    columns {
      name = "primaryscrubnursekey"
      type = "bigint"
    }

    columns {
      name = "primaryservice"
      type = "string"
    }

    columns {
      name = "primarysurgeondurablekey"
      type = "bigint"
    }

    columns {
      name = "primarysurgeonkey"
      type = "bigint"
    }

    columns {
      name = "primarysurgicaltechdurablekey"
      type = "bigint"
    }

    columns {
      name = "primarysurgicaltechkey"
      type = "bigint"
    }

    columns {
      name = "procedurecompletedatekey"
      type = "bigint"
    }

    columns {
      name = "procedurecompleteinstant"
      type = "string"
    }

    columns {
      name = "procedurecompletetimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "procedurelevel"
      type = "string"
    }

    columns {
      name = "procedurenotperformed"
      type = "double"
    }

    columns {
      name = "procedurestartdatekey"
      type = "bigint"
    }

    columns {
      name = "procedurestartinstant"
      type = "string"
    }

    columns {
      name = "procedurestarttimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "reasonnotperformed"
      type = "string"
    }

    columns {
      name = "responsibleanesthesiologistdurablekey"
      type = "bigint"
    }

    columns {
      name = "responsibleanesthesiologistkey"
      type = "bigint"
    }

    columns {
      name = "roomcleanupcompletedatekey"
      type = "bigint"
    }

    columns {
      name = "roomcleanupcompleteinstant"
      type = "string"
    }

    columns {
      name = "roomcleanupcompletetimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "roomcleanupstartdatekey"
      type = "bigint"
    }

    columns {
      name = "roomcleanupstartinstant"
      type = "string"
    }

    columns {
      name = "roomcleanupstarttimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "roomreadydatekey"
      type = "bigint"
    }

    columns {
      name = "roomreadyinstant"
      type = "string"
    }

    columns {
      name = "roomreadytimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "roomsetupstartdatekey"
      type = "bigint"
    }

    columns {
      name = "roomsetupstartinstant"
      type = "string"
    }

    columns {
      name = "roomsetupstarttimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "scheduledcleanupcompletedatekey"
      type = "bigint"
    }

    columns {
      name = "scheduledcleanupcompleteinstant"
      type = "string"
    }

    columns {
      name = "scheduledcleanupcompletetimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "scheduledinroomdatekey"
      type = "bigint"
    }

    columns {
      name = "scheduledinroominstant"
      type = "string"
    }

    columns {
      name = "scheduledinroomtimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "scheduledoutofroomdatekey"
      type = "bigint"
    }

    columns {
      name = "scheduledoutofroominstant"
      type = "string"
    }

    columns {
      name = "scheduledoutofroomtimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "scheduledsetupstartdatekey"
      type = "bigint"
    }

    columns {
      name = "scheduledsetupstartinstant"
      type = "string"
    }

    columns {
      name = "scheduledsetupstarttimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "status_creationinstant"
      type = "string"
    }

    columns {
      name = "status_lastupdateddate"
      type = "string"
    }

    columns {
      name = "surgerydatekey"
      type = "bigint"
    }

    columns {
      name = "surgeryencounterkey"
      type = "bigint"
    }

    columns {
      name = "surgerypatientclass"
      type = "string"
    }

    columns {
      name = "surgicalcaseepicid"
      type = "bigint"
    }

    columns {
      name = "surgicalcasekey"
      type = "bigint"
    }

    compressed        = "false"
    input_format      = "org.apache.hadoop.mapred.TextInputFormat"
    location          = "s3://geisinger-data-bucket/glue_tables/SurgicalCaseFact/"
    number_of_buckets = "-1"
    output_format     = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    parameters = {
      CrawlerSchemaDeserializerVersion = "1.0"
      CrawlerSchemaSerializerVersion   = "1.0"
      UPDATED_BY_CRAWLER               = "GeisingerCrawler"
      areColumnsQuoted                 = "false"
      averageRecordSize                = "1757"
      classification                   = "csv"
      columnsOrdered                   = "true"
      compressionType                  = "none"
      delimiter                        = ","
      objectCount                      = "1"
      recordCount                      = "13711"
      sizeKey                          = "24090841"
      "skip.header.line.count"         = "1"
      typeOfData                       = "file"
    }

    ser_de_info {
      parameters = {
        "field.delim" = ","
      }

      serialization_library = "org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe"
    }

    stored_as_sub_directories = "false"
  }

  table_type = "EXTERNAL_TABLE"
}

resource "aws_glue_catalog_table" "tfer--geisinger-glue-db-003A-visitfact" {
  catalog_id    = "650251715284"
  database_name = "geisinger-glue-db"
  name          = "visitfact"
  owner         = "owner"

  parameters = {
    CrawlerSchemaDeserializerVersion = "1.0"
    CrawlerSchemaSerializerVersion   = "1.0"
    UPDATED_BY_CRAWLER               = "GeisingerCrawler"
    areColumnsQuoted                 = "false"
    averageRecordSize                = "983"
    classification                   = "csv"
    columnsOrdered                   = "true"
    compressionType                  = "none"
    delimiter                        = ","
    objectCount                      = "3"
    recordCount                      = "55103"
    sizeKey                          = "54181119"
    "skip.header.line.count"         = "1"
    typeOfData                       = "file"
  }

  retention = "0"

  storage_descriptor {
    columns {
      name = "allergiesreviewed"
      type = "bigint"
    }

    columns {
      name = "appointmentcancellationdatekey"
      type = "bigint"
    }

    columns {
      name = "appointmentconfirmationstatus"
      type = "string"
    }

    columns {
      name = "appointmentcreationdatekey"
      type = "bigint"
    }

    columns {
      name = "appointmentdatekey"
      type = "bigint"
    }

    columns {
      name = "appointmententryemployeedurablekey"
      type = "bigint"
    }

    columns {
      name = "appointmentgrouplink"
      type = "string"
    }

    columns {
      name = "appointmentinstant"
      type = "string"
    }

    columns {
      name = "appointmentlayoverlength"
      type = "string"
    }

    columns {
      name = "appointmentlengthinminutes"
      type = "double"
    }

    columns {
      name = "appointmentserialnumber"
      type = "bigint"
    }

    columns {
      name = "appointmentstatus"
      type = "string"
    }

    columns {
      name = "appointmenttimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "authorizationstatus"
      type = "string"
    }

    columns {
      name = "avsprinted"
      type = "bigint"
    }

    columns {
      name = "bodymassindex"
      type = "double"
    }

    columns {
      name = "bodymassindexpercentile"
      type = "string"
    }

    columns {
      name = "bodymassindexpercentilegrowthchart"
      type = "string"
    }

    columns {
      name = "cancellationinstant"
      type = "string"
    }

    columns {
      name = "checkedinwithkiosk"
      type = "bigint"
    }

    columns {
      name = "checkindatekey"
      type = "bigint"
    }

    columns {
      name = "checkininstant"
      type = "string"
    }

    columns {
      name = "checkintimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "checkoutdatekey"
      type = "bigint"
    }

    columns {
      name = "checkoutinstant"
      type = "string"
    }

    columns {
      name = "checkouttimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "closed"
      type = "string"
    }

    columns {
      name = "closeddatekey"
      type = "bigint"
    }

    columns {
      name = "complete"
      type = "bigint"
    }

    columns {
      name = "copaycollected"
      type = "double"
    }

    columns {
      name = "copaydue"
      type = "double"
    }

    columns {
      name = "count"
      type = "bigint"
    }

    columns {
      name = "coveragekey"
      type = "bigint"
    }

    columns {
      name = "dayssavedbyautowaitlist"
      type = "string"
    }

    columns {
      name = "departmentkey"
      type = "bigint"
    }

    columns {
      name = "diastolicbloodpressure"
      type = "double"
    }

    columns {
      name = "encounterclosedbyproviderdurablekey"
      type = "bigint"
    }

    columns {
      name = "encounterclosedbyproviderkey"
      type = "bigint"
    }

    columns {
      name = "encounterdatekey"
      type = "bigint"
    }

    columns {
      name = "encounterdiagnosiscombokey"
      type = "bigint"
    }

    columns {
      name = "encounterepiccsn"
      type = "bigint"
    }

    columns {
      name = "encounterkey"
      type = "bigint"
    }

    columns {
      name = "encountertype"
      type = "string"
    }

    columns {
      name = "financialclass"
      type = "string"
    }

    columns {
      name = "fourthvisitproviderdurablekey"
      type = "bigint"
    }

    columns {
      name = "fourthvisitproviderkey"
      type = "bigint"
    }

    columns {
      name = "guarantordurablekey"
      type = "bigint"
    }

    columns {
      name = "guarantorkey"
      type = "bigint"
    }

    columns {
      name = "heightininches"
      type = "double"
    }

    columns {
      name = "hospitalaccountepicid"
      type = "bigint"
    }

    columns {
      name = "ispatientscheduledandhasticketlinked"
      type = "bigint"
    }

    columns {
      name = "isscheduledappointment"
      type = "bigint"
    }

    columns {
      name = "levelofserviceauthorizedbyproviderdurablekey"
      type = "bigint"
    }

    columns {
      name = "levelofserviceauthorizedbyproviderkey"
      type = "bigint"
    }

    columns {
      name = "levelofservicekey"
      type = "bigint"
    }

    columns {
      name = "markeddonotbillinsurance"
      type = "bigint"
    }

    columns {
      name = "markedselfpay"
      type = "bigint"
    }

    columns {
      name = "medicationsreviewed"
      type = "bigint"
    }

    columns {
      name = "minutesofexcesswaittime"
      type = "string"
    }

    columns {
      name = "onlinecheckinavailable"
      type = "bigint"
    }

    columns {
      name = "onlinecheckinstatus"
      type = "string"
    }

    columns {
      name = "patientdurablekey"
      type = "bigint"
    }

    columns {
      name = "patientkey"
      type = "bigint"
    }

    columns {
      name = "portalactiveatscheduling"
      type = "bigint"
    }

    columns {
      name = "portalreasonforvisit"
      type = "string"
    }

    columns {
      name = "prepaymentcollected"
      type = "string"
    }

    columns {
      name = "prepaymentdue"
      type = "string"
    }

    columns {
      name = "primarydiagnosiskey"
      type = "bigint"
    }

    columns {
      name = "primaryprofessionalaccountepicid"
      type = "bigint"
    }

    columns {
      name = "primaryresourcekey"
      type = "bigint"
    }

    columns {
      name = "primaryvisitproviderdurablekey"
      type = "bigint"
    }

    columns {
      name = "primaryvisitproviderkey"
      type = "bigint"
    }

    columns {
      name = "problemlistreviewed"
      type = "bigint"
    }

    columns {
      name = "pulserate"
      type = "double"
    }

    columns {
      name = "reasonappointmentcanceled"
      type = "string"
    }

    columns {
      name = "referralkey"
      type = "bigint"
    }

    columns {
      name = "referralrequired"
      type = "double"
    }

    columns {
      name = "respirationrate"
      type = "double"
    }

    columns {
      name = "roomeddatekey"
      type = "bigint"
    }

    columns {
      name = "roomedinstant"
      type = "string"
    }

    columns {
      name = "roomedtimeofdaykey"
      type = "bigint"
    }

    columns {
      name = "scheduledfromticket"
      type = "bigint"
    }

    columns {
      name = "scheduledonline"
      type = "bigint"
    }

    columns {
      name = "schedulingsource"
      type = "string"
    }

    columns {
      name = "secondstorespondtoautowaitlistoffer"
      type = "string"
    }

    columns {
      name = "secondvisitproviderdurablekey"
      type = "bigint"
    }

    columns {
      name = "secondvisitproviderkey"
      type = "bigint"
    }

    columns {
      name = "selfarrivalallowed"
      type = "double"
    }

    columns {
      name = "selfarrivaltype"
      type = "string"
    }

    columns {
      name = "status_creationinstant"
      type = "string"
    }

    columns {
      name = "status_lastupdateddate"
      type = "string"
    }

    columns {
      name = "systolicbloodpressure"
      type = "double"
    }

    columns {
      name = "telehealthmode"
      type = "string"
    }

    columns {
      name = "temperatureinfahrenheit"
      type = "double"
    }

    columns {
      name = "thirdvisitproviderdurablekey"
      type = "bigint"
    }

    columns {
      name = "thirdvisitproviderkey"
      type = "bigint"
    }

    columns {
      name = "tobaccousereviewed"
      type = "bigint"
    }

    columns {
      name = "visitkey"
      type = "bigint"
    }

    columns {
      name = "visittype"
      type = "string"
    }

    columns {
      name = "visittypeepicid"
      type = "string"
    }

    columns {
      name = "walkin"
      type = "bigint"
    }

    columns {
      name = "weightinounces"
      type = "double"
    }

    compressed        = "false"
    input_format      = "org.apache.hadoop.mapred.TextInputFormat"
    location          = "s3://geisinger-data-bucket/glue_tables/VisitFact/"
    number_of_buckets = "-1"
    output_format     = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    parameters = {
      CrawlerSchemaDeserializerVersion = "1.0"
      CrawlerSchemaSerializerVersion   = "1.0"
      UPDATED_BY_CRAWLER               = "GeisingerCrawler"
      areColumnsQuoted                 = "false"
      averageRecordSize                = "983"
      classification                   = "csv"
      columnsOrdered                   = "true"
      compressionType                  = "none"
      delimiter                        = ","
      objectCount                      = "3"
      recordCount                      = "55103"
      sizeKey                          = "54181119"
      "skip.header.line.count"         = "1"
      typeOfData                       = "file"
    }

    ser_de_info {
      parameters = {
        "field.delim" = ","
      }

      serialization_library = "org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe"
    }

    stored_as_sub_directories = "false"
  }

  table_type = "EXTERNAL_TABLE"
}
