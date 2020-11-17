# instance group manager (autoscaling)
resource "google_compute_instance_group_manager" "wordpress" {
  name               = "wordpress"
  description        = "igm wordpress"
  zone               = "us-central1-a"
  base_instance_name = "wordpress"
  target_size        = 1

  version {
    instance_template = google_compute_instance_template.wordpress.self_link
  }
}
