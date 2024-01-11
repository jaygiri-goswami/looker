view: trn_leave_status {
  sql_table_name: spacebasic.trn_leave_status ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: applied_by {
    type: string
    sql: ${TABLE}.applied_by ;;
  }
  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
  }
  dimension: is_final_approved {
    type: string
    sql: ${TABLE}.is_final_approved ;;
  }
  dimension: leave_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.leave_type_id ;;
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }
  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }
  dimension: start_date {
    type: string
    sql: ${TABLE}.start_date ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, leave_types.id, leave_types.name]
  }
}
