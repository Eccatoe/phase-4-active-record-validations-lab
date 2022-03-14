class Post < ApplicationRecord
    # validates :title, presence: :true
    # validates :content, length: {minimum: 250}
    # validates :summary, length: {maximum: 250}
    # validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validate :must_be_click_bait

    def must_be_click_bait
        click_bait=["Won't Believe",
            "Secret",
            "Top #{Integer}",
            "Guess"]
        unless (title.split & click_bait)
            errors.add("Not catchy enough")
        end
    end
end
