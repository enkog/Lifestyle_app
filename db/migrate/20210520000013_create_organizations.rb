class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.integer :category_id
      t.integer :article_id

      t.timestamps
    end
  end
end
