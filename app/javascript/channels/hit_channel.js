import consumer from "channels/consumer"

const hit = consumer.subscriptions.create({ channel: "HitChannel", radio: $("#radioname").html() }, {
	  received(data) {
		      this.appendLine(data)
		    },

	  appendLine(data) {
		      const html = this.createLine(data)
		      const element = document.querySelector("[data-hit-radio='"+$("#radioname").html()+"']")
		      element.insertAdjacentHTML("beforeend", html)
		  while(element.children.length > 10){
			  element.children[0].remove();

		  }		    },

	  createLine(data) {
		      return `
		            <article class="hit-line">
			            <span class="song"></span>
				            <span class="body">
					    <audio controls>
					      <source src="/uploads/${data["filename"]}" type="audio/ogg">
						  Your browser does not support the audio tag.
						  </audio>

					    </span>
					          </article>
						      `
		    }
})
hit.send({filename:"azerty.mp3"});
