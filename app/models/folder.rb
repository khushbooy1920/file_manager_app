class Folder < ApplicationRecord
    has_many :file_items, dependent: :destroy
end
