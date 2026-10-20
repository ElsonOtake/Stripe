<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Usage](#usage)
  - [Run with Docker](#run-with-docker)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Stripe <a name="about-project"></a>

**Stripe**

This repository handles products hosted on Stripe. It performs payments, subscriptions, and billing. Payment for products from the local database also.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://stripe.com/">Stripe</a></li>
    <li><a href="https://github.com/pay-rails/pay">Pay</a></li>
    <li><a href="https://rubygems.org/gems/devise/">Devise</a></li>
    <li><a href="https://github.com/RubyMoney/money-rails">Money Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<details>
<summary>DevOps & Deployment</summary>
  <ul>
    <li><a href="https://www.docker.com/">Docker</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Checkout for Stripe products**
- **Checkout for local database products**
- **Docker Support**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

- [Live Demo Link](https://elsonotake-stripe.onrender.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- [Ruby](https://www.ruby-lang.org/en/)
- [PostgreSQL](https://www.postgresql.org/)

Or optionally, if running with containerization:

- [Docker Desktop](https://www.docker.com/products/docker-desktop/)

### Setup

Clone this repository to your desired folder:

using HTTPS:
```sh
  git clone https://github.com/ElsonOtake/Stripe.git
  cd Stripe
```

using an SSH key:
```sh
  git clone git@github.com:ElsonOtake/Stripe.git
  cd Stripe
```

using GitHub CLI:
```sh
  git clone gh repo clone ElsonOtake/Stripe
  cd Stripe
```

### Install

Set up Postgres and Stripe credentials in .env file
```sh
DATABASE_USERNAME=postgres_username
DATABASE_PASSWORD=postgres_password
STRIPE_PRIVATE_KEY=stripe_private_key
STRIPE_PUBLIC_KEY=stripe_publishable_key
STRIPE_SIGNING_SECRET=webhooks_signing_secret
```

Install this project with:
```sh
  bundle install
  rails db:create db:migrate
```

### Usage

To run the project, execute the following command:

```sh
  bin/dev
```
Open `http://localhost:3000/` on your browser.

### Run with Docker

To build and run the application along with PostgreSQL in Docker containers:

- Ensure Docker Engine / Docker Desktop is running..
- Launch the services:

```sh
docker compose up --build
```
Open `http://localhost:3000/` on your browser.

To stop the containers:

```sh
docker compose down
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Author <a name="authors"></a>

👤 **Elson Otake**

- GitHub: [elsonotake](https://github.com/elsonotake)
- X: [@elsonotake](https://x.com/elsonotake)
- LinkedIn: [elsonotake](https://linkedin.com/in/elsonotake)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Subscription**
- [ ] **Billing portal**
- [ ] **Shopping cart**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

Give a ⭐️ if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank:

- [Microverse](https://www.microverse.org/)
- [W3Schools](https://www.w3schools.com/)
- [Stack Overflow](https://stackoverflow.com/)
- [Render](https://dashboard.render.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
