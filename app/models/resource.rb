class Resource < ApplicationRecord
  belongs_to :sprint, optional: true
end
