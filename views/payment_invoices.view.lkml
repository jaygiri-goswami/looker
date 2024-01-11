view: payment_invoices {
  sql_table_name: spacebasic.payment_invoices ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: basic {
    type: number
    sql: ${TABLE}.basic ;;
  }
  dimension_group: billing {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.billing_date ;;
  }
  dimension: cgst {
    type: number
    sql: ${TABLE}.cgst ;;
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
  dimension: credit_note_amount {
    type: number
    sql: ${TABLE}.credit_note_amount ;;
  }
  dimension: debit_note_amount {
    type: number
    sql: ${TABLE}.debit_note_amount ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension_group: due {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.due_date ;;
  }
  dimension: invoice_no {
    type: string
    sql: ${TABLE}.invoice_no ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: is_order {
    type: number
    sql: ${TABLE}.is_order ;;
  }
  dimension: is_performa {
    type: number
    sql: ${TABLE}.is_performa ;;
  }
  dimension: order_no {
    type: string
    sql: ${TABLE}.order_no ;;
  }
  dimension: pending_amount {
    type: number
    sql: ${TABLE}.pending_amount ;;
  }
  dimension: performa_no {
    type: string
    sql: ${TABLE}.performa_no ;;
  }
  dimension: sale_item_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.sale_item_id ;;
  }
  dimension: sgst {
    type: number
    sql: ${TABLE}.sgst ;;
  }
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
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
  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }
  dimension: totalpaid_amount {
    type: number
    sql: ${TABLE}.totalpaid_amount ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	students.sb_student_uid,
	students.first_name,
	students.last_name,
	sale_items.id,
	sale_items.name
	]
  }

}
