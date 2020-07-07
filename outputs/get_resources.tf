data "kubernetes_all_namespaces" "getns" {}

output "all-ns" {
    value = data.kubernetes_all_namespaces.getns.namespaces
  }

output "namespace_check" {
   value = contains( data.kubernetes_all_namespaces.getns.namespaces, "minik8s")
}

data "kubernetes_config_map" "app1_configmap"{
      metadata {
        name = "app1-configmap"
  }
}

output "keys_config_maps" {
  value = data.kubernetes_config_map.app1_configmap.data
}
