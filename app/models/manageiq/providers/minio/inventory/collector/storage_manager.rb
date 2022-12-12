class ManageIQ::Providers::Minio::Inventory::Collector::StorageManager < ManageIQ::Providers::Minio::Inventory::Collector
    attr_accessor :manager

    def connection
        @connection ||= manager.connect
        puts "connected to "+manager
    end

    def cloud_object_store_container
        @cloud_object_store_container ||= manager.connect.list_buckets.flat_map(&:buckets)
    end 

end
