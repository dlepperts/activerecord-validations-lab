class TitleValidator < ActiveModel::Validator

    def validate(record)
        unless record.title.include?(/flatironschool.com/)
          record.errors[:title] << "Not enough clickbait!"
        end
    end

end