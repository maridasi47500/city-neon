import consumer from "channels/consumer"

const hit = consumer.subscriptions.create({ channel: "VidChannel", mychannel: $("#tvname").html() }, {
	          received(data) {
			                        this.appendLine(data)
			                      },

	          appendLine(data) {
			                        const html = this.createLine(data)
			                        const element = document.querySelector("[data-channel-vid='"+$("#tvname").html()+"']")
			                        element.insertAdjacentHTML("beforeend", html)
			                    while(element.children.length > 10){
						                              element.children[0].remove();

						                      }                 },

	          createLine(data) {
			                        return `
						                            <article class="vid-line">
									                                        <span class="vid"></span>
														                                            <span class="body">
																			                                      <video width="320" height="240" controls>
																							        <source src="/uploads/${data["filename"]}" type="video/mp4">
																								  <source src="/uploads/${data["filename"]}" type="video/ogg">
				    Your browser does not support the video tag.
				  </video></span>
																																										                                                      </article>
																																																                                                            `
			                      }
})
hit.send({filename:"azerty.vid"});
