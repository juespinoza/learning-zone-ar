json.(user, :id, :email, :username, :name, :surname, :birthday, :user_type)
json.token user.generate_jwt