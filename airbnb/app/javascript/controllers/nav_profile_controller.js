import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="nav-profile"
export default class extends Controller {

  connect() {
  }

  dropdown(){
    document.getElementById("profile_nav-dropdown").classList.toggle("hidden");
  }

  login(){
    document.getElementById("login-modal").classList.toggle("hidden");
  }
}
