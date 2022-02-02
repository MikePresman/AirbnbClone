import { Controller } from "@hotwired/stimulus"
import { useClickOutside } from 'stimulus-use';

// Connects to data-controller="nav-profile"
export default class extends Controller {

  connect() {
    useClickOutside(this)
  }

  close(){
    document.getElementById("login-modal").classList.add("hidden");
  }

}
