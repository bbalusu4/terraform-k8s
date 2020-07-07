
resource "kubernetes_namespace" "mk-ns" {
    metadata {
      name = "minik8s"
    }
}
