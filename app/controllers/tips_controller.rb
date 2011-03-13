class TipsController < ApplicationController
  expose(:tips) { Tip.all }
end
