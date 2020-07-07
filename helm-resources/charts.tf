resource "helm_release" "local" {
    name = "buildachart"
    chart = "./buildachart"
}
