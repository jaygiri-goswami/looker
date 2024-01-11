view: untitled_table {
  sql_table_name: spacebasic.untitled_table ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: application_id {
    type: string
    sql: ${TABLE}.application_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: is_room_fee {
    type: number
    sql: ${TABLE}.is_room_fee ;;
  }
  dimension: sale_item_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.sale_item_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, sale_items.id, sale_items.name]
  }
}
