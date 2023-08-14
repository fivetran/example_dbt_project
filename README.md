*This is a sample dbt Core project for Fivetran users– it can be cloned and modified to help you get up and running with Fivetran Transformations for dbt Core™.*

*While this repository can be connected into Fivetran as-is, we recommend that you install an IDE and dbt Core locally to develop your production models. More information on setting up your local environment can be found in the [dbt Labs documentation](https://docs.getdbt.com/quickstarts/manual-install?step=1).*

# Step 1: Create a GitHub account
A Github account is necessary for changing code and creating the right permissions to connect your project into Fivetran. Your company may have a Github organization you can join. There are also free plans available [here](https://github.com/join). 

# Step 2: Copy this repository
Click `Use This Template` in the top right of this project's landing page.

<img width="1605" alt="Screenshot 2023-07-24 at 12 23 43 PM" src="https://github.com/fivetran/example_dbt_project/assets/97244562/9a10bdc7-3ffe-4176-8bd7-8cdb4526968b">


Next, click `Create a new repository`.

<img width="1605" alt="Screenshot 2023-07-24 at 12 23 50 PM" src="https://github.com/fivetran/example_dbt_project/assets/97244562/a79d5a68-4633-4326-b992-bc8ad3a17d9a">


Next, name your repository. You can use `dbt_project`, or a naming convention of your choice.

<img width="1605" alt="Screenshot 2023-07-24 at 12 24 09 PM" src="https://github.com/fivetran/example_dbt_project/assets/97244562/b6bf73fe-d4a3-4185-8ea4-0e53081a46f2">

# Step 3: Install dbt packages
We need to make a few changes to this repository to integrate with your Fivetran account. The following steps show how you can use Fivetran's open source data models to build on top of your Fivetran source data.

## Choose your data model
Navigate to the Fivetran documentation on [data models](https://fivetran.com/docs/transformations/data-models#fivetrandatamodels). Select one of your Fivetran connector sources, and click on the `transform` data model link.
<img width="1162" alt="image" src="https://github.com/fivetran/example_dbt_project/assets/97244562/11724ef6-8242-4505-a7c4-1270bad269cf">

## Copy the package code snippet
In the transform documentation, this is usually found in `Step 2`. Paste this snippet in the `packages.yml` file in your new repository.
<img width="874" alt="image" src="https://github.com/fivetran/example_dbt_project/assets/97244562/95ae645f-5897-4d10-acb6-2482acc6d288">

Feel free to modify, remove or keep any packages included in that file by default.

## Match the package source to your Fivetran source

If needed, change the source location of the package to match your Fivetran connector. You can make this change in the `dbt_project.yml` file in your repository. The schema and database names should align with the name of your Fivetran connector and the name of the connected database in your Fivetran destination.

<img width="874" alt="image" src="https://github.com/fivetran/example_dbt_project/assets/97244562/89c6fcbd-b06a-48a1-b416-1e6f3bafa224">

# Step 4: Add custom SQL (optional) 
## Note your Fivetran connector names and schemas

![image](https://github.com/fivetran/example_dbt_project/assets/97244562/92229f6a-ba3d-4029-adbe-7fbf9802c55c)

In this case, I will want to take note of `postgres_rds_animal_crossing` because this is the schema where my Fivetran loaded data resides. If you only have one schema, you may skip this step.

![image](https://github.com/fivetran/example_dbt_project/assets/97244562/e552f4df-cb37-4058-8a55-9703a0b0d4a3)


## Define your Fivetran sources 

Navigate to your `sources.yml` file in the `models` folder. Paste your connector_schema_name to the `schema` section in one of the source blocks. Then add your table names in the tables section. If you need help, read [this post](https://community.fivetran.com/t5/user-group-for-dbt/sources-how-to-properly-utilize-integrated-scheduling/m-p/648#M56) in the Fivetran Community.

## Match the SQL source to your Fivetran source
Open your `0_staging` folder in the models directory and navigate to `staging_example_one.sql` and `staging_example_two.sql`.

Notice how these queries use a `source` function. Modify these source jinja blocks to match the source tables you added in the step prior.

# Step 5: Connect your new repository to Fivetran

Navigate to Fivetran's Transformations tab in the dashboard. Get started from scratch or go to `Settings` to begin the setup of dbt Core with GitHub. Copy Fivetran's SSH key to your newly created repository's 'deploy keys' and make sure you enter the SSH address of your repository in the setup form. A more complete guide can be found [here](https://fivetran.com/docs/transformations/dbt/setup-guide#grantfivetranaccesstogitrepository).
