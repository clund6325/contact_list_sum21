class ChangeNameToFirstName < ActiveRecord::Migration[6.1]
  def change
                  # table, column, new column name
    rename_column :contacts, :name, :first_name
  end
end
