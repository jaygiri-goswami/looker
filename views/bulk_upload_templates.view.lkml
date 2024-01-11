view: bulk_upload_templates {
  sql_table_name: spacebasic.bulk_upload_templates ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: module {
    type: string
    sql: ${TABLE}.module ;;
  }
  dimension: template_blob {
    type: string
    sql: ${TABLE}.template_blob ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, bulk_upload_tracker.count]
  }
}
