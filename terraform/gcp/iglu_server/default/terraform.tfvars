# Will be prefixed to all resource names
# Use this to easily identify the resources created and provide entropy for subsequent environments
prefix = "sp"

# The project to deploy the infrastructure into
project_id = "sapient-depot-412014"

# Where to deploy the infrastructure
region = "us-east1"

# --- Default Network
# Update to the network you would like to deploy into
#
# Note: If you opt to use your own network then you will need to define a subnetwork to deploy into as well
network    = "default"
subnetwork = ""

# --- SSH
# Update this to your IP Address
#ssh_ip_allowlist = ["34.148.251.96"]
ssh_ip_allowlist = ["96.241.8.92"]
# Generate a new SSH key locally with `ssh-keygen`
# ssh-keygen -t rsa -b 4096 
#ssh_key_pairs = [
#  {
#    user_name  = "snowplow" or snowish-palnar
#    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC4LxtJfO052WXP78XGw6qN1gHPnumFdYjleVhKM3VDcdmHvWS9BVLmEcK10kiHP2h18d+TNl6hK8SJQtoUMshp3VTvT1YYZLANEZGPCarsdr/R1dAOnlrOlpyajVTjDcCyI5Vzum/DLj2vQMRp1y1FjP0Q7X+/ZxldJx6I1Ip5qMeMILXHkxooJ+k2sXsC13tE0VVWEP0ry4hFybTfm5G7kfJL1VDvj+LbvtMPc6uF/G3kichZPKOMLlB9J5u8O1MQZQudIysN2vB/zhfej5FjzF7v1oni7WtU1iMaL6yoMl0m7N+YVVJq489+YBPzuta9AbJEzQSbdYaulIR3DZNAYe5+9ioLX0p0jLEdIV6ZgJgEoD1sDO6EH9UvGHy4xxTppIZuS7FriAhA6e6xQEEz54cYlUk3TdmX0pjJIFqtohZo+51wlIPTcToWnqYn3HOa05we0zW0l4q29JU62HPecbxlvf5RhzMeyMooywlSP0igs2a09udKFvtVdTazwhkCx/fxPtu07/tzEp4JchJBJM7FLDNZnY6ns/x7RF4FyiBJiGg1IQMofP+b5Cg3iun8+FQ+Mh7jg6Dp3Q/L/FNhNC0qq/5zJYhDilhqg7iQGlOML2mvE36ZuurnOUmOC3EeIyaLWpADcncEVQ5qDN2tvQ9eGDIII5cb8U+YEt/BNw== palnar@LAPTOP-8MGT5O0H"
#  }
#]

ssh_key_pairs = [
  {
    user_name  = "snow-palnar"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDnTELHBM6v0Mx49/0nYAuJRoQMdKKzRwODitZjRZEZJUHU2XxqQPj4owZsRVCaekQrw+O4ptXna2lkMgSENFAzTRTfLBt3uOIn6+j5lm629uw1nktWhBzq+0tWJeH3MZ9ItN6clLhfrlsZsYioz2RTYdW1mtShph/koui0ISfen+A6XOkxs7BYtX/iptD5t+5tBkl8S0I9Z5EG/D0hvbB9IZywvouzhwdLph5i5kSgK16NqOwuyQ6KZlfzKXEiFzsVtSxQwtvv/mih7dLEjgzFUCxCTrgkSCn82adqw7V8RxYmFaTxlwYZ+2vLrjZGEZBMK30ewxMkHFNTMnYqOL0iTxKo2s22hJdObvb2NusRne47V+2JaGPcQ1hRKsoOBJIwGWs1t9GJZutqpl7yqh2+hUnqJjl0iJmhDE4MXZ6vV1d0+djXc/O4zzIPVtttAqTMZIuaP/QIYcGbJv5Gjpj42KMREBsBPC5YwTiq60+RAEI340vEVl3SzXg/33hWk4+rxh9BggIfMRgk1vQXvW4x8DSOLgouybRcyxahycXWRaesb6RMZ+Ovw9w9v4Q/EKXM5zzb55RExiuQV/gYZK60C5dZ/y3yokt1mJE2DpBQK8w+pJpTayHXOpSUuN4GlMbPuV5mtUpIWuFfnbL0U+G5sA8q7UAoA85Vwz5EKsou2w== chandu again@Chandan"
  }
]

# --- Snowplow Iglu Server
iglu_db_name     = "iglu"
iglu_db_username = "iglu"
# Change and keep this secret!
iglu_db_password = "l0E#9Po8u9;j"

# Used for API actions on the Iglu Server
# Change this to a new UUID and keep it secret!
iglu_super_api_key = "703c5a60-5227-4bc9-83f4-27616c08acf4"

# NOTE: To push schemas to your Iglu Server, you can use igluctl
# igluctl: https://docs.snowplowanalytics.com/docs/pipeline-components-and-applications/iglu/igluctl
# igluctl static push --public schemas/ http://CHANGE-TO-MY-IGLU-IP 00000000-0000-0000-0000-000000000000

# See for more information: https://github.com/snowplow-devops/terraform-google-iglu-server-ce#telemetry
# Telemetry principles: https://docs.snowplowanalytics.com/docs/open-source-quick-start/what-is-the-quick-start-for-open-source/telemetry-principles/
user_provided_id  = ""
telemetry_enabled = true

# --- SSL Configuration (optional)
ssl_information = {
  certificate_id = ""
  enabled        = false
}

# --- Extra Labels to append to created resources (optional)
labels = {}
