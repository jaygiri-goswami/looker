view: mess_selection_preference {
  sql_table_name: spacebasic.mess_selection_preference ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: db {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.db_time ;;
  }
  dimension_group: delated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.delated_at ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.end_date ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: pref_1 {
    type: number
    sql: ${TABLE}.pref_1 ;;
  }
  dimension: pref_2 {
    type: number
    sql: ${TABLE}.pref_2 ;;
  }
  dimension: pref_3 {
    type: number
    sql: ${TABLE}.pref_3 ;;
  }
  dimension_group: server {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.server_time ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.start_date ;;
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
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, users.id, users.name, users.last_name]
  }
}
