class Task < ApplicationRecord
    belongs_to :project

    validates :t_name, :t_discription, presence: true
end
