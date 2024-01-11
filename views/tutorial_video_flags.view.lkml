view: tutorial_video_flags {
  sql_table_name: spacebasic.tutorial_video_flags ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }
  dimension: module {
    type: string
    sql: ${TABLE}.module ;;
  }
  dimension: sub_module {
    type: string
    sql: ${TABLE}.sub_module ;;
  }
  dimension: video_link {
    type: string
    sql: ${TABLE}.video_link ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
