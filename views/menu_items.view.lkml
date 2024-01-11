view: menu_items {
  sql_table_name: spacebasic.menu_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: badge {
    type: string
    sql: ${TABLE}.badge ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension: icon {
    type: string
    sql: ${TABLE}.icon ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: is_layout {
    type: string
    sql: ${TABLE}.isLayout ;;
  }
  dimension: is_new {
    type: number
    sql: ${TABLE}.is_new ;;
  }
  dimension: is_title {
    type: string
    sql: ${TABLE}.isTitle ;;
  }
  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }
  dimension: link {
    type: string
    sql: ${TABLE}.link ;;
  }
  dimension: parent_id {
    type: number
    sql: ${TABLE}.parentId ;;
  }
  dimension: permission_key {
    type: string
    sql: ${TABLE}.permissionKey ;;
  }
  dimension: sequence_no {
    type: number
    sql: ${TABLE}.sequenceNo ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenantId ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
