class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :resumes
  has_many :contacts
  has_many :interests
  has_many :languages
  has_many :works
  has_many :skills
  has_many :schools


end
