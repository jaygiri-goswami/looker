view: razorpay_account {
  sql_table_name: spacebasic.razorpay_account ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: account_key {
    type: string
    sql: ${TABLE}.account_key ;;
  }
  dimension: association_id {
    type: number
    sql: ${TABLE}.association_id ;;
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
  dimension: fee_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.fee_type_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname, fee_types.id]
  }
}
