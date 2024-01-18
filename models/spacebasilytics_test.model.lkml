connection: "spacebasilytics"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: spacebasilytics_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: spacebasilytics_test_default_datagroup

explore: bbmp_ccc_registrations {}

explore: avg_resolution_time {}

explore: session_avg_time {}

explore: bbmp_grievances {}

explore: bbmp_grievance_options {}

explore: bbmp_grievance_questions {}

explore: bbmp_grievance_response {}

explore: bbmp_wards_master {
  join: colleges {
    type: left_outer
    sql_on: ${bbmp_wards_master.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: faq {}

explore: get_employees {
  join: users {
    type: left_outer
    sql_on: ${get_employees.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${get_employees.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: get_form_templates {
  join: colleges {
    type: left_outer
    sql_on: ${get_form_templates.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: groups {}

explore: login_user_details {
  join: users {
    type: left_outer
    sql_on: ${login_user_details.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${login_user_details.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${login_user_details.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${login_user_details.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: terms {
    type: left_outer
    sql_on: ${login_user_details.term_id} = ${terms.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${login_user_details.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${login_user_details.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${rooms.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: rfid_scan_audit {}

explore: rfid_scan_audit_history {}

explore: room_price {
  join: rooms {
    type: left_outer
    sql_on: ${room_price.roomid} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${rooms.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${rooms.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${rooms.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${rooms.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: room_type_price {
  join: room_types {
    type: left_outer
    sql_on: ${room_type_price.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${room_type_price.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${room_types.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: room_vacancy_view {
  join: colleges {
    type: left_outer
    sql_on: ${room_vacancy_view.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: student_room_history {
  join: students {
    type: left_outer
    sql_on: ${student_room_history.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: user_groups {
  join: groups {
    type: left_outer
    sql_on: ${user_groups.group_id} = ${groups.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${user_groups.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: academic_years {
  join: colleges {
    type: left_outer
    sql_on: ${academic_years.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: account_details {}

explore: admission_details {}

explore: admission_token {}

explore: amenities {}

explore: announcement_push_token {
  join: bulletin {
    type: left_outer
    sql_on: ${announcement_push_token.bulletin_id} = ${bulletin.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${bulletin.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${bulletin.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${bulletin.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${bulletin.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: api_navigate {}

explore: app_version {}

explore: approvers {
  join: colleges {
    type: left_outer
    sql_on: ${approvers.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${approvers.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: asset {
  join: category {
    type: left_outer
    sql_on: ${asset.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${asset.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: item_master {
    type: left_outer
    sql_on: ${asset.item_master_id} = ${item_master.id} ;;
    relationship: many_to_one
  }
}

explore: asset_allocation_mapping {
  join: asset {
    type: left_outer
    sql_on: ${asset_allocation_mapping.asset_id} = ${asset.asset_id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${asset_allocation_mapping.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${asset_allocation_mapping.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${asset_allocation_mapping.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${asset_allocation_mapping.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${asset_allocation_mapping.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${asset.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: item_master {
    type: left_outer
    sql_on: ${asset.item_master_id} = ${item_master.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }
}

explore: asset_tracking {
  join: asset {
    type: left_outer
    sql_on: ${asset_tracking.asset_id} = ${asset.asset_id} ;;
    relationship: many_to_one
  }

  join: complaints {
    type: left_outer
    sql_on: ${asset_tracking.complaint_id} = ${complaints.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${asset_tracking.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${asset.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: item_master {
    type: left_outer
    sql_on: ${asset.item_master_id} = ${item_master.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${complaints.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${complaints.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${complaints.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${complaints.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${complaints.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${complaints.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }
}

explore: assigned_inventory_items {
  join: colleges {
    type: left_outer
    sql_on: ${assigned_inventory_items.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${assigned_inventory_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${assigned_inventory_items.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${inventory_items.inventory_id} = ${inventory.id} ;;
    relationship: many_to_one
  }

  join: inventory_group {
    type: left_outer
    sql_on: ${inventory.inventory_group_id} = ${inventory_group.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${rooms.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${rooms.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${rooms.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: attendance_api_ip {
  join: colleges {
    type: left_outer
    sql_on: ${attendance_api_ip.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${attendance_api_ip.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${attendance_api_ip.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: attendance_biomatrix {
  join: students {
    type: left_outer
    sql_on: ${attendance_biomatrix.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${attendance_biomatrix.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: attendance_college {
  join: colleges {
    type: left_outer
    sql_on: ${attendance_college.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: attendance_college_completed_log {
  join: colleges {
    type: left_outer
    sql_on: ${attendance_college_completed_log.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: attendance_ip {
  join: colleges {
    type: left_outer
    sql_on: ${attendance_ip.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: attendance_ip_log {
  join: colleges {
    type: left_outer
    sql_on: ${attendance_ip_log.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: attendance_sessions {
  join: colleges {
    type: left_outer
    sql_on: ${attendance_sessions.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: attendance_settings {
  join: colleges {
    type: left_outer
    sql_on: ${attendance_settings.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: bank_account_mapping {
  join: fee_types {
    type: left_outer
    sql_on: ${bank_account_mapping.fee_type_id} = ${fee_types.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${fee_types.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: bank_accounts {}

explore: batches {
  join: colleges {
    type: left_outer
    sql_on: ${batches.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: bbmp_master_data {}

explore: bill_settings {}

explore: bills {
  join: users {
    type: left_outer
    sql_on: ${bills.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: fee_types {
    type: left_outer
    sql_on: ${bills.fee_type_id} = ${fee_types.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: biometric_data {}

explore: biometric_data_history {}

explore: biometric_device_association {
  join: hostels {
    type: left_outer
    sql_on: ${biometric_device_association.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${biometric_device_association.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${biometric_device_association.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${biometric_device_association.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${hostels.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }
}

explore: biometric_device_blocked_users {
  join: students {
    type: left_outer
    sql_on: ${biometric_device_blocked_users.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: biometric_device_transactions {
  join: students {
    type: left_outer
    sql_on: ${biometric_device_transactions.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: biometric_hostel_check_in_out_tracking {
  join: colleges {
    type: left_outer
    sql_on: ${biometric_hostel_check_in_out_tracking.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${biometric_hostel_check_in_out_tracking.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: block_warden {
  join: blocks {
    type: left_outer
    sql_on: ${block_warden.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${block_warden.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${blocks.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: blocks {
  join: colleges {
    type: left_outer
    sql_on: ${blocks.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${blocks.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: bulk_upload {
  join: colleges {
    type: left_outer
    sql_on: ${bulk_upload.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: bulk_upload_temp_table {
  join: colleges {
    type: left_outer
    sql_on: ${bulk_upload_temp_table.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: bulk_upload_templates {}

explore: bulk_upload_tracker {
  join: bulk_upload_templates {
    type: left_outer
    sql_on: ${bulk_upload_tracker.bulk_upload_template_id} = ${bulk_upload_templates.id} ;;
    relationship: many_to_one
  }
}

explore: bulletin {
  join: colleges {
    type: left_outer
    sql_on: ${bulletin.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${bulletin.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${bulletin.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${bulletin.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: bulletin_attachments {
  join: colleges {
    type: left_outer
    sql_on: ${bulletin_attachments.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: bulletin {
    type: left_outer
    sql_on: ${bulletin_attachments.bulletin_id} = ${bulletin.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${bulletin.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${bulletin.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${bulletin.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: bulletin_block {
  join: colleges {
    type: left_outer
    sql_on: ${bulletin_block.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: bulletin {
    type: left_outer
    sql_on: ${bulletin_block.bulletin_id} = ${bulletin.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${bulletin_block.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${bulletin_block.group_id} = ${groups.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${bulletin.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${bulletin.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${bulletin.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: bulletin_colleges {
  join: bulletin {
    type: left_outer
    sql_on: ${bulletin_colleges.bulletin_id} = ${bulletin.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${bulletin_colleges.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${bulletin.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${bulletin.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${bulletin.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: bulletin_comment_images {
  join: bulletin {
    type: left_outer
    sql_on: ${bulletin_comment_images.bulletin_id} = ${bulletin.id} ;;
    relationship: many_to_one
  }

  join: bulletin_comments {
    type: left_outer
    sql_on: ${bulletin_comment_images.bulletin_comment_id} = ${bulletin_comments.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${bulletin.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${bulletin.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${bulletin.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${bulletin.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: bulletin_comments {
  join: bulletin {
    type: left_outer
    sql_on: ${bulletin_comments.bulletin_id} = ${bulletin.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${bulletin.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${bulletin.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${bulletin.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${bulletin.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: bulletin_views {
  join: colleges {
    type: left_outer
    sql_on: ${bulletin_views.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: bulletin {
    type: left_outer
    sql_on: ${bulletin_views.bulletin_id} = ${bulletin.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${bulletin_views.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${bulletin.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${bulletin.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${bulletin.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: cache {}

explore: category {
  join: colleges {
    type: left_outer
    sql_on: ${category.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: chat_logs {
  join: colleges {
    type: left_outer
    sql_on: ${chat_logs.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${chat_logs.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: college_router_list {
  join: colleges {
    type: left_outer
    sql_on: ${college_router_list.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: colleges {}

explore: comments {
  join: bulletin {
    type: left_outer
    sql_on: ${comments.bulletin_id} = ${bulletin.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${bulletin.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${bulletin.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${bulletin.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${bulletin.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: complaint_feedbacks {
  join: complaints {
    type: left_outer
    sql_on: ${complaint_feedbacks.complaint_id} = ${complaints.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${complaint_feedbacks.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${complaints.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${complaints.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${complaints.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${complaints.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${complaints.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${complaints.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${complaints.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: asset {
    type: left_outer
    sql_on: ${complaints.asset_id} = ${asset.asset_id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: item_master {
    type: left_outer
    sql_on: ${asset.item_master_id} = ${item_master.id} ;;
    relationship: many_to_one
  }
}

explore: complaints {
  join: students {
    type: left_outer
    sql_on: ${complaints.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: student_room {
    type: left_outer
    sql_on: ${complaints.student_id} = ${student_room.student_id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${complaints.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${complaints.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${complaints.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${complaints.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${complaints.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${complaints.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${complaints.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: asset {
    type: left_outer
    sql_on: ${complaints.asset_id} = ${asset.asset_id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: item_master {
    type: left_outer
    sql_on: ${asset.item_master_id} = ${item_master.id} ;;
    relationship: many_to_one
  }
}

explore: complaints_escalate {
  join: complaints {
    type: left_outer
    sql_on: ${complaints_escalate.complaint_id} = ${complaints.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${complaints.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${complaints.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${complaints.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${complaints.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${complaints.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${complaints.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${complaints.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${complaints.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: asset {
    type: left_outer
    sql_on: ${complaints.asset_id} = ${asset.asset_id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: item_master {
    type: left_outer
    sql_on: ${asset.item_master_id} = ${item_master.id} ;;
    relationship: many_to_one
  }
}

explore: complaints_feedback_settings {
  join: colleges {
    type: left_outer
    sql_on: ${complaints_feedback_settings.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: complaints_images {
  join: complaints {
    type: left_outer
    sql_on: ${complaints_images.complaint_id} = ${complaints.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${complaints.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${complaints.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${complaints.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${complaints.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${complaints.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${complaints.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${complaints.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${complaints.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: asset {
    type: left_outer
    sql_on: ${complaints.asset_id} = ${asset.asset_id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: item_master {
    type: left_outer
    sql_on: ${asset.item_master_id} = ${item_master.id} ;;
    relationship: many_to_one
  }
}

explore: complaints_inventory {
  join: colleges {
    type: left_outer
    sql_on: ${complaints_inventory.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: complaints {
    type: left_outer
    sql_on: ${complaints_inventory.complaint_id} = ${complaints.id} ;;
    relationship: many_to_one
  }

  join: assigned_inventory_items {
    type: left_outer
    sql_on: ${complaints_inventory.assigned_inventory_items_id} = ${assigned_inventory_items.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${complaints_inventory.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${complaints.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${complaints.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${complaints.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${complaints.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${complaints.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${complaints.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${complaints.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: asset {
    type: left_outer
    sql_on: ${complaints.asset_id} = ${asset.asset_id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: item_master {
    type: left_outer
    sql_on: ${asset.item_master_id} = ${item_master.id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${inventory_items.inventory_id} = ${inventory.id} ;;
    relationship: many_to_one
  }

  join: inventory_group {
    type: left_outer
    sql_on: ${inventory.inventory_group_id} = ${inventory_group.id} ;;
    relationship: many_to_one
  }
}

explore: complaints_response {
  join: complaints {
    type: left_outer
    sql_on: ${complaints_response.complaint_id} = ${complaints.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${complaints.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${complaints.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${complaints.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${complaints.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${complaints.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${complaints.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${complaints.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${complaints.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: asset {
    type: left_outer
    sql_on: ${complaints.asset_id} = ${asset.asset_id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: item_master {
    type: left_outer
    sql_on: ${asset.item_master_id} = ${item_master.id} ;;
    relationship: many_to_one
  }
}

explore: complaints_response_images {
  join: complaints {
    type: left_outer
    sql_on: ${complaints_response_images.complaint_id} = ${complaints.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${complaints.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${complaints.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${complaints.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${complaints.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${complaints.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${complaints.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${complaints.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${complaints.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: asset {
    type: left_outer
    sql_on: ${complaints.asset_id} = ${asset.asset_id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: item_master {
    type: left_outer
    sql_on: ${asset.item_master_id} = ${item_master.id} ;;
    relationship: many_to_one
  }
}

explore: complaints_to {
  join: complaints {
    type: left_outer
    sql_on: ${complaints_to.complaint_id} = ${complaints.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${complaints.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${complaints.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${complaints.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${complaints.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${complaints.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${complaints.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${complaints.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${complaints.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: asset {
    type: left_outer
    sql_on: ${complaints.asset_id} = ${asset.asset_id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: item_master {
    type: left_outer
    sql_on: ${asset.item_master_id} = ${item_master.id} ;;
    relationship: many_to_one
  }
}

explore: compliant_escalate {
  join: complaints {
    type: left_outer
    sql_on: ${compliant_escalate.complaint_id} = ${complaints.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${complaints.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${complaints.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${complaints.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${complaints.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${complaints.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${complaints.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${complaints.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${complaints.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: asset {
    type: left_outer
    sql_on: ${complaints.asset_id} = ${asset.asset_id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: item_master {
    type: left_outer
    sql_on: ${asset.item_master_id} = ${item_master.id} ;;
    relationship: many_to_one
  }
}

explore: counters {}

explore: coupons {}

explore: courses {
  join: colleges {
    type: left_outer
    sql_on: ${courses.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: cron_tracker {}

explore: custome_fee_structure {
  join: students {
    type: left_outer
    sql_on: ${custome_fee_structure.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${custome_fee_structure.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${custome_fee_structure.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: daily_attendance_report {
  join: colleges {
    type: left_outer
    sql_on: ${daily_attendance_report.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${daily_attendance_report.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: delivery_note {
  join: colleges {
    type: left_outer
    sql_on: ${delivery_note.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: delivery_note_details {
  join: colleges {
    type: left_outer
    sql_on: ${delivery_note_details.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: disciplinary {
  join: students {
    type: left_outer
    sql_on: ${disciplinary.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${disciplinary.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${disciplinary.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${disciplinary.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${disciplinary.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${disciplinary.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${disciplinary.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }
}

explore: disciplinary_comments {
  join: colleges {
    type: left_outer
    sql_on: ${disciplinary_comments.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: disciplinary_comments_images {
  join: disciplinary_comments {
    type: left_outer
    sql_on: ${disciplinary_comments_images.disciplinary_comments_id} = ${disciplinary_comments.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${disciplinary_comments.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: disciplinary_images {}

explore: discipline_records {
  join: users {
    type: left_outer
    sql_on: ${discipline_records.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${discipline_records.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${discipline_records.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }
}

explore: doc_types {}

explore: door_locks {}

explore: download_history {}

explore: dr_attachments {
  join: colleges {
    type: left_outer
    sql_on: ${dr_attachments.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: discipline_records {
    type: left_outer
    sql_on: ${dr_attachments.discipline_records_id} = ${discipline_records.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${discipline_records.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${discipline_records.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }
}

explore: dummy_student {}

explore: dynamic_contents {}

explore: dynamic_contents_params {}

explore: ebill_daily_calculator {
  join: rooms {
    type: left_outer
    sql_on: ${ebill_daily_calculator.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${rooms.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${rooms.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${rooms.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${rooms.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: ebill_daily_person {
  join: users {
    type: left_outer
    sql_on: ${ebill_daily_person.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: email_logs {}

explore: employee {
  join: colleges {
    type: left_outer
    sql_on: ${employee.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: employee_associations {
  join: colleges {
    type: left_outer
    sql_on: ${employee_associations.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${employee_associations.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: employee_locations {
  join: users {
    type: left_outer
    sql_on: ${employee_locations.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${employee_locations.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${employee_locations.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: employee_permissions {
  join: users {
    type: left_outer
    sql_on: ${employee_permissions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${employee_permissions.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: employee_temp {
  join: colleges {
    type: left_outer
    sql_on: ${employee_temp.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: energy_meters {}

explore: enrollments {}

explore: escalate_active_hours {
  join: colleges {
    type: left_outer
    sql_on: ${escalate_active_hours.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${escalate_active_hours.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: escalate_active_hours_slab {
  join: colleges {
    type: left_outer
    sql_on: ${escalate_active_hours_slab.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${escalate_active_hours_slab.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: escalate_matrix {
  join: colleges {
    type: left_outer
    sql_on: ${escalate_matrix.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: subcategory {
    type: left_outer
    sql_on: ${escalate_matrix.subcategory_id} = ${subcategory.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${subcategory.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: escalate_matrix_roles_permissions {
  join: colleges {
    type: left_outer
    sql_on: ${escalate_matrix_roles_permissions.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${escalate_matrix_roles_permissions.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: escalation_levels {
  join: colleges {
    type: left_outer
    sql_on: ${escalation_levels.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: escalation_matrix {
  join: colleges {
    type: left_outer
    sql_on: ${escalation_matrix.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${escalation_matrix.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: escalation_notifications {
  join: users {
    type: left_outer
    sql_on: ${escalation_notifications.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: escalation_transactions {
  join: complaints {
    type: left_outer
    sql_on: ${escalation_transactions.complaint_id} = ${complaints.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${escalation_transactions.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${escalation_transactions.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${complaints.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${complaints.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${complaints.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${complaints.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${complaints.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${complaints.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${complaints.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: asset {
    type: left_outer
    sql_on: ${complaints.asset_id} = ${asset.asset_id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: item_master {
    type: left_outer
    sql_on: ${asset.item_master_id} = ${item_master.id} ;;
    relationship: many_to_one
  }
}

explore: failed_jobs {}

explore: faq_new {}

explore: fee_account_details {
  join: colleges {
    type: left_outer
    sql_on: ${fee_account_details.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: fee_item_types {
  join: colleges {
    type: left_outer
    sql_on: ${fee_item_types.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: fee_items {
  join: fee_types {
    type: left_outer
    sql_on: ${fee_items.fee_type_id} = ${fee_types.id} ;;
    relationship: many_to_one
  }

  join: services {
    type: left_outer
    sql_on: ${fee_items.service_id} = ${services.service_id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${fee_types.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: fee_mode_type {
  join: colleges {
    type: left_outer
    sql_on: ${fee_mode_type.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: fee_receipt_fields {}

explore: fee_settings {
  join: colleges {
    type: left_outer
    sql_on: ${fee_settings.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: fee_structure {
  join: colleges {
    type: left_outer
    sql_on: ${fee_structure.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${fee_structure.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${fee_structure.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${fee_structure.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${room_types.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: fee_structure_parameters {
  join: colleges {
    type: left_outer
    sql_on: ${fee_structure_parameters.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: fee_types {
  join: colleges {
    type: left_outer
    sql_on: ${fee_types.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: feeorder_document {
  join: student_fee {
    type: left_outer
    sql_on: ${feeorder_document.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${feeorder_document.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${student_fee.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${student_fee.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: feeremider_logs {
  join: hostels {
    type: left_outer
    sql_on: ${feeremider_logs.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${hostels.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: flagged_bulletins {
  join: bulletin {
    type: left_outer
    sql_on: ${flagged_bulletins.bulletin_id} = ${bulletin.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${bulletin.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${bulletin.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${bulletin.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${bulletin.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: flagged_comments {
  join: comments {
    type: left_outer
    sql_on: ${flagged_comments.comment_id} = ${comments.id} ;;
    relationship: many_to_one
  }

  join: bulletin {
    type: left_outer
    sql_on: ${comments.bulletin_id} = ${bulletin.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${bulletin.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${bulletin.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${bulletin.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${bulletin.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: floors {
  join: colleges {
    type: left_outer
    sql_on: ${floors.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${floors.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${floors.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: floors_config {
  join: colleges {
    type: left_outer
    sql_on: ${floors_config.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${floors_config.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${floors_config.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${floors_config.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${floors_config.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: form_associations {
  join: colleges {
    type: left_outer
    sql_on: ${form_associations.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: forms {
    type: left_outer
    sql_on: ${form_associations.form_id} = ${forms.id} ;;
    relationship: many_to_one
  }
}

explore: form_options {
  join: colleges {
    type: left_outer
    sql_on: ${form_options.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: forms {
    type: left_outer
    sql_on: ${form_options.form_id} = ${forms.id} ;;
    relationship: many_to_one
  }
}

explore: form_questions {
  join: colleges {
    type: left_outer
    sql_on: ${form_questions.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: forms {
    type: left_outer
    sql_on: ${form_questions.form_id} = ${forms.id} ;;
    relationship: many_to_one
  }
}

explore: form_responders {
  join: colleges {
    type: left_outer
    sql_on: ${form_responders.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: forms {
    type: left_outer
    sql_on: ${form_responders.form_id} = ${forms.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${form_responders.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: form_response_answers {
  join: colleges {
    type: left_outer
    sql_on: ${form_response_answers.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: forms {
    type: left_outer
    sql_on: ${form_response_answers.form_id} = ${forms.id} ;;
    relationship: many_to_one
  }
}

explore: form_responses {
  join: colleges {
    type: left_outer
    sql_on: ${form_responses.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: forms {
    type: left_outer
    sql_on: ${form_responses.form_id} = ${forms.id} ;;
    relationship: many_to_one
  }
}

explore: form_templates {
  join: colleges {
    type: left_outer
    sql_on: ${form_templates.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: forms {
  join: colleges {
    type: left_outer
    sql_on: ${forms.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: gender {}

explore: ghs_onboarding_payment {
  join: colleges {
    type: left_outer
    sql_on: ${ghs_onboarding_payment.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${ghs_onboarding_payment.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }

  join: razorpay_payments {
    type: left_outer
    sql_on: ${ghs_onboarding_payment.razorpay_payment_id} = ${razorpay_payments.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${razorpay_orders.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: student_fee {
    type: left_outer
    sql_on: ${razorpay_orders.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: ghs_onboarding_room_combinations {
  join: courses {
    type: left_outer
    sql_on: ${ghs_onboarding_room_combinations.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${ghs_onboarding_room_combinations.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${ghs_onboarding_room_combinations.room_ids} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${courses.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${rooms.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${rooms.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${rooms.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: ghs_onboarding_student {
  join: courses {
    type: left_outer
    sql_on: ${ghs_onboarding_student.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${ghs_onboarding_student.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${ghs_onboarding_student.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }

  join: sale_items {
    type: left_outer
    sql_on: ${ghs_onboarding_student.sale_item_ids} = ${sale_items.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${courses.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${razorpay_orders.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: student_fee {
    type: left_outer
    sql_on: ${razorpay_orders.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: head_notifications {
  join: users {
    type: left_outer
    sql_on: ${head_notifications.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: hostel_check_in_out_tracking {
  join: colleges {
    type: left_outer
    sql_on: ${hostel_check_in_out_tracking.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${hostel_check_in_out_tracking.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${hostel_check_in_out_tracking.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: hostel_checkout_checkin_biomatrix {
  join: students {
    type: left_outer
    sql_on: ${hostel_checkout_checkin_biomatrix.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${hostel_checkout_checkin_biomatrix.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${hostel_checkout_checkin_biomatrix.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${hostel_checkout_checkin_biomatrix.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: hostel_checkout_checkin_ip {
  join: colleges {
    type: left_outer
    sql_on: ${hostel_checkout_checkin_ip.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: hostel_checkout_checkin_ip_log {
  join: colleges {
    type: left_outer
    sql_on: ${hostel_checkout_checkin_ip_log.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: hostel_checkout_checkin_settings {
  join: colleges {
    type: left_outer
    sql_on: ${hostel_checkout_checkin_settings.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${hostel_checkout_checkin_settings.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: hostels {
  join: colleges {
    type: left_outer
    sql_on: ${hostels.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: inbound_log {}

explore: inv_category {
  join: colleges {
    type: left_outer
    sql_on: ${inv_category.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: inv_category_itemscategory {
  join: colleges {
    type: left_outer
    sql_on: ${inv_category_itemscategory.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: inv_category {
    type: left_outer
    sql_on: ${inv_category_itemscategory.inv_category_id} = ${inv_category.id} ;;
    relationship: many_to_one
  }

  join: inv_items_category {
    type: left_outer
    sql_on: ${inv_category_itemscategory.inv_items_category_id} = ${inv_items_category.id} ;;
    relationship: many_to_one
  }
}

explore: inv_items {
  join: colleges {
    type: left_outer
    sql_on: ${inv_items.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: inv_items_category {
    type: left_outer
    sql_on: ${inv_items.inv_items_category_id} = ${inv_items_category.id} ;;
    relationship: many_to_one
  }
}

explore: inv_items_batch {
  join: colleges {
    type: left_outer
    sql_on: ${inv_items_batch.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: inv_items {
    type: left_outer
    sql_on: ${inv_items_batch.inv_items_id} = ${inv_items.id} ;;
    relationship: many_to_one
  }

  join: inv_items_category {
    type: left_outer
    sql_on: ${inv_items.inv_items_category_id} = ${inv_items_category.id} ;;
    relationship: many_to_one
  }
}

explore: inv_items_category {
  join: colleges {
    type: left_outer
    sql_on: ${inv_items_category.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: inv_items_list {
  join: colleges {
    type: left_outer
    sql_on: ${inv_items_list.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: inv_items {
    type: left_outer
    sql_on: ${inv_items_list.inv_items_id} = ${inv_items.id} ;;
    relationship: many_to_one
  }

  join: inv_items_batch {
    type: left_outer
    sql_on: ${inv_items_list.inv_items_batch_id} = ${inv_items_batch.id} ;;
    relationship: many_to_one
  }

  join: inv_items_category {
    type: left_outer
    sql_on: ${inv_items.inv_items_category_id} = ${inv_items_category.id} ;;
    relationship: many_to_one
  }
}

explore: inv_room_type_map {
  join: colleges {
    type: left_outer
    sql_on: ${inv_room_type_map.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: inv_items {
    type: left_outer
    sql_on: ${inv_room_type_map.inv_items_id} = ${inv_items.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${inv_room_type_map.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: inv_items_category {
    type: left_outer
    sql_on: ${inv_items.inv_items_category_id} = ${inv_items_category.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${room_types.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: inv_rooms_items_list {
  join: colleges {
    type: left_outer
    sql_on: ${inv_rooms_items_list.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: inv_items {
    type: left_outer
    sql_on: ${inv_rooms_items_list.inv_items_id} = ${inv_items.id} ;;
    relationship: many_to_one
  }

  join: inv_items_list {
    type: left_outer
    sql_on: ${inv_rooms_items_list.inv_items_list_id} = ${inv_items_list.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${inv_rooms_items_list.rooms_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${inv_rooms_items_list.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: inv_items_category {
    type: left_outer
    sql_on: ${inv_items.inv_items_category_id} = ${inv_items_category.id} ;;
    relationship: many_to_one
  }

  join: inv_items_batch {
    type: left_outer
    sql_on: ${inv_items_list.inv_items_batch_id} = ${inv_items_batch.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${rooms.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${rooms.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${rooms.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: inventory {
  join: colleges {
    type: left_outer
    sql_on: ${inventory.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: inventory_group {
    type: left_outer
    sql_on: ${inventory.inventory_group_id} = ${inventory_group.id} ;;
    relationship: many_to_one
  }
}

explore: inventory_group {
  join: colleges {
    type: left_outer
    sql_on: ${inventory_group.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: inventory_items {
  join: colleges {
    type: left_outer
    sql_on: ${inventory_items.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${inventory_items.inventory_id} = ${inventory.id} ;;
    relationship: many_to_one
  }

  join: inventory_group {
    type: left_outer
    sql_on: ${inventory.inventory_group_id} = ${inventory_group.id} ;;
    relationship: many_to_one
  }
}

explore: invoice_generator_ids {}

explore: invoice_generator_settings {}

explore: item_master {
  join: colleges {
    type: left_outer
    sql_on: ${item_master.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: items {
  join: category {
    type: left_outer
    sql_on: ${items.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${category.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: ivr {}

explore: jgu_onboarding_room_combinations {
  join: courses {
    type: left_outer
    sql_on: ${jgu_onboarding_room_combinations.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${jgu_onboarding_room_combinations.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${jgu_onboarding_room_combinations.room_ids} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${courses.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${rooms.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${rooms.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${rooms.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: jgu_onboarding_student {
  join: courses {
    type: left_outer
    sql_on: ${jgu_onboarding_student.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${jgu_onboarding_student.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${jgu_onboarding_student.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }

  join: sale_items {
    type: left_outer
    sql_on: ${jgu_onboarding_student.sale_item_ids} = ${sale_items.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${courses.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${razorpay_orders.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: student_fee {
    type: left_outer
    sql_on: ${razorpay_orders.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: jobs {}

explore: late_fee_settings {}

explore: leave_approvers {
  join: colleges {
    type: left_outer
    sql_on: ${leave_approvers.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: leave_types {
    type: left_outer
    sql_on: ${leave_approvers.leave_type_id} = ${leave_types.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${leave_approvers.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: leave_comment_images {
  join: leaves {
    type: left_outer
    sql_on: ${leave_comment_images.leave_id} = ${leaves.id} ;;
    relationship: many_to_one
  }

  join: leave_comments {
    type: left_outer
    sql_on: ${leave_comment_images.leave_comment_id} = ${leave_comments.id} ;;
    relationship: many_to_one
  }

  join: leave_queue {
    type: left_outer
    sql_on: ${leave_comment_images.leave_queue_id} = ${leave_queue.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${leaves.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${leaves.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${leaves.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${leaves.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: leave_comments {
  join: leaves {
    type: left_outer
    sql_on: ${leave_comments.leave_id} = ${leaves.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${leaves.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${leaves.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${leaves.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${leaves.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: leave_interim_approvers {
  join: colleges {
    type: left_outer
    sql_on: ${leave_interim_approvers.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: leave_interim_status {
  join: colleges {
    type: left_outer
    sql_on: ${leave_interim_status.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: leaves {
    type: left_outer
    sql_on: ${leave_interim_status.leave_id} = ${leaves.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${leaves.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${leaves.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${leaves.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: leave_manual_check_in_review {
  join: leaves {
    type: left_outer
    sql_on: ${leave_manual_check_in_review.leave_id} = ${leaves.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${leave_manual_check_in_review.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${leaves.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${leaves.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${leaves.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: leave_model {
  join: category {
    type: left_outer
    sql_on: ${leave_model.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: leaves {
    type: left_outer
    sql_on: ${leave_model.leave_id} = ${leaves.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${leave_model.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: leave_types {
    type: left_outer
    sql_on: ${leave_model.leave_type_id} = ${leave_types.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${category.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${leaves.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: leave_queue {
  join: leaves {
    type: left_outer
    sql_on: ${leave_queue.leave_id} = ${leaves.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${leave_queue.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${leave_queue.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${leaves.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${leaves.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: leave_settings {
  join: colleges {
    type: left_outer
    sql_on: ${leave_settings.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: leave_status {
  join: leaves {
    type: left_outer
    sql_on: ${leave_status.leave_id} = ${leaves.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${leaves.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${leaves.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${leaves.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${leaves.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: leave_types {
  join: colleges {
    type: left_outer
    sql_on: ${leave_types.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: leaves {
  join: users {
    type: left_outer
    sql_on: ${leaves.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${leaves.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${leaves.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${leaves.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: leaves_history {
  join: leaves {
    type: left_outer
    sql_on: ${leaves_history.leave_id} = ${leaves.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${leaves_history.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${leaves_history.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${leaves_history.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${leaves_history.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: ledger_master {
  join: students {
    type: left_outer
    sql_on: ${ledger_master.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${ledger_master.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: ledger_transactions {
  join: colleges {
    type: left_outer
    sql_on: ${ledger_transactions.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${ledger_transactions.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: locations {
  join: colleges {
    type: left_outer
    sql_on: ${locations.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: login_history {
  join: users {
    type: left_outer
    sql_on: ${login_history.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: login_status {
  join: users {
    type: left_outer
    sql_on: ${login_status.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: mainservice {
  join: colleges {
    type: left_outer
    sql_on: ${mainservice.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: maintenance_service_associations {
  join: services {
    type: left_outer
    sql_on: ${maintenance_service_associations.service_id} = ${services.service_id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${services.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: maintenance_service_providers {}

explore: maintenance_services_master {
  join: room_types {
    type: left_outer
    sql_on: ${maintenance_services_master.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: fee_types {
    type: left_outer
    sql_on: ${maintenance_services_master.fee_type_id} = ${fee_types.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${room_types.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${room_types.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: mealmenu {
  join: items {
    type: left_outer
    sql_on: ${mealmenu.itemid} = ${items.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${items.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${category.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: menu_items {}

explore: menumgmt {}

explore: mess_allocation_mail {
  join: colleges {
    type: left_outer
    sql_on: ${mess_allocation_mail.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${mess_allocation_mail.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${mess_allocation_mail.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: mess_booking_disabled {
  join: users {
    type: left_outer
    sql_on: ${mess_booking_disabled.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: mess_booking_disabled_history {
  join: users {
    type: left_outer
    sql_on: ${mess_booking_disabled_history.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: mess_bookings_cancelled {
  join: users {
    type: left_outer
    sql_on: ${mess_bookings_cancelled.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${mess_bookings_cancelled.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: mess_coupon_settings {
  join: colleges {
    type: left_outer
    sql_on: ${mess_coupon_settings.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: mess_feedback_settings {
  join: colleges {
    type: left_outer
    sql_on: ${mess_feedback_settings.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: mess_feedbacks {
  join: students {
    type: left_outer
    sql_on: ${mess_feedbacks.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: mess_location_allocations {
  join: colleges {
    type: left_outer
    sql_on: ${mess_location_allocations.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${mess_location_allocations.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${mess_location_allocations.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: mess_location_allocations_history {
  join: colleges {
    type: left_outer
    sql_on: ${mess_location_allocations_history.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${mess_location_allocations_history.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${mess_location_allocations_history.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: mess_location_settings {
  join: colleges {
    type: left_outer
    sql_on: ${mess_location_settings.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${mess_location_settings.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: mess_selection_preference {
  join: users {
    type: left_outer
    sql_on: ${mess_selection_preference.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: mess_selection_users {
  join: users {
    type: left_outer
    sql_on: ${mess_selection_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: mess_settings {}

explore: mess_user_balance {
  join: colleges {
    type: left_outer
    sql_on: ${mess_user_balance.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${mess_user_balance.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: mess_user_coupons {
  join: colleges {
    type: left_outer
    sql_on: ${mess_user_coupons.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${mess_user_coupons.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: mess_coupon_settings {
    type: left_outer
    sql_on: ${mess_user_coupons.mess_coupon_settings_id} = ${mess_coupon_settings.id} ;;
    relationship: many_to_one
  }
}

explore: messmanager {
  join: locations {
    type: left_outer
    sql_on: ${messmanager.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${locations.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: migrations {}

explore: module_configuration {}

explore: module_configuration_permission {
  join: colleges {
    type: left_outer
    sql_on: ${module_configuration_permission.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: module_permission_list {
  join: colleges {
    type: left_outer
    sql_on: ${module_permission_list.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: night_attendance {
  join: students {
    type: left_outer
    sql_on: ${night_attendance.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: notification_config_settings {}

explore: notification_permission {}

explore: notification_rules {}

explore: notification_rules_actions {}

explore: notification_templates {}

explore: oauth_access_tokens {
  join: users {
    type: left_outer
    sql_on: ${oauth_access_tokens.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: oauth_auth_codes {
  join: users {
    type: left_outer
    sql_on: ${oauth_auth_codes.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: oauth_clients {
  join: users {
    type: left_outer
    sql_on: ${oauth_clients.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: oauth_jwt_token {
  join: colleges {
    type: left_outer
    sql_on: ${oauth_jwt_token.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${oauth_jwt_token.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: oauth_personal_access_clients {}

explore: oauth_refresh_tokens {}

explore: offboarding_approvers {
  join: colleges {
    type: left_outer
    sql_on: ${offboarding_approvers.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${offboarding_approvers.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${offboarding_approvers.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: offboarding_approvers_template {
  join: colleges {
    type: left_outer
    sql_on: ${offboarding_approvers_template.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${offboarding_approvers_template.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: offboarding_docs {
  join: colleges {
    type: left_outer
    sql_on: ${offboarding_docs.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${offboarding_docs.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: offboarding_email_recievers {
  join: colleges {
    type: left_outer
    sql_on: ${offboarding_email_recievers.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: offboarding_history {
  join: students {
    type: left_outer
    sql_on: ${offboarding_history.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${offboarding_history.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: offboarding_invoices {
  join: students {
    type: left_outer
    sql_on: ${offboarding_invoices.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${offboarding_invoices.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: offboarding_student_init_permission {
  join: colleges {
    type: left_outer
    sql_on: ${offboarding_student_init_permission.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: onboarding_bulkuplaod {
  join: colleges {
    type: left_outer
    sql_on: ${onboarding_bulkuplaod.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: onboarding_contract_sign {
  join: colleges {
    type: left_outer
    sql_on: ${onboarding_contract_sign.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: onboarding_document_verification_data {
  join: colleges {
    type: left_outer
    sql_on: ${onboarding_document_verification_data.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: onboarding_document_verification_templates {
  join: colleges {
    type: left_outer
    sql_on: ${onboarding_document_verification_templates.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: onboarding_feedback_settings {
  join: colleges {
    type: left_outer
    sql_on: ${onboarding_feedback_settings.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: onboarding_feedbacks {
  join: colleges {
    type: left_outer
    sql_on: ${onboarding_feedbacks.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${onboarding_feedbacks.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: onboarding_payment_configurations {}

explore: onboarding_room_configurations {}

explore: onboarding_sale_items {
  join: colleges {
    type: left_outer
    sql_on: ${onboarding_sale_items.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: sale_items {
    type: left_outer
    sql_on: ${onboarding_sale_items.sale_item_id} = ${sale_items.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${sale_items.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${room_types.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: open_paramconfig {}

explore: open_table_headers {}

explore: opensqlqueries {}

explore: otp {}

explore: otp_attempt_tracking {}

explore: otps {}

explore: otps_unregistered {}

explore: outbound_calls {
  join: leaves {
    type: left_outer
    sql_on: ${outbound_calls.leave_id} = ${leaves.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${leaves.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${leaves.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${leaves.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${leaves.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: outbound_sms {}

explore: paramconfig {}

explore: parent_communications {
  join: students {
    type: left_outer
    sql_on: ${parent_communications.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${parent_communications.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${parent_communications.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${parent_communications.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: parent_students {
  join: users {
    type: left_outer
    sql_on: ${parent_students.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${parent_students.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: parentcomm_response {}

explore: parentcomm_response_images {
  join: parentcomm_response {
    type: left_outer
    sql_on: ${parentcomm_response_images.parentcomm_response_id} = ${parentcomm_response.id} ;;
    relationship: many_to_one
  }
}

explore: parents_guardians {
  join: students {
    type: left_outer
    sql_on: ${parents_guardians.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: partner_post {
  join: category {
    type: left_outer
    sql_on: ${partner_post.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${category.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: partner_post_attachments {}

explore: partner_post_flagged {
  join: colleges {
    type: left_outer
    sql_on: ${partner_post_flagged.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: partner_post_subscriptions {
  join: students {
    type: left_outer
    sql_on: ${partner_post_subscriptions.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: password_resets {}

explore: payment_credit_debit_note {
  join: students {
    type: left_outer
    sql_on: ${payment_credit_debit_note.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: payment_getway_logs {
  join: students {
    type: left_outer
    sql_on: ${payment_getway_logs.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: payment_invoices {
  join: students {
    type: left_outer
    sql_on: ${payment_invoices.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: sale_items {
    type: left_outer
    sql_on: ${payment_invoices.sale_item_id} = ${sale_items.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${sale_items.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${room_types.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: payment_invoices_receipts_association {}

explore: payment_modes {}

explore: payment_receipts {
  join: students {
    type: left_outer
    sql_on: ${payment_receipts.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: payment_refunds {
  join: colleges {
    type: left_outer
    sql_on: ${payment_refunds.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${payment_refunds.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: payment_transactions {
  join: colleges {
    type: left_outer
    sql_on: ${payment_transactions.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${payment_transactions.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: student_fee {
    type: left_outer
    sql_on: ${payment_transactions.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${student_fee.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: payment_transactions_activity_history {
  join: colleges {
    type: left_outer
    sql_on: ${payment_transactions_activity_history.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${payment_transactions_activity_history.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: student_fee {
    type: left_outer
    sql_on: ${payment_transactions_activity_history.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${student_fee.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: payment_trial {}

explore: permission_reports {
  join: roles {
    type: left_outer
    sql_on: ${permission_reports.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${roles.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: permission_role {
  join: permissions {
    type: left_outer
    sql_on: ${permission_role.permission_id} = ${permissions.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${permission_role.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${roles.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: permissions {}

explore: poll_options {
  join: polls {
    type: left_outer
    sql_on: ${poll_options.poll_id} = ${polls.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${polls.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${polls.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${polls.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${polls.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: poll_votes {
  join: polls {
    type: left_outer
    sql_on: ${poll_votes.poll_id} = ${polls.id} ;;
    relationship: many_to_one
  }

  join: poll_options {
    type: left_outer
    sql_on: ${poll_votes.poll_option_id} = ${poll_options.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${poll_votes.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${polls.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${polls.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${polls.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${polls.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: polls {
  join: colleges {
    type: left_outer
    sql_on: ${polls.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${polls.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: priority {
    type: left_outer
    sql_on: ${polls.priority_id} = ${priority.id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${polls.category_id} = ${category.id} ;;
    relationship: many_to_one
  }
}

explore: postapis {}

explore: preregisterstudents {
  join: colleges {
    type: left_outer
    sql_on: ${preregisterstudents.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${preregisterstudents.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: preregisterstudents_emails_log {}

explore: preregisterstudents_temp {
  join: colleges {
    type: left_outer
    sql_on: ${preregisterstudents_temp.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: priority {
  join: colleges {
    type: left_outer
    sql_on: ${priority.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: pro_rata {}

explore: property_images {}

explore: property_types {
  join: colleges {
    type: left_outer
    sql_on: ${property_types.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: purchase_order {
  join: colleges {
    type: left_outer
    sql_on: ${purchase_order.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: purchase_order_details {
  join: colleges {
    type: left_outer
    sql_on: ${purchase_order_details.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: push_notification {
  join: users {
    type: left_outer
    sql_on: ${push_notification.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: push_notification_log {
  join: users {
    type: left_outer
    sql_on: ${push_notification_log.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: push_notification_tracking {
  join: users {
    type: left_outer
    sql_on: ${push_notification_tracking.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: qr_attendance {
  join: students {
    type: left_outer
    sql_on: ${qr_attendance.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${qr_attendance.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: razorpay_account {
  join: colleges {
    type: left_outer
    sql_on: ${razorpay_account.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: fee_types {
    type: left_outer
    sql_on: ${razorpay_account.fee_type_id} = ${fee_types.id} ;;
    relationship: many_to_one
  }
}

explore: razorpay_account_mapping {
  join: colleges {
    type: left_outer
    sql_on: ${razorpay_account_mapping.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: razorpay_commission {}

explore: razorpay_orders {
  join: colleges {
    type: left_outer
    sql_on: ${razorpay_orders.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${razorpay_orders.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: student_fee {
    type: left_outer
    sql_on: ${razorpay_orders.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: razorpay_payment_transaction {
  join: colleges {
    type: left_outer
    sql_on: ${razorpay_payment_transaction.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${razorpay_payment_transaction.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: student_fee {
    type: left_outer
    sql_on: ${razorpay_payment_transaction.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${student_fee.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: razorpay_payments {
  join: colleges {
    type: left_outer
    sql_on: ${razorpay_payments.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${razorpay_payments.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: student_fee {
    type: left_outer
    sql_on: ${razorpay_payments.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${student_fee.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: razorpay_routing_transaction {
  join: colleges {
    type: left_outer
    sql_on: ${razorpay_routing_transaction.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${razorpay_routing_transaction.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: student_fee {
    type: left_outer
    sql_on: ${razorpay_routing_transaction.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${student_fee.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: receipt_template {
  join: colleges {
    type: left_outer
    sql_on: ${receipt_template.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: sections {
    type: left_outer
    sql_on: ${receipt_template.section_id} = ${sections.id} ;;
    relationship: many_to_one
  }
}

explore: recepients {
  join: users {
    type: left_outer
    sql_on: ${recepients.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${recepients.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: regex {}

explore: reminder_logs {
  join: students {
    type: left_outer
    sql_on: ${reminder_logs.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: student_fee {
    type: left_outer
    sql_on: ${reminder_logs.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${student_fee.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: reminder_room_selection_logs {
  join: students {
    type: left_outer
    sql_on: ${reminder_room_selection_logs.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: student_fee {
    type: left_outer
    sql_on: ${reminder_room_selection_logs.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${student_fee.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: repetition {}

explore: repetition_history {}

explore: report_history {
  join: colleges {
    type: left_outer
    sql_on: ${report_history.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${report_history.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: report_options {
  join: colleges {
    type: left_outer
    sql_on: ${report_options.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: report_parameters {
  join: colleges {
    type: left_outer
    sql_on: ${report_parameters.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: report_template {
  join: dynamic_contents {
    type: left_outer
    sql_on: ${report_template.dynamic_contents_id} = ${dynamic_contents.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${report_template.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: reports_generate_tracking {
  join: colleges {
    type: left_outer
    sql_on: ${reports_generate_tracking.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${reports_generate_tracking.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: reva_student_onboarding {
  join: courses {
    type: left_outer
    sql_on: ${reva_student_onboarding.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${reva_student_onboarding.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: academic_years {
    type: left_outer
    sql_on: ${reva_student_onboarding.academic_year_id} = ${academic_years.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${courses.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: role_user {
  join: roles {
    type: left_outer
    sql_on: ${role_user.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${role_user.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${roles.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: roles {
  join: colleges {
    type: left_outer
    sql_on: ${roles.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: room_blocking_history {
  join: colleges {
    type: left_outer
    sql_on: ${room_blocking_history.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${room_blocking_history.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${rooms.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${rooms.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${rooms.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: room_bulk_upload_transactions {
  join: colleges {
    type: left_outer
    sql_on: ${room_bulk_upload_transactions.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: room_reservations {
  join: colleges {
    type: left_outer
    sql_on: ${room_reservations.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${room_reservations.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${room_reservations.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${room_reservations.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${room_reservations.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: student_fee {
    type: left_outer
    sql_on: ${room_reservations.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${student_fee.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }
}

explore: room_transfer_swap_requests {
  join: colleges {
    type: left_outer
    sql_on: ${room_transfer_swap_requests.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: room_type_attributes {}

explore: room_type_attributes_association {
  join: room_types {
    type: left_outer
    sql_on: ${room_type_attributes_association.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${room_types.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${room_types.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: room_types {
  join: colleges {
    type: left_outer
    sql_on: ${room_types.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${room_types.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: roomfees {
  join: colleges {
    type: left_outer
    sql_on: ${roomfees.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${roomfees.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: rooms {
  join: colleges {
    type: left_outer
    sql_on: ${rooms.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${rooms.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${rooms.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${rooms.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: sale_item_fee_item_association {
  join: sale_items {
    type: left_outer
    sql_on: ${sale_item_fee_item_association.sale_item_id} = ${sale_items.id} ;;
    relationship: many_to_one
  }

  join: fee_items {
    type: left_outer
    sql_on: ${sale_item_fee_item_association.fee_item_id} = ${fee_items.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${sale_items.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${room_types.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${room_types.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: fee_types {
    type: left_outer
    sql_on: ${fee_items.fee_type_id} = ${fee_types.id} ;;
    relationship: many_to_one
  }

  join: services {
    type: left_outer
    sql_on: ${fee_items.service_id} = ${services.service_id} ;;
    relationship: many_to_one
  }
}

explore: sale_item_types {
  join: colleges {
    type: left_outer
    sql_on: ${sale_item_types.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: sale_items {
  join: room_types {
    type: left_outer
    sql_on: ${sale_items.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${room_types.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${room_types.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: saved_searches {}

explore: sb_settings {}

explore: sbc_onboarding_payment {
  join: colleges {
    type: left_outer
    sql_on: ${sbc_onboarding_payment.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${sbc_onboarding_payment.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }

  join: razorpay_payments {
    type: left_outer
    sql_on: ${sbc_onboarding_payment.razorpay_payment_id} = ${razorpay_payments.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${razorpay_orders.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: student_fee {
    type: left_outer
    sql_on: ${razorpay_orders.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: sbc_onboarding_room_combinations {
  join: courses {
    type: left_outer
    sql_on: ${sbc_onboarding_room_combinations.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${sbc_onboarding_room_combinations.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${sbc_onboarding_room_combinations.room_ids} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${courses.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${rooms.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${rooms.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${rooms.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: sbc_onboarding_student {
  join: courses {
    type: left_outer
    sql_on: ${sbc_onboarding_student.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${sbc_onboarding_student.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${sbc_onboarding_student.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }

  join: sale_items {
    type: left_outer
    sql_on: ${sbc_onboarding_student.sale_item_ids} = ${sale_items.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${courses.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${razorpay_orders.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: student_fee {
    type: left_outer
    sql_on: ${razorpay_orders.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: sections {
  join: colleges {
    type: left_outer
    sql_on: ${sections.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: send_reports {
  join: colleges {
    type: left_outer
    sql_on: ${send_reports.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${send_reports.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: services {
  join: colleges {
    type: left_outer
    sql_on: ${services.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: sessions {
  join: users {
    type: left_outer
    sql_on: ${sessions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: sms_log {}

explore: sms_logs {}

explore: sqlqueries {}

explore: streams {
  join: colleges {
    type: left_outer
    sql_on: ${streams.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${streams.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }
}

explore: student_approver_tracking {
  join: colleges {
    type: left_outer
    sql_on: ${student_approver_tracking.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: approvers {
    type: left_outer
    sql_on: ${student_approver_tracking.approver_id} = ${approvers.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${approvers.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: student_approvers {
  join: colleges {
    type: left_outer
    sql_on: ${student_approvers.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${student_approvers.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${student_approvers.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: student_bank_details {
  join: users {
    type: left_outer
    sql_on: ${student_bank_details.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${student_bank_details.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: student_checked_in_out_status {
  join: colleges {
    type: left_outer
    sql_on: ${student_checked_in_out_status.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${student_checked_in_out_status.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${student_checked_in_out_status.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${rooms.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${rooms.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${rooms.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: student_fee {
  join: colleges {
    type: left_outer
    sql_on: ${student_fee.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${student_fee.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${student_fee.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: student_fee_activity_history {
  join: colleges {
    type: left_outer
    sql_on: ${student_fee_activity_history.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${student_fee_activity_history.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_fee_activity_history.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${student_fee_activity_history.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: razorpay_orders {
    type: left_outer
    sql_on: ${student_fee_activity_history.razorpay_order_id} = ${razorpay_orders.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: student_fee {
    type: left_outer
    sql_on: ${razorpay_orders.student_fee_id} = ${student_fee.id} ;;
    relationship: many_to_one
  }
}

explore: student_fee_bulk_update {
  join: colleges {
    type: left_outer
    sql_on: ${student_fee_bulk_update.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: student_fee_temp {
  join: colleges {
    type: left_outer
    sql_on: ${student_fee_temp.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: student_fee_udf {
  join: colleges {
    type: left_outer
    sql_on: ${student_fee_udf.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: student_location {
  join: students {
    type: left_outer
    sql_on: ${student_location.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${student_location.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: student_mess {
  join: users {
    type: left_outer
    sql_on: ${student_mess.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${student_mess.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: student_mess_copy {
  join: users {
    type: left_outer
    sql_on: ${student_mess_copy.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${student_mess_copy.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: student_mess_test {
  join: users {
    type: left_outer
    sql_on: ${student_mess_test.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${student_mess_test.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: student_payment {}

explore: student_requests {
  join: students {
    type: left_outer
    sql_on: ${student_requests.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: student_room {
  join: colleges {
    type: left_outer
    sql_on: ${student_room.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${student_room.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${student_room.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${student_room.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${student_room.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${student_room.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }
}

explore: student_service {
  join: students {
    type: left_outer
    sql_on: ${student_service.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: services {
    type: left_outer
    sql_on: ${student_service.service_id} = ${services.service_id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: student_tracking {
  join: users {
    type: left_outer
    sql_on: ${student_tracking.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: leaves {
    type: left_outer
    sql_on: ${student_tracking.leave_id} = ${leaves.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${student_tracking.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${student_tracking.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${leaves.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${leaves.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: student_tracking_history {
  join: users {
    type: left_outer
    sql_on: ${student_tracking_history.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: leaves {
    type: left_outer
    sql_on: ${student_tracking_history.leave_id} = ${leaves.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${student_tracking_history.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${student_tracking_history.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }

  join: students {
    type: left_outer
    sql_on: ${leaves.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${leaves.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: students {
  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: subcategory {
  join: category {
    type: left_outer
    sql_on: ${subcategory.category_id} = ${category.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${subcategory.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: table_headers {}

explore: temp_fee_insert {}

explore: temp_fee_insert_error_history {}

explore: temp_students_insert {
  join: colleges {
    type: left_outer
    sql_on: ${temp_students_insert.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: rooms {
    type: left_outer
    sql_on: ${temp_students_insert.room_id} = ${rooms.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${rooms.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${rooms.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${rooms.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${rooms.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: energy_meters {
    type: left_outer
    sql_on: ${rooms.energy_meter_id} = ${energy_meters.energy_meter_id} ;;
    relationship: many_to_one
  }

  join: door_locks {
    type: left_outer
    sql_on: ${rooms.door_lock_id} = ${door_locks.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: template_settings {}

explore: terms {
  join: colleges {
    type: left_outer
    sql_on: ${terms.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: terms_acceptance {
  join: users {
    type: left_outer
    sql_on: ${terms_acceptance.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${terms_acceptance.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: test_na {
  join: students {
    type: left_outer
    sql_on: ${test_na.student_id} = ${students.sb_student_uid} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${students.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${students.course_id} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${courses.stream_id} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: trn_leave_status {
  join: leave_types {
    type: left_outer
    sql_on: ${trn_leave_status.leave_type_id} = ${leave_types.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${leave_types.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: tutorial_video_flags {}

explore: ui_labels {}

explore: unique_ids {}

explore: unit_cost {}

explore: untitled_table {
  join: sale_items {
    type: left_outer
    sql_on: ${untitled_table.sale_item_id} = ${sale_items.id} ;;
    relationship: many_to_one
  }

  join: room_types {
    type: left_outer
    sql_on: ${sale_items.room_type_id} = ${room_types.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${room_types.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: hostels {
    type: left_outer
    sql_on: ${room_types.hostel_id} = ${hostels.id} ;;
    relationship: many_to_one
  }

  join: blocks {
    type: left_outer
    sql_on: ${room_types.block_id} = ${blocks.id} ;;
    relationship: many_to_one
  }

  join: floors {
    type: left_outer
    sql_on: ${room_types.floor_id} = ${floors.id} ;;
    relationship: many_to_one
  }

  join: property_types {
    type: left_outer
    sql_on: ${blocks.property_type_id} = ${property_types.id} ;;
    relationship: many_to_one
  }

  join: courses {
    type: left_outer
    sql_on: ${floors.courseid} = ${courses.id} ;;
    relationship: many_to_one
  }

  join: streams {
    type: left_outer
    sql_on: ${floors.streamid} = ${streams.id} ;;
    relationship: many_to_one
  }
}

explore: user_attendance {
  join: colleges {
    type: left_outer
    sql_on: ${user_attendance.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${user_attendance.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: sessions {
    type: left_outer
    sql_on: ${user_attendance.session_id} = ${sessions.id} ;;
    relationship: many_to_one
  }
}

explore: user_docs {
  join: colleges {
    type: left_outer
    sql_on: ${user_docs.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${user_docs.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: doc_types {
    type: left_outer
    sql_on: ${user_docs.doc_type_id} = ${doc_types.id} ;;
    relationship: many_to_one
  }
}

explore: user_fee_breakdowns {}

explore: user_fields_master {}

explore: user_fields_tenant {
  join: colleges {
    type: left_outer
    sql_on: ${user_fields_tenant.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: sections {
    type: left_outer
    sql_on: ${user_fields_tenant.section_id} = ${sections.id} ;;
    relationship: many_to_one
  }
}

explore: users {
  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: users_history {
  join: colleges {
    type: left_outer
    sql_on: ${users_history.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: users_incorrect_info {
  join: users {
    type: left_outer
    sql_on: ${users_incorrect_info.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: colleges {
    type: left_outer
    sql_on: ${users.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: users_mess {
  join: colleges {
    type: left_outer
    sql_on: ${users_mess.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: users_udf {
  join: colleges {
    type: left_outer
    sql_on: ${users_udf.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${users_udf.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: vendor {
  join: colleges {
    type: left_outer
    sql_on: ${vendor.college_id} = ${colleges.id} ;;
    relationship: many_to_one
  }
}

explore: whitelisted_ids {}

explore: widgets {}
