# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: telco_model_demo_predictions {
  hidden: yes

  join: telco_model_demo_predictions__predicted_customer_churn_probs {
    view_label: "Telco Model Demo Predictions: Predicted Customer Churn Probs"
    sql: LEFT JOIN UNNEST(${telco_model_demo_predictions.predicted_customer_churn_probs}) as telco_model_demo_predictions__predicted_customer_churn_probs ;;
    relationship: one_to_many
  }
}

# The name of this view in Looker is "Telco Model Demo Predictions"
view: telco_model_demo_predictions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `machine-learning-accelerator.looker_bqml.Telco_Model_Demo_predictions`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Customer Account Duration Months" in Explore.

  dimension: customer_account_duration_months {
    type: number
    sql: ${TABLE}.customer_account_duration_months ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_customer_account_duration_months {
    type: sum
    sql: ${customer_account_duration_months} ;;
  }

  measure: average_customer_account_duration_months {
    type: average
    sql: ${customer_account_duration_months} ;;
  }

  dimension: customer_churn {
    type: string
    sql: ${TABLE}.customer_churn ;;
  }

  dimension: customer_customer_id {
    primary_key: yes #https://bqml.cloud.looker.com/sql/4jprdxyky7gryd
    type: string
    sql: ${TABLE}.customer_customer_id ;;
  }

  dimension: customer_international_plan {
    type: string
    sql: ${TABLE}.customer_international_plan ;;
  }

  dimension: customer_service_calls_group {
    type: string
    sql: ${TABLE}.customer_service_calls_group ;;
  }

  dimension: customer_service_calls_group__sort_ {
    type: string
    sql: ${TABLE}.customer_service_calls_group__sort_ ;;
  }

  dimension: customer_state {
    type: string
    sql: ${TABLE}.customer_state ;;
  }

  dimension: customer_total_day_calls {
    type: number
    sql: ${TABLE}.customer_total_day_calls ;;
  }

  dimension: customer_total_day_charge {
    type: number
    sql: ${TABLE}.customer_total_day_charge ;;
  }

  dimension: customer_total_day_charge_group {
    type: string
    sql: ${TABLE}.customer_total_day_charge_group ;;
  }

  dimension: customer_total_day_charge_group__sort_ {
    type: string
    sql: ${TABLE}.customer_total_day_charge_group__sort_ ;;
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

  dimension: predicted_customer_churn {
    type: string
    sql: ${TABLE}.predicted_customer_churn ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: predicted_customer_churn_probs {
    hidden: no
    sql: ${TABLE}.predicted_customer_churn_probs ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

# The name of this view in Looker is "Telco Model Demo Predictions Predicted Customer Churn Probs"
view: telco_model_demo_predictions__predicted_customer_churn_probs {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Label" in Explore.

  dimension: label {
    type: string
    sql: label ;;
  }

  dimension: prob {
    type: number
    sql: prob ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_prob {
    type: sum
    sql: ${prob} ;;
  }

  measure: average_prob {
    type: average
    sql: ${prob} ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: telco_model_demo_predictions__predicted_customer_churn_probs {
    type: string
    hidden: yes
    sql: telco_model_demo_predictions__predicted_customer_churn_probs ;;
  }
}
