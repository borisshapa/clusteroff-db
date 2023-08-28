cat >/import.cql <<EOF
DROP keyspace off;
CREATE KEYSPACE off
WITH REPLICATION = {'class' : 'SimpleStrategy', 'replication_factor' : 1};

USE off;

CREATE TABLE food (
    "code" varchar primary key,
    "url" varchar,
    "creator" varchar,
    "created_t" varchar,
    "created_datetime" varchar,
    "last_modified_t" varchar,
    "last_modified_datetime" varchar,
    "last_modified_by" varchar,
    "product_name" varchar,
    "abbreviated_product_name" varchar,
    "generic_name" varchar,
    "quantity" varchar,
    "packaging" varchar,
    "packaging_tags" varchar,
    "packaging_en" varchar,
    "packaging_text" varchar,
    "brands" varchar,
    "brands_tags" varchar,
    "categories" varchar,
    "categories_tags" varchar,
    "categories_en" varchar,
    "origins" varchar,
    "origins_tags" varchar,
    "origins_en" varchar,
    "manufacturing_places" varchar,
    "manufacturing_places_tags" varchar,
    "labels" varchar,
    "labels_tags" varchar,
    "labels_en" varchar,
    "emb_codes" varchar,
    "emb_codes_tags" varchar,
    "first_packaging_code_geo" varchar,
    "cities" varchar,
    "cities_tags" varchar,
    "purchase_places" varchar,
    "stores" varchar,
    "countries" varchar,
    "countries_tags" varchar,
    "countries_en" varchar,
    "ingredients_text" varchar,
    "ingredients_tags" varchar,
    "ingredients_analysis_tags" varchar,
    "allergens" varchar,
    "allergens_en" varchar,
    "traces" varchar,
    "traces_tags" varchar,
    "traces_en" varchar,
    "serving_size" varchar,
    "serving_quantity" varchar,
    "no_nutrition_data" varchar,
    "additives_n" varchar,
    "additives" varchar,
    "additives_tags" varchar,
    "additives_en" varchar,
    "nutriscore_score" varchar,
    "nutriscore_grade" varchar,
    "nova_group" varchar,
    "pnns_groups_1" varchar,
    "pnns_groups_2" varchar,
    "food_groups" varchar,
    "food_groups_tags" varchar,
    "food_groups_en" varchar,
    "states" varchar,
    "states_tags" varchar,
    "states_en" varchar,
    "brand_owner" varchar,
    "ecoscore_score" varchar,
    "ecoscore_grade" varchar,
    "nutrient_levels_tags" varchar,
    "product_quantity" varchar,
    "owner" varchar,
    "data_quality_errors_tags" varchar,
    "unique_scans_n" varchar,
    "popularity_tags" varchar,
    "completeness" varchar,
    "last_image_t" varchar,
    "last_image_datetime" varchar,
    "main_category" varchar,
    "main_category_en" varchar,
    "image_url" varchar,
    "image_small_url" varchar,
    "image_ingredients_url" varchar,
    "image_ingredients_small_url" varchar,
    "image_nutrition_url" varchar,
    "image_nutrition_small_url" varchar,
    "energy-kj_100g" varchar,
    "energy-kcal_100g" float,
    "energy_100g" float,
    "energy-from-fat_100g" varchar,
    "fat_100g" float,
    "saturated-fat_100g" float,
    "butyric-acid_100g" float,
    "caproic-acid_100g" float,
    "caprylic-acid_100g" float,
    "capric-acid_100g" float,
    "lauric-acid_100g" float,
    "myristic-acid_100g" float,
    "palmitic-acid_100g" float,
    "stearic-acid_100g" float,
    "arachidic-acid_100g" float,
    "behenic-acid_100g" float,
    "lignoceric-acid_100g" float,
    "cerotic-acid_100g" float,
    "montanic-acid_100g" float,
    "melissic-acid_100g" float,
    "unsaturated-fat_100g" float,
    "monounsaturated-fat_100g" float,
    "polyunsaturated-fat_100g" float,
    "omega-3-fat_100g" float,
    "alpha-linolenic-acid_100g" float,
    "eicosapentaenoic-acid_100g" float,
    "docosahexaenoic-acid_100g" float,
    "omega-6-fat_100g" float,
    "linoleic-acid_100g" float,
    "arachidonic-acid_100g" float,
    "gamma-linolenic-acid_100g" float,
    "dihomo-gamma-linolenic-acid_100g" float,
    "omega-9-fat_100g" float,
    "oleic-acid_100g" float,
    "elaidic-acid_100g" float,
    "gondoic-acid_100g" float,
    "mead-acid_100g" float,
    "erucic-acid_100g" float,
    "nervonic-acid_100g" float,
    "trans-fat_100g" float,
    "cholesterol_100g" float,
    "carbohydrates_100g" float,
    "sugars_100g" float,
    "added-sugars_100g" float,
    "sucrose_100g" float,
    "glucose_100g" float,
    "fructose_100g" float,
    "lactose_100g" float,
    "maltose_100g" float,
    "maltodextrins_100g" float,
    "starch_100g" float,
    "polyols_100g" float,
    "erythritol_100g" float,
    "fiber_100g" float,
    "soluble-fiber_100g" float,
    "insoluble-fiber_100g" float,
    "proteins_100g" float,
    "casein_100g" float,
    "serum-proteins_100g" float,
    "nucleotides_100g" float,
    "salt_100g" float,
    "added-salt_100g" float,
    "sodium_100g" float,
    "alcohol_100g" float,
    "vitamin-a_100g" float,
    "beta-carotene_100g" float,
    "vitamin-d_100g" float,
    "vitamin-e_100g" float,
    "vitamin-k_100g" float,
    "vitamin-c_100g" float,
    "vitamin-b1_100g" float,
    "vitamin-b2_100g" float,
    "vitamin-pp_100g" float,
    "vitamin-b6_100g" float,
    "vitamin-b9_100g" float,
    "folates_100g" float,
    "vitamin-b12_100g" float,
    "biotin_100g" float,
    "pantothenic-acid_100g" float,
    "silica_100g" float,
    "bicarbonate_100g" float,
    "potassium_100g" float,
    "chloride_100g" float,
    "calcium_100g" float,
    "phosphorus_100g" float,
    "iron_100g" float,
    "magnesium_100g" float,
    "zinc_100g" float,
    "copper_100g" float,
    "manganese_100g" float,
    "fluoride_100g" float,
    "selenium_100g" float,
    "chromium_100g" float,
    "molybdenum_100g" float,
    "iodine_100g" float,
    "caffeine_100g" float,
    "taurine_100g" float,
    "ph_100g" float,
    "fruits-vegetables-nuts_100g" float,
    "fruits-vegetables-nuts-dried_100g" float,
    "fruits-vegetables-nuts-estimate_100g" float,
    "fruits-vegetables-nuts-estimate-from-ingredients_100g" float,
    "collagen-meat-protein-ratio_100g" float,
    "cocoa_100g" float,
    "chlorophyl_100g" float,
    "carbon-footprint_100g" float,
    "carbon-footprint-from-meat-or-fish_100g" float,
    "nutrition-score-fr_100g" float,
    "nutrition-score-uk_100g" float,
    "glycemic-index_100g" float,
    "water-hardness_100g" float,
    "choline_100g" float,
    "phylloquinone_100g" float,
    "beta-glucan_100g" float,
    "inositol_100g" float,
    "carnitine_100g" float,
    "sulphate_100g" float,
    "nitrate_100g" float,
    "prediction" int
);

