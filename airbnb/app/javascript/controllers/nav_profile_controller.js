import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="profile"
export default class extends Controller {
  static values = {hidden: false}

  connect() {
  }

  dropdown(){
    if (!this.hiddenValue){
      document.getElementById("profile_nav-dropdown").classList.remove("hidden");
    }else{
      document.getElementById("profile_nav-dropdown").classList.add("hidden");
    }
    this.hiddenValue = !this.hiddenValue;
  }
}
