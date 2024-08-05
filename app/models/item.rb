class Item < ApplicationRecord
  has_many :carts
  has_many :active_arp
end
