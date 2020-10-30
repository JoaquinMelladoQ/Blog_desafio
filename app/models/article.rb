class Article < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true
end

def censore
    self.content = self.content.split([]) {|contenido, value| contenido.push(value) if value != "latam"; contenido}.join(" ")
end