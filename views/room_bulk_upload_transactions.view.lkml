view: room_bulk_upload_transactions {
  sql_table_name: spacebasic.room_bulk_upload_transactions ;;
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
  dimension: file_name {
    type: string
    sql: ${TABLE}.file_name ;;
  }
  dimension: file_url {
    type: string
    sql: ${TABLE}.file_url ;;
  }
  dimension: hostel_for {
    type: string
    sql: ${TABLE}.hostel_for ;;
  }
  dimension: initiated_by {
    type: number
    sql: ${TABLE}.initiated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id, file_name, colleges.id, colleges.name, colleges.college_pathname]
  }
}
