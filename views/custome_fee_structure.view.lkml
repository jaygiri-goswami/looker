view: custome_fee_structure {
  sql_table_name: spacebasic.custome_fee_structure ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: advance_feedue_amount {
    type: string
    sql: ${TABLE}.advance_feedue_amount ;;
  }
  dimension: advance_feepaid_amount {
    type: string
    sql: ${TABLE}.advance_feepaid_amount ;;
  }
  dimension: block {
    type: string
    sql: ${TABLE}.block ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: college_logo {
    type: string
    sql: ${TABLE}.college_logo ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: deposite_duepaid_amount {
    type: string
    sql: ${TABLE}.deposite_duepaid_amount ;;
  }
  dimension: deposite_feepaid_amount {
    type: string
    sql: ${TABLE}.deposite_feepaid_amount ;;
  }
  dimension: feedue_date {
    type: string
    sql: ${TABLE}.feedue_date ;;
  }
  dimension: feepaid_date {
    type: string
    sql: ${TABLE}.feepaid_date ;;
  }
  dimension: hostel_feedue_amount {
    type: string
    sql: ${TABLE}.hostel_Feedue_amount ;;
  }
  dimension: hostel_feepaid_amount {
    type: string
    sql: ${TABLE}.hostel_feepaid_amount ;;
  }
  dimension: hostel_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.hostel_id ;;
  }
  dimension: hostel_name {
    type: string
    sql: ${TABLE}.hostel_name ;;
  }
  dimension: payment_mode {
    type: string
    sql: ${TABLE}.payment_mode ;;
  }
  dimension: receipt_no {
    type: string
    sql: ${TABLE}.receipt_no ;;
  }
  dimension: remark {
    type: string
    sql: ${TABLE}.remark ;;
  }
  dimension: room_name {
    type: string
    sql: ${TABLE}.room_name ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: student_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension: student_name {
    type: string
    sql: ${TABLE}.student_name ;;
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
	student_name,
	hostel_name,
	room_name,
	students.sb_student_uid,
	students.first_name,
	students.last_name,
	hostels.id,
	hostels.name,
	colleges.id,
	colleges.name,
	colleges.college_pathname
	]
  }

}
