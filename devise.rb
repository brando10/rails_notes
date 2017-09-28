#SET UP DEVISE

gem 'devise'
bundle install
restart server

rails g devise:install

#OPEN FILE
config/environments/development.rb
#ADD LINE
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

#OPEN LAYOUTS APPLICATION.rb set on top of Yield
"
<% if notice %>
  <p class="alert alert-success"><%= notice %></p>
<% end %>
<% if alert %>
  <p class="alert alert-danger"><%= alert %></p>
<% end %>
"
#Set up USER MODEL

rails g devise user
rails db:migrate

#SET NAV BAR
"
<p class="navbar-text pull-right">
<% if user_signed_in? %>
  Logged in as <strong><%= current_user.email %></strong>.
  <%= link_to 'Edit profile', edit_user_registration_path, :class => 'navbar-link' %> |
  <%= link_to "Logout", destroy_user_session_path, method: :delete, :class => 'navbar-link'  %>
<% else %>
  <%= link_to "Sign up", new_user_registration_path, :class => 'navbar-link'  %> |
  <%= link_to "Login", new_user_session_path, :class => 'navbar-link'  %>
<% end %>
</p>
"

#OPEN app/controllers/application_controller.rb

add   before_action :authenticate_user!
right after protect_from_forgery with: :exception
