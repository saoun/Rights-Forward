class CreateJoinTablesChecksUsers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :skills, :users do |t|
      # t.index [:skill_id, :user_id]
      # t.index [:user_id, :skill_id]
    end

    create_join_table :languages, :users do |t|
      #t.index [:languages_id, :user_id]
      #t.index [:user_id, :languages_id]
    end

    create_join_table :expertises, :users do |t|
      #t.index [:expertise_id, :user_id]
      #t.index [:user_id, :expertise_id]
    end

    create_join_table :types, :users do |t|
      #t.index [:type_id, :user_id]
      #t.index [:user_id, :type_id]
    end
  end
end
