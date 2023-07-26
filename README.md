### Example repository to use with Fivetran Transformations for dbt Core™
Use this repository as a template to get up and running quickly with Fivetran Transformations for dbt Core™

# Step 1 (Create a GitHub account)
If you haven't already, create a GitHub account. There are free plans available.

# Step 2 (Copy this repository)
Navigate (you are already here!) to this repository and click 'Use This Template'

<img width="1605" alt="Screenshot 2023-07-24 at 12 23 43 PM" src="https://github.com/fivetran/example_dbt_project/assets/97244562/9a10bdc7-3ffe-4176-8bd7-8cdb4526968b">

Then, click 'Create a new repository'

<img width="1605" alt="Screenshot 2023-07-24 at 12 23 50 PM" src="https://github.com/fivetran/example_dbt_project/assets/97244562/a79d5a68-4633-4326-b992-bc8ad3a17d9a">

Then, name your repository something like this

<img width="1605" alt="Screenshot 2023-07-24 at 12 24 09 PM" src="https://github.com/fivetran/example_dbt_project/assets/97244562/b6bf73fe-d4a3-4185-8ea4-0e53081a46f2">

# Step 3 (Customize your repository to mirror your Fivetran connectors)
We need to make a few changes to this repository to integrate with your Fivetran account.

***If you are interested in trying out Fivetran Data Models to transform your SaaS connetor data, please follow these steps:***

## Navigate to the Data Model(s) of interest
(https://fivetran.com/docs/transformations/data-models#fivetrandatamodels)

## Scroll to your desired Data Model and click on the 'Transform' Data Model 
<img width="1162" alt="image" src="https://github.com/fivetran/example_dbt_project/assets/97244562/11724ef6-8242-4505-a7c4-1270bad269cf">

## Make sure to copy the package code snippet (usually Step 2) and paste it in the `packages.yml` file located in your new repository
<img width="874" alt="image" src="https://github.com/fivetran/example_dbt_project/assets/97244562/95ae645f-5897-4d10-acb6-2482acc6d288">

There are already a few packages in this file, feel free to modify, remove or keep them!

## If needed, change the source location (usually Step 3) of your package to match the name of your Fivetran Connector. You can make this change in the `dbt_project.yml` file located in your new repository
<img width="874" alt="image" src="https://github.com/fivetran/example_dbt_project/assets/97244562/89c6fcbd-b06a-48a1-b416-1e6f3bafa224">

By default, our Data Models will assume your connector is named the default name. If your connector is not named the default name, put **your connector name** (schema name) in the schema portion of this variable. Typically, the database variable is not needed (you can comment out or delete that line if so).


***If you are interested in adding your own custom sql, please follow these steps:***

## Take note of your Fivetran connector name(s) (typically database, files, events or function connectors) and their schemas

![image](https://github.com/fivetran/example_dbt_project/assets/97244562/92229f6a-ba3d-4029-adbe-7fbf9802c55c)

In this case, I will want to take note of `postgres_rds_animal_crossing` because this is the schema where my Fivetran loaded data resides. _If you only have one schema, you may not need to take note of the schema. Use your destination to see what schema was created_

![image](https://github.com/fivetran/example_dbt_project/assets/97244562/e552f4df-cb37-4058-8a55-9703a0b0d4a3)


## Navigate to your `sources.yml' file that is already in your 'models' folder

Paste your connector_name_schema_name to the `name` section of one of the sources blocks. Then add your table names in the tables sections. If you need help on this part, feel free to read this post on Fivetran Community (https://community.fivetran.com/t5/user-group-for-dbt/sources-how-to-properly-utilize-integrated-scheduling/m-p/648#M56)

## Open your `0_staging` folder and navigate to `example_one.sql`

Notice how this query is using a source function. We need to make sure we modify this to read for your new source you just added in the step prior.

## Step 4
