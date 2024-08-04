class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :manager_arps, class_name: 'Arp', foreign_key: 'manager_id'
  has_many :manager_sub_arps, class_name: 'Arp', foreign_key: 'manager_sub_id'
  has_many :supervisor_arps, class_name: 'Arp', foreign_key: 'supervisor_id'
  has_many :supervisor_sub_arps, class_name: 'Arp', foreign_key: 'supervisor_sub_id'
end
