class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :slug
      t.string :content
      t.string :keywords
      t.string :description
      t.string :published

      t.timestamps
    end
  end
end
