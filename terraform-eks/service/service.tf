resource "kubernetes_service" "wordpress-service" {
    metadata {
        name = "wordpress-service-dp005"
    }
    spec {
        selector = {
            app = "wordpress"
        }

        type = "LoadBalancer"

        port {
            port = 80
            target_port = 80
        }
    }
}