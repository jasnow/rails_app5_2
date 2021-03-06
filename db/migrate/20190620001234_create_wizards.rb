# typed: strict
class CreateWizards < ActiveRecord::Migration[5.2]
  extend T::Sig
  sig { returns(T.untyped) }
  def change
    create_table :wizards do |t|
      t.string :name
      t.integer :house
      t.string :parent_email
      t.text :notes

      t.timestamps
    end
  end
end
