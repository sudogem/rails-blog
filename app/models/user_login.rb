class UserLogin < ActiveRecord::Base

 #attr_accessor :password, :email, :password_confirmation

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # attr_accessible doesnt apply anymore in Rails4.x
  # attr_accessible :email, :password, :password_confirmation 

  validates :email, presence: true, 
                    length: { minimum: 2 },
                    format: { :with => VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :password,  presence: true, 
                        confirmation: true,
                        length: { minimum: 2 }

  # validates :password_confirmation,  presence: true

  before_save :encrypt_password
  before_save {
    self.email = email.downcase 
  }

  def self.authenticate email, password
    u = find_by_email email
    u && u.authenticated?(password) ? u : nil
  end



  private

    def encrypt password
      Rails.logger.debug "=== encrypt ==="
      Rails.logger.debug password
      Rails.logger.debug salt
      Digest::SHA1.hexdigest("--#{salt}--#{password}--")
    end

    def encrypt_password
      return if password.blank?
      if new_record?
        self.salt = Digest::SHA1.hexdigest("--#{Time.now}--#{email}--")
      end
      Rails.logger.debug "=== encrypt_password ==="
      # self.password = UserLogin.encrypt password, salt
      self.password = encrypt password
      Rails.logger.debug "self.password: "
      Rails.logger.debug self.password
    end

    def authenticated?(submitted_password)
      u = encrypt(submitted_password)
      Rails.logger.debug "authenticated?="
      Rails.logger.debug u
      password == u
    end
end
