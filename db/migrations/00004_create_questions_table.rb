# frozen_string_literal: true

Sequel.migration do
  up do
    create_table(:questions) do
      primary_key   :id
      String        :name
      String        :description
      Integer       :number
      String        :type
      DateTime      :created_at,   default: Sequel::CURRENT_TIMESTAMP
      DateTime      :updated_at,   default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:questions)
  end
end
