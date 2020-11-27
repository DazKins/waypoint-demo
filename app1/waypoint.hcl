project = "test-project"

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
            probe_path   = "/"
            service_port = 80
        }
    }


    release {
        use "kubernetes" {
        }
    }
}
