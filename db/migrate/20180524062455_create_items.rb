class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string     :name
      t.belongs_to :owner
      #t.integer   :owner_id
      #t.reference :owner_id

      t.timestamps
    end
  end
end
