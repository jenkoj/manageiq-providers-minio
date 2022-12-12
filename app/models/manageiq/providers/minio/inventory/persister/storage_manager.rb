class ManageIQ::Providers::Minio::Inventory::Persister::StorageManager < ManageIQ::Providers::Minio::Inventory::Persister
  attr_reader :collections

  def initialize_inventory_collections
      add_collection(storage, :cloud_object_store_containers)
  end
end