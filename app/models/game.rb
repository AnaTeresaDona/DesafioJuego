class Game < ApplicationRecord
    has_one_attached :rule
    has_one_attached :cover
    has_many_attached :pieces

    #validates :rule, presence: true, blob: {content_type: ['application/pdf']}
    validates :rule, attached: true, content_type: { in: 'application/pdf', message: 'is not a PDF' }

end
