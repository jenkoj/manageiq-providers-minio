class ManageIQ::Providers::Minio::Inventory::Persister < ManageIQ::Providers::Inventory::Persister
  require_nested :StorageManager

  def initialize_inventory_collections
    add_cloud_collection(:vms)
  end
end
