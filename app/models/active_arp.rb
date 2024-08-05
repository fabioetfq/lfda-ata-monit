class ActiveArp < ApplicationRecord
  belongs_to :arp
  belongs_to :item
  belongs_to :institution
end
