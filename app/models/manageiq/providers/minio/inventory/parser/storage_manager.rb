class ManageIQ::Providers::Minio::Inventory::Parser::StorageManager < ManageIQ::Providers::Minio::Inventory::Parser
  attr_accessor :collector
  
  def parse
    cloud_object_store_container
  end 
  
  # Use collector class to fetch data from API and then store in into db using persister class. 
  def cloud_object_store_container
    collector.cloud_object_store_container.each do |container|
      persister.cloud_object_store_containers.build(
          :name => container["name"],
          :ems_ref =>  container['creation_date'].to_s.gsub(" ","_") 
      )
    end
  end
end