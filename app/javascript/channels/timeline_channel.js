import consumer from "./consumer"

export const timelineChannel = consumer.subscriptions.create("TimelineChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const ideaCount = document.getElementById(`idea-count-${data["idea_id"]}`);
    ideaCount.textContent = data.likes_count
  },

  like: function(idea_id) {
    return this.perform('like', { id: idea_id });
  }
});

// document.addEventListener("turbolinks:load", () => {
//   const links = document.querySelectorAll('.likes-link');
//   links.forEach(link => {
//     link.addEventListener('click', e => {
//       timelineChannel.like(e.currentTarget.dataset.id);
//     });
//   })
// })
