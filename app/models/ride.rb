class Ride < ApplicationRecord
    enum status: [:pending, :allocated, :in_progress, :complete, :cancelled]
end