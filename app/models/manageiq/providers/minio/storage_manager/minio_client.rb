require 'aws-sdk'

class ManageIQ::Providers::Minio::StorageManager::MinioClient
  include Vmdb::Logging

  NoAuthTokenError = Class.new(StandardError)

  attr_accessor :token, :username, :password, :host, :port

  def initialize(username:, password:, host:, token: nil, scheme: 'https')
    @scheme = scheme
    @username = username
    @password = password
    @host = host
    @token = token
    configure_client
  end

  def login
    Aws::S3::Client.new
  end
  private

  def set_auth_token
    raise NoAuthTokenError, 'No auth token!' unless @token
    config.access_token = @token
  end

  def configure_client
    Aws.config.update(
      endpoint: @host,
      access_key_id: @username,
      secret_access_key: @password,
      force_path_style: true,
      region: 'us-east-1'
    )
  end


end