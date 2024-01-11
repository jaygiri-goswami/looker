view: app_version {
  sql_table_name: spacebasic.app_version ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: force_update {
    type: yesno
    sql: ${TABLE}.force_update ;;
  }
  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }
  dimension: release_version_android {
    type: string
    sql: ${TABLE}.release_version_android ;;
  }
  dimension: release_version_ios {
    type: string
    sql: ${TABLE}.release_version_ios ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: version_code {
    type: number
    sql: ${TABLE}.version_code ;;
  }
  dimension: version_text {
    type: string
    sql: ${TABLE}.version_text ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
