view: oauth_clients {
  sql_table_name: spacebasic.oauth_clients ;;
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
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: password_client {
    type: yesno
    sql: ${TABLE}.password_client ;;
  }
  dimension: personal_access_client {
    type: yesno
    sql: ${TABLE}.personal_access_client ;;
  }
  dimension: redirect {
    type: string
    sql: ${TABLE}.redirect ;;
  }
  dimension: revoked {
    type: yesno
    sql: ${TABLE}.revoked ;;
  }
  dimension: secret {
    type: string
    sql: ${TABLE}.secret ;;
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
    drill_fields: [id, name, users.id, users.name, users.last_name]
  }
}
