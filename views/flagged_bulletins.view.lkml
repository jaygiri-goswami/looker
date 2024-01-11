view: flagged_bulletins {
  sql_table_name: spacebasic.flagged_bulletins ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bulletin_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.bulletin_id ;;
  }
  dimension: by_user_id {
    type: number
    sql: ${TABLE}.by_user_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: flag_status {
    type: number
    sql: ${TABLE}.flag_status ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, bulletin.id]
  }
}
