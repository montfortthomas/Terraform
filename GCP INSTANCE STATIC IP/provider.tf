provider "google" {
  credentials = "${file("~/ghjink.json")}"
  project     = "jino-XXXXXX"
  region      = "us-east4"
}