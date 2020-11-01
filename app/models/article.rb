class Article < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true
    before_save :censore

    def censore
        self.content = self.content.split.reduce([]) {|contenido, value| contenido.push(value) if value != "latam"; contenido}.join(" ")
    end

end
