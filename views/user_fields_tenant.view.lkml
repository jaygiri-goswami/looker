view: user_fields_tenant {
  sql_table_name: spacebasic.user_fields_tenant ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: custom_name {
    type: string
    sql: ${TABLE}.custom_name ;;
  }
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: field_id {
    type: number
    sql: ${TABLE}.field_id ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: regex {
    type: number
    sql: ${TABLE}.regex ;;
  }
  dimension: section_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.section_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
  }
  dimension: user_type {
    type: string
    sql: ${TABLE}.userType ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	custom_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	sections.id
	]
  }

}
