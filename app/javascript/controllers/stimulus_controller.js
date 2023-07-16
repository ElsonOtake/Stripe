import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  mobile_menu() {
    const burger = document.querySelector('.navbar-burger');
    const menu = document.querySelector('#navbarStripe');
    burger.classList.toggle('is-active');
    menu.classList.toggle('is-active');
  }
}
