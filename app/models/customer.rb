class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    def add_review(restaurant, content)
      new_review = Review.create(content: content, restaurant_id: restaurant.id)
    end

    def favorite_restaurant
        self.reviews.max_by { |r| r.star_rating }
    end
    def full_name
        "#{first_name} #{last_name}"
    end

    def delete_reviews(restaurant)
        bye_reviews = Review.destroy_by(restaurant_id: restaurant.id)
    end
end