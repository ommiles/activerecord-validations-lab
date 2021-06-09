class PostValidator < ActiveModel::Validator
    
      def validate(record)
        unless record.title.present? && record.title.match?(/Won't Believe/i || /Secret/i || /Top [0-9]*/i || /Guess/i)
          record.errors.add(:title, "must be clickbait")
        end
      end
end