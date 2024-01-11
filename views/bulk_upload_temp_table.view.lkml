view: bulk_upload_temp_table {
  sql_table_name: spacebasic.bulk_upload_temp_table ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }
  dimension: floor {
    type: string
    sql: ${TABLE}.floor ;;
  }
  dimension: hostel {
    type: string
    sql: ${TABLE}.hostel ;;
  }
  dimension: is_added {
    type: number
    sql: ${TABLE}.is_added ;;
  }
  dimension: occupancy {
    type: string
    sql: ${TABLE}.occupancy ;;
  }
  dimension: room {
    type: string
    sql: ${TABLE}.room ;;
  }
  dimension: room_type {
    type: string
    sql: ${TABLE}.room_type ;;
  }
  dimension: transaction_id {
    type: number
    sql: ${TABLE}.transaction_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname]
  }
}
