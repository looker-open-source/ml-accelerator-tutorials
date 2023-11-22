# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: kmeans6_predictions {
  hidden: yes
    join: kmeans6_predictions__nearest_centroids_distance {
      view_label: "Kmeans6 Predictions: Nearest Centroids Distance"
      sql: LEFT JOIN UNNEST(${kmeans6_predictions.nearest_centroids_distance}) as kmeans6_predictions__nearest_centroids_distance ;;
      relationship: one_to_many
    }
}
# The name of this view in Looker is "Kmeans6 Predictions"
view: kmeans6_predictions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `machine-learning-accelerator.looker_bqml.kmeans6_predictions` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Centroid ID" in Explore.

  dimension: centroid_id {
    type: number
    sql: ${TABLE}.CENTROID_ID ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: nearest_centroids_distance {
    hidden: yes
    sql: ${TABLE}.NEAREST_CENTROIDS_DISTANCE ;;
  }

  dimension: penguins_body_mass {
    type: number
    sql: ${TABLE}.penguins_body_mass ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_penguins_body_mass {
    type: sum
    sql: ${penguins_body_mass} ;;  }
  measure: average_penguins_body_mass {
    type: average
    sql: ${penguins_body_mass} ;;  }

  dimension: penguins_culmen_depth {
    type: number
    sql: ${TABLE}.penguins_culmen_depth ;;
  }

  dimension: penguins_culmen_length {
    type: number
    sql: ${TABLE}.penguins_culmen_length ;;
  }

  dimension: penguins_dataframe {
    type: string
    sql: ${TABLE}.penguins_dataframe ;;
  }

  dimension: penguins_flipper_length {
    type: number
    sql: ${TABLE}.penguins_flipper_length ;;
  }

  dimension: penguins_island {
    type: string
    sql: ${TABLE}.penguins_island ;;
  }

  dimension: penguins_sex {
    type: string
    sql: ${TABLE}.penguins_sex ;;
  }

  dimension: penguins_species {
    type: string
    sql: ${TABLE}.penguins_species ;;
  }

  dimension: trial_id {
    type: number
    sql: ${TABLE}.trial_id ;;
  }
  measure: count {
    type: count
  }
}

# The name of this view in Looker is "Kmeans6 Predictions Nearest Centroids Distance"
view: kmeans6_predictions__nearest_centroids_distance {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Centroid ID" in Explore.

  dimension: centroid_id {
    type: number
    sql: CENTROID_ID ;;
  }

  dimension: distance {
    type: number
    sql: DISTANCE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_distance {
    type: sum
    sql: ${distance} ;;  }
  measure: average_distance {
    type: average
    sql: ${distance} ;;  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: kmeans6_predictions__nearest_centroids_distance {
    type: string
    hidden: yes
    sql: kmeans6_predictions__nearest_centroids_distance ;;
  }
}
