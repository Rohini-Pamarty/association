class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
	t.references :article
	t.string :commenter
	t.string :review
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
