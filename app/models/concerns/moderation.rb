module Moderation
  extend ActiveSupport::Concern
  included do

    belongs_to :created_by, class_name: 'User'
    belongs_to :reviewed_by, class_name: 'User'

    def reviewed?
      reviewed_at.present?
    end

  end
end
