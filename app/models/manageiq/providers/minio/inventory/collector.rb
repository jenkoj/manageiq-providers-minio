class ManageIQ::Providers::Minio::Inventory::Collector < ManageIQ::Providers::Inventory::Collector
  require_nested :StorageManager
end
