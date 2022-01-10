import { Controller } from "@hotwired/stimulus"
import { useClickOutside } from 'stimulus-use';

// Connects to data-controller="nav-profile"
export default class extends Controller {

  connect() {
    useClickOutside(this)
  }

  dropdown(){
    document.getElementById("profile_nav-dropdown").classList.toggle("hidden");
  }

  login(){
    document.getElementById("login-modal").classList.toggle("hidden");
  }
}
