view: student_fee_bulk_update {
  sql_table_name: spacebasic.student_fee_bulk_update ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: basic {
    type: string
    sql: ${TABLE}.basic ;;
  }
  dimension: cgst {
    type: string
    sql: ${TABLE}.cgst ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: deposit {
    type: string
    sql: ${TABLE}.deposit ;;
  }
  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }
  dimension: extras {
    type: string
    sql: ${TABLE}.extras ;;
  }
  dimension: fee_type {
    type: string
    sql: ${TABLE}.fee_type ;;
  }
  dimension: is_error {
    type: string
    sql: ${TABLE}.is_error ;;
  }
  dimension: is_processed {
    type: string
    sql: ${TABLE}.is_processed ;;
  }
  dimension: mode_of_payment {
    type: string
    sql: ${TABLE}.mode_of_payment ;;
  }
  dimension: pending_amt {
    type: string
    sql: ${TABLE}.pending_amt ;;
  }
  dimension: receipt_no {
    type: string
    sql: ${TABLE}.receipt_no ;;
  }
  dimension: reg_no {
    type: string
    sql: ${TABLE}.reg_no ;;
  }
  dimension: sgst {
    type: string
    sql: ${TABLE}.sgst ;;
  }
  dimension: total_amt {
    type: string
    sql: ${TABLE}.total_amt ;;
  }
  dimension: totalpaid_amt {
    type: string
    sql: ${TABLE}.totalpaid_amt ;;
  }
  dimension: trn_id {
    type: number
    sql: ${TABLE}.trn_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname]
  }
}
