class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles, forces: :cascades do |t|
      t.string :title
      t.text :description

      t.timestamp
    end
  end
end
