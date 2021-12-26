import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="profile"
export default class extends Controller {

  connect() {
  }

  dropdown(){
    document.getElementById("profile_nav-dropdown").classList.toggle("hidden");
  }
}
