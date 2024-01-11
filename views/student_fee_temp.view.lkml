view: student_fee_temp {
  sql_table_name: spacebasic.student_fee_temp ;;
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
  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
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
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: paid_date {
    type: string
    sql: ${TABLE}.paid_date ;;
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
  dimension: room_type {
    type: string
    sql: ${TABLE}.room_type ;;
  }
  dimension: sgst {
    type: string
    sql: ${TABLE}.sgst ;;
  }
  dimension: start_date {
    type: string
    sql: ${TABLE}.start_date ;;
  }
  dimension: total_amt {
    type: string
    sql: ${TABLE}.total_amt ;;
  }
  dimension: totalpaid_amt {
    type: string
    sql: ${TABLE}.totalpaid_amt ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name, colleges.id, colleges.name, colleges.college_pathname]
  }
}
