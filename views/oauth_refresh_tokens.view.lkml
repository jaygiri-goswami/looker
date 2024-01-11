view: oauth_refresh_tokens {
  sql_table_name: spacebasic.oauth_refresh_tokens ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: access_token_id {
    type: string
    sql: ${TABLE}.access_token_id ;;
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
  measure: count {
    type: count
    drill_fields: [id]
  }
}
