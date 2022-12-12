class ManageIQ::Providers::Minio::Inventory::Persister < ManageIQ::Providers::Inventory::Persister
  require_nested :StorageManager
end
