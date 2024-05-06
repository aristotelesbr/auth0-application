# Oauth0 Application

This is a simple application that demonstrates how to use Oauth0 to authenticate users.

## Getting Started

To get started, you need to create an account on Oauth0 and create an application. You will need to set the following environment variables:

- `OAUTH0_DOMAIN`: The domain of your Oauth0 account
- `OAUTH0_CLIENT_ID`: The client ID of your Oauth0 Application
- `OAUTH0_CLIENT_SECRET`: The client secret of your Oauth0 application

Once you have set these environment variables, you can run the application using the following command:

```bash
$ touch .env
```

## Install Dependencies

To install the dependencies, run the following command:

```bash
$ bundle install
```

### Gems

This app uses the following gems:

- `lennarb` for the web router
- `phlex` for rendering views
- `rack-protection` for security
- `dry-configurable` for configuration
- `dry-system` for dependency injection
- `dotenv` for loading environment variables
- `omniauth` for many authentication strategies
- `omniauth-auth0` for authenticating users with Oauth0

## Run the Application

```bash
$ bundle exec rackup -p 3000
```

You can now access the application by visiting [http://localhost:3000](http://localhost:3000) in your web browser.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
