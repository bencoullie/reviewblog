class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Validations
  validates_length_of :username, :minimum => 3, :maximum => 20, :allow_blank => false
  validates_length_of :bio, :maximum => 140
  validates :age, :inclusion => { :in => 0..120, :message => "Let's be serious..." }

  has_many :posts, dependent: :destroy
end
