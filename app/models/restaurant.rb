class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    def all_reviews
        Restaurant.all = [
            "Review for #{name} by #{customer.first_name} #{customer.last_name}: #{review.star_rating} stars.",
            "Review for #{name} by #{customer.first_name} #{customer.last_name}: #{review.star_rating} stars.",
          ]
    end

    def Restaurant.fanciest
        Restaurant.all.review.max_by { |t| t.star_rating }
    end

end