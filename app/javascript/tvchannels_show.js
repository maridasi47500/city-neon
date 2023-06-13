var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
if (event.target == modal) {
modal.style.display = "none";
}
}
function submitvid(){
	var formData = new FormData();
	formData.append('video[filename]', $('#file')[0].files[0]);
	formData.append('video[mychannel]', $('#mychannel')[0].value);
	formData.append('video[user_id]', $('#userid')[0].value);

	$.ajax({
		       url : '/videos/addvideos',
		       type : 'POST',
		       data : formData,
		       processData: false,  // tell jQuery not to process the data
		        contentType: false,  // tell jQuery not to set contentType
		               success : function(data) {
		                          console.log(data);
}
});
	return false;
}
function processFile(imageInput) {
	    if (imageInput.files[0]) {
		          const file = imageInput.files[0];
		          var pattern = /video-*/;

		          if (!file.type.match(pattern)) {
				          alert('Invalid format');
				          imageInput.value="";
				          return;
				        }

		          // here you can do whatever you want with your image. Now you are sure that it is an image
		         }
		           }
