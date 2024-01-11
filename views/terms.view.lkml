view: terms {
  sql_table_name: spacebasic.terms ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: attachment {
    type: string
    sql: ${TABLE}.attachment ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: is_force_user_update {
    type: number
    sql: ${TABLE}.is_force_user_update ;;
  }
  dimension: is_sb_terms {
    type: number
    sql: ${TABLE}.is_sb_terms ;;
  }
  dimension: terms {
    type: string
    sql: ${TABLE}.terms ;;
  }
  dimension: terms_for {
    type: string
    sql: ${TABLE}.terms_for ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname, login_user_details.count]
  }
}
