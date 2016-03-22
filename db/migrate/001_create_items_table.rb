Sequel.migration do

  up do
    create_table(:items) do
      primary_key :id
      String :name, :null=>false
    end

    self[:items].insert([:name], ['first_item'])
  end

  down do
    drop_table(:items)
  end

end
