output "aws_glue_catalog_database_tfer--geisinger-glue-db_id" {
  value = "${aws_glue_catalog_database.tfer--geisinger-glue-db.id}"
}

output "aws_glue_catalog_database_tfer--geisinger-test-glue-db_id" {
  value = "${aws_glue_catalog_database.tfer--geisinger-test-glue-db.id}"
}

output "aws_glue_catalog_table_tfer--geisinger-glue-db-003A-departmentdim_id" {
  value = "${aws_glue_catalog_table.tfer--geisinger-glue-db-003A-departmentdim.id}"
}

output "aws_glue_catalog_table_tfer--geisinger-glue-db-003A-patientdim_id" {
  value = "${aws_glue_catalog_table.tfer--geisinger-glue-db-003A-patientdim.id}"
}

output "aws_glue_catalog_table_tfer--geisinger-glue-db-003A-proceduredim_id" {
  value = "${aws_glue_catalog_table.tfer--geisinger-glue-db-003A-proceduredim.id}"
}

output "aws_glue_catalog_table_tfer--geisinger-glue-db-003A-providerdim_id" {
  value = "${aws_glue_catalog_table.tfer--geisinger-glue-db-003A-providerdim.id}"
}

output "aws_glue_catalog_table_tfer--geisinger-glue-db-003A-surgicalcasefact_id" {
  value = "${aws_glue_catalog_table.tfer--geisinger-glue-db-003A-surgicalcasefact.id}"
}

output "aws_glue_catalog_table_tfer--geisinger-glue-db-003A-visitfact_id" {
  value = "${aws_glue_catalog_table.tfer--geisinger-glue-db-003A-visitfact.id}"
}

output "aws_glue_crawler_tfer--GeisingerCrawler_id" {
  value = "${aws_glue_crawler.tfer--GeisingerCrawler.id}"
}

output "aws_glue_crawler_tfer--GeisingerTestCrawler_id" {
  value = "${aws_glue_crawler.tfer--GeisingerTestCrawler.id}"
}
