# Slack Slash Command Starter Template

## Setup

### Creating a Slack Slash Command

Follow the tutorial to create a new Slack app and create a slash command: 
https://api.slack.com/interactivity/slash-commands#getting_started

As part of the setup, you'll need to provide a Request URL where Slack can send requests after a user uses your slash command. For development purposes, you can use a tool like [localtunnel](https://github.com/localtunnel/localtunnel) to allow network requests to a port on your computer. Since we'll be running our server on port 9393, you can start up the tunnel with the following command:

```
$ npx localtunnel --port 9393 --subdomain your-app-name
```

### App Setup

This starter template uses the [rack-auth-slack gem](https://github.com/ihollander/rack-auth-slack) to authenticate requests from Slack. To configure the gem, create a `.env` file with your app's Signing Secret from Slack. This can be found under `Basic Information > App Credentials > Signing Secret` in your app settings on `api.slack.com`. In the `.env` file, add this:

```
SLACK_SECRET=yoursecretissafewithtme
```

After setting up your credentials, install the gems:

```sh
$ bundle install
```

Then start up your server:

```sh
$ shotgun
```

Once your server is running, try using your slash command in Slack!