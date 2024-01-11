view: mealmenu {
  sql_table_name: spacebasic.mealmenu ;;
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
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension: is_deleted {
    type: string
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: itemid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.itemid ;;
  }
  dimension: mealid {
    type: number
    value_format_name: id
    sql: ${TABLE}.mealid ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id, items.id, items.item_name]
  }
}
