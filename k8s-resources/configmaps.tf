resource "kubernetes_config_map" "app1_configmap" {
  metadata {
    name = "app1-configmap"
  }

  data = {
    key1 = "value1"
    key2 = "value2"
  }
}
