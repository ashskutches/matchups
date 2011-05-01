class UsersController < ApplicationController
  expose(:users) { User.all }
  expose(:randomTips) { Tip.find(:all, :order => "RANDOM()", :limit => 2) } 
end
