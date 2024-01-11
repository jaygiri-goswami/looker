view: sale_item_fee_item_association {
  sql_table_name: spacebasic.sale_item_fee_item_association ;;
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
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension: fee_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.fee_item_id ;;
  }
  dimension: sale_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sale_item_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, sale_items.id, sale_items.name, fee_items.id, fee_items.name]
  }
}
