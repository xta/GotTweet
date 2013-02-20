#Got Tweet?

##Sample app for:
* get tweet by ID
* store tweet
* show tweet

##Setup

    git clone git@github.com:xta/GotTweet.git
    cd GotTweet
    bundle
    cp config/config.yml.example config/config.yml
    
setup `/config/config.yml` with Twitter keys

    rake db:migrate
    rails server
