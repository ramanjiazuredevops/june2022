resource "azurerm_kubernetes_cluster" "example-aks1" {
  name                = var.name
  name                = "example-aks1"
  location            = "East US"
  resource_group_name = "demo"
  dns_prefix          = "k8stest"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = 30
  }

  role_based_access_control {
    enabled = true
  }

  addon_profile {
    kube_dashboard {
      enabled = true
    }
  }

  tags = {
    environment = "Demo"
  }
}