resource "aws_glue_crawler" "tfer--GeisingerCrawler" {
  classifiers   = ["GeisingerCSVClassifier"]
  configuration = "{\"Version\":1.0,\"CreatePartitionIndex\":true}"
  database_name = "geisinger-glue-db"

  lake_formation_configuration {
    use_lake_formation_credentials = "false"
  }

  lineage_configuration {
    crawler_lineage_settings = "DISABLE"
  }

  name = "GeisingerCrawler"

  recrawl_policy {
    recrawl_behavior = "CRAWL_EVERYTHING"
  }

  role = "service-role/AWSGlueServiceRole-Geisinger"

  s3_target {
    path        = "s3://geisinger-data-bucket/glue_tables/"
    # sample_size = "0"
  }

  schema_change_policy {
    delete_behavior = "DEPRECATE_IN_DATABASE"
    update_behavior = "UPDATE_IN_DATABASE"
  }
}

resource "aws_glue_crawler" "tfer--GeisingerTestCrawler" {
  classifiers   = ["GeisingerCSVClassifier"]
  configuration = "{\"Version\":1.0,\"CreatePartitionIndex\":true}"
  database_name = "geisinger-test-glue-db"

  lake_formation_configuration {
    use_lake_formation_credentials = "false"
  }

  lineage_configuration {
    crawler_lineage_settings = "DISABLE"
  }

  name = "GeisingerTestCrawler"

  recrawl_policy {
    recrawl_behavior = "CRAWL_EVERYTHING"
  }

  role = "service-role/AWSGlueServiceRole-Geisinger"

  s3_target {
    path        = "s3://geisinger-data-bucket/test_data/"
    # sample_size = "0"
  }

  schema_change_policy {
    delete_behavior = "DEPRECATE_IN_DATABASE"
    update_behavior = "UPDATE_IN_DATABASE"
  }
}
