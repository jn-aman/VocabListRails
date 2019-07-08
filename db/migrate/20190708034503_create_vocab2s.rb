class CreateVocab2s < ActiveRecord::Migration[5.0]
  def change
    create_table :vocab2s do |t|

      t.timestamps
    end
  end
end
