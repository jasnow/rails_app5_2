# typed: strict
class CreateSpellBooks < ActiveRecord::Migration[5.2]
  extend T::Sig
  sig { returns(T.untyped) }
  def change
    create_table :spell_books do |t|
      t.string :name
      t.references :wizard
    end
  end
end
