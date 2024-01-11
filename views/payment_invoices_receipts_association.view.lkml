view: payment_invoices_receipts_association {
  sql_table_name: spacebasic.payment_invoices_receipts_association ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: invoice_id {
    type: number
    sql: ${TABLE}.invoice_id ;;
  }
  dimension: is_reversed {
    type: number
    sql: ${TABLE}.is_reversed ;;
  }
  dimension: receipt_id {
    type: number
    sql: ${TABLE}.receipt_id ;;
  }
  dimension_group: reversed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.reversed_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
