class Category < ApplicationRecord
  belongs_to :category, optional: true

  has_many :categories
  has_many :documents

  def breadcrumb
    bread = ""
    cat = self
    while cat
      bread = cat.name + " > " + bread
      cat = cat.category
    end

    bread
  end
end
