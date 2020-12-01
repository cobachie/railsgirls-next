import { Controller } from "stimulus"
import { timelineChannel } from "../channels/timeline_channel";

export default class extends Controller {

  connect() {
  }

  like(e) {
    const ideaId = e.currentTarget.dataset.id
    timelineChannel.like(ideaId);
  }
}
