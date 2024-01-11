view: payment_credit_debit_note {
  sql_table_name: spacebasic.payment_credit_debit_note ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }
  dimension: associated_payment_invoice_id {
    type: number
    sql: ${TABLE}.associated_payment_invoice_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: credit_debit_no {
    type: string
    sql: ${TABLE}.credit_debit_no ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: is_note_used {
    type: number
    sql: ${TABLE}.is_note_used ;;
  }
  dimension: issued_by {
    type: number
    sql: ${TABLE}.issued_by ;;
  }
  dimension: note_type {
    type: number
    sql: ${TABLE}.note_type ;;
  }
  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, students.sb_student_uid, students.first_name, students.last_name]
  }
}
