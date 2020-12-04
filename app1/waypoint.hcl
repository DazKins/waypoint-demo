project = "waypoint-demo"

app "app1" {
    build {
        use "docker" {}
        registry {
            use "docker" {
                image = "dazkins/app1"
                tag   = "latest"
            }
        }

    }

    deploy {
        use "kubernetes" {
            annotations = {
                "version": "v1"
            }

            probe_path   = "/"
            service_port = 80
        }
    }

    release {
        use "kubernetes" {}
    }
}
