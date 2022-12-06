class ManageIQ::Providers::Minio::StorageManager::MetricsCollectorWorker < ManageIQ::Providers::BaseManager::MetricsCollectorWorker
  require_nested :Runner

  self.default_queue_name = "minio"

  def friendly_name
    @friendly_name ||= "C&U Metrics Collector for ManageIQ::Providers::Minio"
  end
end
