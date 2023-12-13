class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :about
      t.string :github_link
      t.string :image_url

      t.timestamps
    end
  end
end
