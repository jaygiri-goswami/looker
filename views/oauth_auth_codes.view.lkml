view: oauth_auth_codes {
  sql_table_name: spacebasic.oauth_auth_codes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: client_id {
    type: number
    sql: ${TABLE}.client_id ;;
  }
  dimension_group: expires {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.expires_at ;;
  }
  dimension: revoked {
    type: yesno
    sql: ${TABLE}.revoked ;;
  }
  dimension: scopes {
    type: string
    sql: ${TABLE}.scopes ;;
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
