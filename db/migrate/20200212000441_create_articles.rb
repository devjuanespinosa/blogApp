class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles, forces: :cascades do |t|
      t.string :title
      t.text :description

    end
  end
end
