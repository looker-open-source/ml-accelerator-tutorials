# The name of this view in Looker is "Demo Telco Customer Churn Input Data Model Training"
view: demo_telco_customer_churn_input_data_model_training {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `machine-learning-accelerator.looker_bqml.Demo_Telco_Customer_Churn_input_data_model_training`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Customer Churn" in Explore.

  dimension: customer_churn {
    type: string
    sql: ${TABLE}.customer_churn ;;
  }

  dimension: customer_customer_id {
    type: string
    sql: ${TABLE}.customer_customer_id ;;
  }

  dimension: customer_international_plan {
    type: string
    sql: ${TABLE}.customer_international_plan ;;
  }

  dimension: customer_state {
    type: string
    sql: ${TABLE}.customer_state ;;
  }

  dimension: customer_total_day_calls {
    type: number
    sql: ${TABLE}.customer_total_day_calls ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_customer_total_day_calls {
    type: sum
    sql: ${customer_total_day_calls} ;;
  }

  measure: average_customer_total_day_calls {
    type: average
    sql: ${customer_total_day_calls} ;;
  }

  dimension: customer_total_day_charge {
    type: number
    sql: ${TABLE}.customer_total_day_charge ;;
  }

  dimension: customer_total_day_minutes {
    type: number
    sql: ${TABLE}.customer_total_day_minutes ;;
  }

  dimension: customer_total_eve_calls {
    type: number
    sql: ${TABLE}.customer_total_eve_calls ;;
  }

  dimension: customer_total_eve_charge {
    type: number
    sql: ${TABLE}.customer_total_eve_charge ;;
  }

  dimension: customer_total_eve_minutes {
    type: number
    sql: ${TABLE}.customer_total_eve_minutes ;;
  }

  dimension: customer_total_intl_calls {
    type: number
    sql: ${TABLE}.customer_total_intl_calls ;;
  }

  dimension: customer_total_intl_charge {
    type: number
    sql: ${TABLE}.customer_total_intl_charge ;;
  }

  dimension: customer_total_intl_minutes {
    type: number
    sql: ${TABLE}.customer_total_intl_minutes ;;
  }

  dimension: customer_total_night_calls {
    type: number
    sql: ${TABLE}.customer_total_night_calls ;;
  }

  dimension: customer_total_night_charge {
    type: number
    sql: ${TABLE}.customer_total_night_charge ;;
  }

  dimension: customer_total_night_minutes {
    type: number
    sql: ${TABLE}.customer_total_night_minutes ;;
  }

  dimension: customer_total_service_calls {
    type: number
    sql: ${TABLE}.customer_total_service_calls ;;
  }

  dimension: customer_total_vmail_messages {
    type: number
    sql: ${TABLE}.customer_total_vmail_messages ;;
  }

  dimension: customer_voice_mail_plan {
    type: string
    sql: ${TABLE}.customer_voice_mail_plan ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
