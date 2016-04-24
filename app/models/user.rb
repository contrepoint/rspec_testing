class User < ActiveRecord::Base
  validates_presence_of :email
  before_create :generate_uuid, :generate_subscriber
  belongs_to :subscriber

  protected
  def generate_uuid
    self.uuid = SecureRandom.base64(178)
  end

  def generate_subscriber
    self.build_subscriber
  end
end