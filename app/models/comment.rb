class Comment < ApplicationRecord
  belongs_to :user # userテーブルとのアソシエーション
  belongs_to :prototype # prototypeテーブルとのアソシエーション

  validates :text, presence: true
end