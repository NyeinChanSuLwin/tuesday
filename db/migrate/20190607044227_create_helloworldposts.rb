class CreateHelloworldposts < ActiveRecord::Migration[5.2]
  def change
    create_table :helloworldposts do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
