import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

    static targets = [ "show" ];

    toggle(event) {
        event.preventDefault();
        event.stopPropagation();
        this.showTarget.classList.toggle("hidden");
    }
}
