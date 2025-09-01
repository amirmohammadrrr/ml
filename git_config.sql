use sample_db;
use schema public;

create or replace api integration git_api 
api_provider = git_https_api
api_allowed_prefixes = ('https://github.com')
enabled = true
API_USER_AUTHENTICATION = ( TYPE = snowflake_github_app);

show api integrations;





