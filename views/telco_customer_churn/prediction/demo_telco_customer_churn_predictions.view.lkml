## Captures selections from PREDICT tab of ML Accelerator for the Demo Telco Customer Churn model
## Includes Prediction fields along with all fields in the model and any selected
## Using the common field definitions as defined in the input data view demo_telco_customer_churn_input_data_selected view

include: "../input_data/demo_telco_customer_churn_input_data_selected.view"
view: demo_telco_customer_churn_predictions {
  extends: [demo_telco_customer_churn_input_data_selected]
  sql_table_name: `machine-learning-accelerator.looker_bqml.Demo_Telco_Customer_Churn_predictions`
    ;;



  dimension: customer_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.customer_customer_id ;;
  }

  # hide actual churn dimension as it is not populated for prediction dataframe
  dimension: churn {hidden: yes}

  dimension: predicted_customer_churn {
    view_label: "Predictions"
    hidden: yes
    type: string
    sql: ${TABLE}.predicted_customer_churn ;;
  }

  # this works for this demo example only which is a binary classification model predicting Yes/No values for Churn
  # would need to be modified for other examples and multi-classification models (could restate the prediction view to pass the parameter to ML_PREDICT function)

  dimension: predicted_customer_churn_using_parameter {
    view_label: "Predictions"
    label: "Predicted Churn (Yes/No)"
    description: "Predicted Customer Churn (Yes/No) based on Predicition Probability Threshold Parameter (default 50%)"
    type: string
    sql: case when ${probability_of_churn} >= {% parameter set_prediction_prob_threshold %} then "Yes" else "No" end ;;
  }

  # array of structs which show the probabilities of each Churn value (Yes or No)
  # hide here and then unnest in the explore definition with the view demo_telco_customer_churn_predicitions__predicted_customer_churn_probs
  dimension: predicted_customer_churn_probs {
    hidden: yes
    sql: ${TABLE}.predicted_customer_churn_probs ;;
  }


  # pull out probability of churn = Yes from array of structs
  dimension: probability_of_churn {
    view_label: "Predictions"
    type: number
    sql: (select prob from unnest(${TABLE}.predicted_customer_churn_probs) where label = 'Yes') ;;
    value_format_name: percent_2
  }

 parameter: set_prediction_prob_threshold {
  view_label: "Predictions"
  label  : "Set Predicition Probability Threshold"
  description: "Set the probability threshold (value >= 0 and < 100). The default value is 50. If probability to churn is >= this value, customer is predicted to Churn."
  type: number
  allowed_value: {value:"0.20" label: "20"}
  allowed_value: {value:"0.30" label: "30"}
  allowed_value: {value:"0.40" label: "40"}
  allowed_value: {value:"0.50" label: "50"}
  allowed_value: {value:"0.60" label: "60"}
  allowed_value: {value:"0.70" label: "70"}
  allowed_value: {value:"0.80" label: "80"}
  allowed_value: {value:"0.90" label: "90"}
  default_value: "0.50"
}


  measure: customer_count {
    type: count
    drill_fields: []
  }

  measure: predicted_churn_count {
    view_label: "Predictions"
    type: count
    filters: [predicted_customer_churn_using_parameter: "Yes"]
  }
  measure: predicted_churn_rate {
    view_label: "Predictions"
    type: number
    sql: 1.0*${predicted_churn_count} / NULLIF(${customer_count},0) ;;
    value_format_name: percent_1
  }

}
