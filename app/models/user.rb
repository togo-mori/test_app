# frozen_string_literal: true

class User < ActiveRecord::Base
  devise :registerable,
         :recoverable, :rememberable, :validatable, :two_factor_authenticatable, :trackable,
         :otp_secret_encryption_key => ENV['ENVIRONMENT_VARIABLE']
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthablee
  include DeviseTokenAuth::Concerns::User
end
