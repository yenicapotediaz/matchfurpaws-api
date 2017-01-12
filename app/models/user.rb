class User < ActiveRecord::Base
  belongs_to :userable, polymorphic: true
  validates_presence_of :email
  validates_uniqueness_of :email, case_sensitive: false
  validates_format_of :email, with: /@/
  before_save :downcase_email
  has_secure_password



  def downcase_email
    self.email = self.email.delete(' ').downcase
  end
end
