resource "aws_glue_catalog_database" "tfer--geisinger-glue-db" {
  catalog_id = "650251715284"

  create_table_default_permission {
    permissions = ["ALL"]

    principal {
      data_lake_principal_identifier = "IAM_ALLOWED_PRINCIPALS"
    }
  }

  name = "geisinger-glue-db"
}

resource "aws_glue_catalog_database" "tfer--geisinger-test-glue-db" {
  catalog_id = "650251715284"

  create_table_default_permission {
    permissions = ["ALL"]

    principal {
      data_lake_principal_identifier = "IAM_ALLOWED_PRINCIPALS"
    }
  }

  description = "Test data only DB"
  name        = "geisinger-test-glue-db"
}
