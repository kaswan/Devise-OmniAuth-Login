# Rails Authentication with Devise-OmniAuth(Facebook, Yahoojp, Google)
## My Working Environment
* Ruby 2.2.3
* Rails 4.2.4
* Mysql

I build a classic login/password authentication systems with features like remember me, reset password, and the like.
Also add authentication via social networks (Facebook, Google+, Yahoojp) with the help of the OAuth 2 protocol. 

## STEP-1: Pull Source code
 Available on GitHub => https://github.com/kaswan/Devise-OmniAuth-Login.git

## STEP-2: bundle install

## STEP-3: Change Database detail and migrate
$ mv config/database.yml.base config/database.yml
$ rake db:migrate

## STEP-4: Change Social Api keys deatil
$ mv config/social_api_keys.yml.base social_api_keys.yml
For API Key and secret Navigate to below page
--Facebook- developers.facebook.com (callback -> http://localhost:3000)
--Google- console.developers.google.com (callback -> http://localhost:3000/users/auth/google/callback)
--YAHOO JAPAN- https://e.developer.yahoo.co.jp (callback -> http://localhost:3000/users/auth/yahoojp/callback)

## STEP-5: rails server 


##Notes
* This apllication primarly based on email login account. If user login through other social account with same email, user data get updates. I can't using Twitter here because they don't provide Email Address
* You can set it on UID base (change User model query).
* 



## Contributors
* KASWAN MADAN