COPY food ("code", "url", "creator", "created_t", "created_datetime", "last_modified_t", "last_modified_datetime", "last_modified_by", "product_name", "abbreviated_product_name", "generic_name", "quantity", "packaging", "packaging_tags", "packaging_en", "packaging_text", "brands", "brands_tags", "categories", "categories_tags", "categories_en", "origins", "origins_tags", "origins_en", "manufacturing_places", "manufacturing_places_tags", "labels", "labels_tags", "labels_en", "emb_codes", "emb_codes_tags", "first_packaging_code_geo", "cities", "cities_tags", "purchase_places", "stores", "countries", "countries_tags", "countries_en", "ingredients_text", "ingredients_tags", "ingredients_analysis_tags", "allergens", "allergens_en", "traces", "traces_tags", "traces_en", "serving_size", "serving_quantity", "no_nutrition_data", "additives_n", "additives", "additives_tags", "additives_en", "nutriscore_score", "nutriscore_grade", "nova_group", "pnns_groups_1", "pnns_groups_2", "food_groups", "food_groups_tags", "food_groups_en", "states", "states_tags", "states_en", "brand_owner", "ecoscore_score", "ecoscore_grade", "nutrient_levels_tags", "product_quantity", "owner", "data_quality_errors_tags", "unique_scans_n", "popularity_tags", "completeness", "last_image_t", "last_image_datetime", "main_category", "main_category_en", "image_url", "image_small_url", "image_ingredients_url", "image_ingredients_small_url", "image_nutrition_url", "image_nutrition_small_url", "energy-kj_100g", "energy-kcal_100g", "energy_100g", "energy-from-fat_100g", "fat_100g", "saturated-fat_100g", "butyric-acid_100g", "caproic-acid_100g", "caprylic-acid_100g", "capric-acid_100g", "lauric-acid_100g", "myristic-acid_100g", "palmitic-acid_100g", "stearic-acid_100g", "arachidic-acid_100g", "behenic-acid_100g", "lignoceric-acid_100g", "cerotic-acid_100g", "montanic-acid_100g", "melissic-acid_100g", "unsaturated-fat_100g", "monounsaturated-fat_100g", "polyunsaturated-fat_100g", "omega-3-fat_100g", "alpha-linolenic-acid_100g", "eicosapentaenoic-acid_100g", "docosahexaenoic-acid_100g", "omega-6-fat_100g", "linoleic-acid_100g", "arachidonic-acid_100g", "gamma-linolenic-acid_100g", "dihomo-gamma-linolenic-acid_100g", "omega-9-fat_100g", "oleic-acid_100g", "elaidic-acid_100g", "gondoic-acid_100g", "mead-acid_100g", "erucic-acid_100g", "nervonic-acid_100g", "trans-fat_100g", "cholesterol_100g", "carbohydrates_100g", "sugars_100g", "added-sugars_100g", "sucrose_100g", "glucose_100g", "fructose_100g", "lactose_100g", "maltose_100g", "maltodextrins_100g", "starch_100g", "polyols_100g", "erythritol_100g", "fiber_100g", "soluble-fiber_100g", "insoluble-fiber_100g", "proteins_100g", "casein_100g", "serum-proteins_100g", "nucleotides_100g", "salt_100g", "added-salt_100g", "sodium_100g", "alcohol_100g", "vitamin-a_100g", "beta-carotene_100g", "vitamin-d_100g", "vitamin-e_100g", "vitamin-k_100g", "vitamin-c_100g", "vitamin-b1_100g", "vitamin-b2_100g", "vitamin-pp_100g", "vitamin-b6_100g", "vitamin-b9_100g", "folates_100g", "vitamin-b12_100g", "biotin_100g", "pantothenic-acid_100g", "silica_100g", "bicarbonate_100g", "potassium_100g", "chloride_100g", "calcium_100g", "phosphorus_100g", "iron_100g", "magnesium_100g", "zinc_100g", "copper_100g", "manganese_100g", "fluoride_100g", "selenium_100g", "chromium_100g", "molybdenum_100g", "iodine_100g", "caffeine_100g", "taurine_100g", "ph_100g", "fruits-vegetables-nuts_100g", "fruits-vegetables-nuts-dried_100g", "fruits-vegetables-nuts-estimate_100g", "fruits-vegetables-nuts-estimate-from-ingredients_100g", "collagen-meat-protein-ratio_100g", "cocoa_100g", "chlorophyl_100g", "carbon-footprint_100g", "carbon-footprint-from-meat-or-fish_100g", "nutrition-score-fr_100g", "nutrition-score-uk_100g", "glycemic-index_100g", "water-hardness_100g", "choline_100g", "phylloquinone_100g", "beta-glucan_100g", "inositol_100g", "carnitine_100g", "sulphate_100g", "nitrate_100g") FROM '/bitnami/products-1k.csv' WITH DELIMITER = '\t' AND HEADER = TRUE AND CHUNKSIZE = 1;
EOF

# You may add some other conditionals that fits your stuation here
until cqlsh -f /import.cql; do
  echo "cqlsh: Cassandra is unavailable to initialize - will retry later"
  sleep 2
done &

exec /docker-entrypoint.sh "$@"