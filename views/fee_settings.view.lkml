view: fee_settings {
  sql_table_name: spacebasic.fee_settings ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: account_no {
    type: string
    sql: ${TABLE}.account_no ;;
  }
  dimension: booking_fee_type_id {
    type: number
    sql: ${TABLE}.booking_fee_type_id ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: copy_names {
    type: string
    sql: ${TABLE}.copy_names ;;
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
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: footer_note {
    type: string
    sql: ${TABLE}.footer_note ;;
  }
  dimension: invoice_separator {
    type: string
    sql: ${TABLE}.invoice_separator ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: late_fee_fine {
    type: number
    sql: ${TABLE}.late_fee_fine ;;
  }
  dimension: prefix {
    type: string
    sql: ${TABLE}.prefix ;;
  }
  dimension: print_copies {
    type: number
    sql: ${TABLE}.print_copies ;;
  }
  dimension: receipt_logo {
    type: string
    sql: ${TABLE}.receipt_logo ;;
  }
  dimension: send_reminder {
    type: number
    sql: ${TABLE}.send_reminder ;;
  }
  dimension: signatures {
    type: string
    sql: ${TABLE}.signatures ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname]
  }
}
