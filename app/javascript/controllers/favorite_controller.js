import { Controller } from "stimulus"
import Rails from '@rails/ujs'

export default class extends Controller {
  static targets = [ "icon" ]

  go(e) {
    e.preventDefault();
    const id = this.data.get('id')

    Rails.ajax({
      url: `/posts/${id}/favorite`,
      type: 'post',
      success: (resp) => {
        if (resp.status == "added") {
          this.iconTarget.classList.remove("far")
          this.iconTarget.classList.add("fas")
        } else {
          this.iconTarget.classList.remove("fas")
          this.iconTarget.classList.add("far")
        }
      },
      error: function(err) {
        console.log(err);
      }
    })
  }
}

    // const token = document.querySelector('[name=csrf-token]').content
    // ax.defaults.headers.common['X-CSRF-TOKEN'] = token

    // ax.post(`/posts/${id}/favorite`, {})
    //   .then((resp) => {
    //     // fat arrow
    //     if (resp.data.status == "added") {
    //       this.iconTarget.classList.remove("far")
    //       this.iconTarget.classList.add("fas")
    //     } else {
    //       this.iconTarget.classList.remove("fas")
    //       this.iconTarget.classList.add("far")
    //     }
    //   })
    //   .catch(function(err) {
    //     console.log(err);
    //   })



