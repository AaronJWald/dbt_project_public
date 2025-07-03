SELECT
*
FROM {{ ref('fct_reviews')}} as reviews
LEFT JOIN {{ref('dim_listings_cleansed')}} as listings
on reviews.listing_id = listings.listing_id
WHERE reviews.review_date < listings.created_at