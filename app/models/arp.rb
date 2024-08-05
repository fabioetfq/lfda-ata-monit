class Arp < ApplicationRecord
  belongs_to :supplier
  belongs_to :pregao
  belongs_to :manager, class_name: 'User'
  belongs_to :manager_sub, class_name: 'User'
  belongs_to :supervisor, class_name: 'User'
  belongs_to :supervisor_sub, class_name: 'User'
  has_many :active_arp

  validates_numericality_of :num_arp, only_integer: true
end
