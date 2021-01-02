# privacy-share-button

Proof of concept: detect when an iOS user hits the share button on your website.

Full details on [krausefx.com](https://krausefx.com/blog/ios-privacy-safari-share-button)

## Setup

```
bundle install
```

## Running locally

```
bundle exec ruby server.rb -o 0.0.0.0 -p 80
```

The `-o 0.0.0.0` allows binds from the same network

And now access your IP address from your iPhone, using the IP address of your Mac.
