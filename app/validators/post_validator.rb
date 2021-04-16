class PostValidator < ActiveModel::Validator
    #custom validation method checks a post to ensure the title is sufficiently clickbait-y. If the title does not contain "Won't Believe", "Secret", "Top [number]", or "Guess"
    def validate(post)
        if post.title
            unless post.title.include?("Won't Believe") || post.title.include?("Secret") || post.title.include?("Top") || post.title.include?("Guess")
            post.errors[:title] << "isn't clickbait!"
            end
        end
    end
end