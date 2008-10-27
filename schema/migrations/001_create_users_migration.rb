migration 1, :create_users  do
  
  up do
    create_table :users do
      column :id,               Serial
      column :login,            String
      column :email,            String
      column :crypted_password, String
      column :salt,             String
      column :login_at,         DateTime
      column :last_login_at,    DateTime
      column :created_at,       DateTime
      column :updated_at,       DateTime
    end
  end
  
  down do
    drop_table :users
  end
  
end
