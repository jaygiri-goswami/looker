view: roomfees {
  sql_table_name: spacebasic.roomfees ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: advance {
    type: number
    sql: ${TABLE}.advance ;;
  }
  dimension: basic {
    type: number
    sql: ${TABLE}.basic ;;
  }
  dimension: cgst {
    type: number
    sql: ${TABLE}.cgst ;;
  }
  dimension: cgstpercentage {
    type: number
    sql: ${TABLE}.cgstpercentage ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
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
  dimension: deposit {
    type: number
    sql: ${TABLE}.deposit ;;
  }
  dimension: discountpercentage {
    type: number
    sql: ${TABLE}.discountpercentage ;;
  }
  dimension_group: endyear {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.endyear ;;
  }
  dimension: gstpercentage {
    type: number
    sql: ${TABLE}.gstpercentage ;;
  }
  dimension: hostel {
    type: number
    sql: ${TABLE}.hostel ;;
  }
  dimension: prepay_discountpercentage {
    type: number
    sql: ${TABLE}.prepay_discountpercentage ;;
  }
  dimension: refundpercentage {
    type: number
    sql: ${TABLE}.refundpercentage ;;
  }
  dimension: room_type {
    type: number
    sql: ${TABLE}.room_type ;;
  }
  dimension: room_type_name {
    type: string
    sql: ${TABLE}.room_type_name ;;
  }
  dimension: service_charge {
    type: number
    sql: ${TABLE}.service_charge ;;
  }
  dimension: sgst {
    type: number
    sql: ${TABLE}.sgst ;;
  }
  dimension: sgstpercentage {
    type: number
    sql: ${TABLE}.sgstpercentage ;;
  }
  dimension_group: startyear {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.startyear ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: stream {
    type: string
    sql: ${TABLE}.stream ;;
  }
  dimension: total_amt {
    type: number
    sql: ${TABLE}.total_amt ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	room_type_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	courses.id,
	courses.name
	]
  }

}
