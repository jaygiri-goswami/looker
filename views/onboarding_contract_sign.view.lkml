view: onboarding_contract_sign {
  sql_table_name: spacebasic.onboarding_contract_sign ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: application_id {
    type: number
    sql: ${TABLE}.application_id ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: college_url {
    type: string
    sql: ${TABLE}.college_url ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: email_otp {
    type: number
    sql: ${TABLE}.email_otp ;;
  }
  dimension: is_email_otp_verified {
    type: number
    sql: ${TABLE}.is_email_otp_verified ;;
  }
  dimension: is_otp_verified {
    type: number
    sql: ${TABLE}.is_otp_verified ;;
  }
  dimension: signed_contract {
    type: string
    sql: ${TABLE}.signed_contract ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname]
  }
}
