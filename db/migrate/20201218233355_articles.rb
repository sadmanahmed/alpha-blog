class Articles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles d0 |t|
    t.string :title
    t.text :description
    t.datetime :created_at
    t.datetime :updated_at

  end
end
