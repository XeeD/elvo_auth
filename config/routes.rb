ElvoAuth::Application.routes.draw do
  mount SSOProvider::Engine => "/"
end
