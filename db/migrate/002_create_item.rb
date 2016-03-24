Sequel.migration do

  up do
    self[:items].insert([:name], ['second_item'])
  end

  down do
  end

end
