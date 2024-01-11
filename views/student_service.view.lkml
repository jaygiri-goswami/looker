view: student_service {
  sql_table_name: spacebasic.student_service ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: discountamount {
    type: number
    sql: ${TABLE}.discountamount ;;
  }
  dimension_group: enddate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.enddate ;;
  }
  dimension: gstamount {
    type: number
    sql: ${TABLE}.gstamount ;;
  }
  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }
  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.serviceId ;;
  }
  dimension: service_name {
    type: string
    sql: ${TABLE}.serviceName ;;
  }
  dimension_group: startdate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.startdate ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.studentId ;;
  }
  dimension: studentfee_id {
    type: number
    sql: ${TABLE}.studentfee_id ;;
  }
  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }
  dimension: totalpaid_amt {
    type: number
    sql: ${TABLE}.totalpaid_amt ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	service_name,
	students.sb_student_uid,
	students.first_name,
	students.last_name,
	services.service_id
	]
  }

}
