class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :feed_type
      t.string :subject
      t.text :description

      t.timestamps null: false
    end
  end
end
