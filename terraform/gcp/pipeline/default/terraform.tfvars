# Will be prefixed to all resource names
# Use this to easily identify the resources created and provide entropy for subsequent environments
prefix = "sp"

# The project to deploy the infrastructure into
project_id = "sapient-depot-412014"

# Where to deploy the infrastructure
region = "us-east1"

# Update to the network you would like to deploy into
#
# Note: If you opt to use your own network then you will need to define a subnetwork to deploy into as well
network    = "default"
subnetwork = ""

# Update this to your IP Address
ssh_ip_allowlist = ["96.241.8.92"]
# Generate a new SSH key locally with `ssh-keygen`
# ssh-keygen -t rsa -b 4096 
ssh_key_pairs = [
  {
    user_name  = "snow-palnar"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDnTELHBM6v0Mx49/0nYAuJRoQMdKKzRwODitZjRZEZJUHU2XxqQPj4owZsRVCaekQrw+O4ptXna2lkMgSENFAzTRTfLBt3uOIn6+j5lm629uw1nktWhBzq+0tWJeH3MZ9ItN6clLhfrlsZsYioz2RTYdW1mtShph/koui0ISfen+A6XOkxs7BYtX/iptD5t+5tBkl8S0I9Z5EG/D0hvbB9IZywvouzhwdLph5i5kSgK16NqOwuyQ6KZlfzKXEiFzsVtSxQwtvv/mih7dLEjgzFUCxCTrgkSCn82adqw7V8RxYmFaTxlwYZ+2vLrjZGEZBMK30ewxMkHFNTMnYqOL0iTxKo2s22hJdObvb2NusRne47V+2JaGPcQ1hRKsoOBJIwGWs1t9GJZutqpl7yqh2+hUnqJjl0iJmhDE4MXZ6vV1d0+djXc/O4zzIPVtttAqTMZIuaP/QIYcGbJv5Gjpj42KMREBsBPC5YwTiq60+RAEI340vEVl3SzXg/33hWk4+rxh9BggIfMRgk1vQXvW4x8DSOLgouybRcyxahycXWRaesb6RMZ+Ovw9w9v4Q/EKXM5zzb55RExiuQV/gYZK60C5dZ/y3yokt1mJE2DpBQK8w+pJpTayHXOpSUuN4GlMbPuV5mtUpIWuFfnbL0U+G5sA8q7UAoA85Vwz5EKsou2w== chandu again@Chandan"
  }
]

# Iglu Server DNS output from the Iglu Server stack
iglu_server_dns_name = "http://34.110.159.0"
# Used for API actions on the Iglu Server
# Change this to the same UUID from when you created the Iglu Server
iglu_super_api_key = "703c5a60-5227-4bc9-83f4-27616c08acf4"

# Collector SSL Configuration (optional)
ssl_information = {
  certificate_id = ""
  enabled        = false
}

# --- TARGETS CONFIGURATION ZONE --- #

# --- Target: PostgreSQL
postgres_db_enabled = false

postgres_db_name     = "snowplow"
postgres_db_username = "snowplow"
# Change and keep this secret!
postgres_db_password = "l0E#9Po8u9;j!"
# IP ranges that you want to query the Pipeline Postgres Cloud SQL instance from directly over the internet.  An alternative access method is to leverage
# the Cloud SQL Proxy service which creates an IAM authenticated tunnel to the instance
#
# Details: https://cloud.google.com/sql/docs/postgres/sql-proxy
#
# Note: this exposes your data to the internet - take care to ensure your allowlist is strict enough
postgres_db_authorized_networks = [
  {
    name  = "foo"
    value = "96.241.8.92"
  },
  {
    name  = "bar"
    value = "34.148.251.96"
  }
]
# Note: the size of the database instance determines the number of concurrent connections - each Postgres Loader instance creates 10 open connections so having
# a sufficiently powerful database tier is important to not running out of connection slots
postgres_db_tier = "db-g1-small"

# --- Target: BigQuery
bigquery_db_enabled = false

# To use an existing bucket set this to false
bigquery_loader_dead_letter_bucket_deploy = true
# Must be globally unique so will need to be updated before applying
bigquery_loader_dead_letter_bucket_name = "sp-bq-loader-dead-letter"

# --- ADVANCED CONFIGURATION ZONE --- #

# See for more information: https://registry.terraform.io/modules/snowplow-devops/collector-pubsub-ce/google/latest#telemetry
# Telemetry principles: https://docs.snowplowanalytics.com/docs/open-source-quick-start/what-is-the-quick-start-for-open-source/telemetry-principles/
user_provided_id  = ""
telemetry_enabled = true

# --- Extra Labels to append to created resources (optional)
labels = {}
