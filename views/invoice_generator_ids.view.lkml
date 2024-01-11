view: invoice_generator_ids {
  sql_table_name: spacebasic.invoice_generator_ids ;;

  dimension: last_invoice_number {
    type: number
    sql: ${TABLE}.last_invoice_number ;;
  }
  dimension: prefix {
    type: string
    sql: ${TABLE}.prefix ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  measure: count {
    type: count
  }
}
