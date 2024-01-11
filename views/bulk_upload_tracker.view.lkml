view: bulk_upload_tracker {
  sql_table_name: spacebasic.bulk_upload_tracker ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bulk_upload_template_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.bulk_upload_template_id ;;
  }
  dimension: clg_url {
    type: string
    sql: ${TABLE}.clgUrl ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: file_name {
    type: string
    sql: ${TABLE}.file_name ;;
  }
  dimension: file_s3_name {
    type: string
    sql: ${TABLE}.file_s3_name ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: status_reason {
    type: string
    sql: ${TABLE}.status_reason ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  dimension: total_added_records {
    type: string
    sql: ${TABLE}.total_added_records ;;
  }
  dimension: total_records {
    type: string
    sql: ${TABLE}.total_records ;;
  }
  dimension: total_skipped_records {
    type: string
    sql: ${TABLE}.total_skipped_records ;;
  }
  dimension: trn_id {
    type: string
    sql: ${TABLE}.trn_id ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, file_name, file_s3_name, bulk_upload_templates.id]
  }
}
