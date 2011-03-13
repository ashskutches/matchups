class UsersController < ApplicationController
  expose(:users) { User.all }
end
