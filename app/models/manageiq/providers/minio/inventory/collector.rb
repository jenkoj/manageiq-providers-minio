class ManageIQ::Providers::Minio::Inventory::Collector < ManageIQ::Providers::Inventory::Collector
  require_nested :StorageManager

  def connection
    @connection ||= manager.connect
  end

  def vms
    connection.vms
  end
end
