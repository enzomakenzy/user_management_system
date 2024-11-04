import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

    static targets = [ "show" ];

    select(event) {
        const selectedValue = event.target.value;

        if (selectedValue === "gestor") {
            this.showTarget.classList.remove("hidden");
        } else {
            this.showTarget.classList.add("hidden");
        }
    }
}
