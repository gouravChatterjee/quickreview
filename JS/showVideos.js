
var link = "https://cdn.preschool-curriculum.in/BeansTalk/videos";
var link2 = "https://rolebased.sgp1.digitaloceanspaces.com/BeansTalk/videos";
var link3 = "https://bsin.go/CDN/Beanstalk-video/";
var link4 = "https://beanstalks3.s3.ap-south-1.amazonaws.com/Beanstalk-video/frp";

// $("#how").click(function() {
//     //Get rid of that old HTML content
//     var newHtml = "<video width='100%' controls><source src='"+link+"/About_IIMTT/IIMTT%20explainer%20Video.mp4' type='video/mp4'></video>";


//     $("#videoShow").empty();

//     //Bring in the new content!
//     $("#videoShow").append(newHtml);
// });
document.addEventListener('contextmenu', event => event.preventDefault());


document.onmousedown = disableRightclick;
var message = "The function is not allowed !!";
function disableRightclick(evt){
    if(evt.button == 2){
        // alert(message);
        return false;    
    }
}


function playVideo(fileName, title){
	document.getElementById("pdfShow").innerHTML = null;
	document.getElementById("pdfShow").style.display = "none";
    document.getElementById("title").innerHTML = title;
    document.getElementById("show").style.display = "flex";
	var newHtml = "<video width='100%' height='400px' autoplay controls controlsList='nodownload'><source src='"+link4+fileName+"' type='video/mp4'></video>";
	document.getElementById("show").innerHTML = newHtml;
  console.log(newHtml);
}

function showText(fileName, title){
	
	document.getElementById("title").innerHTML = title;
	var newHtml = "<iframe src='"+link4+fileName+"' width=100% height=600 frameborder=0 >";
	document.getElementById("show").innerHTML = newHtml;


}
$('.ndfHFb-c4YZDc-Wrql6b-AeOLfc-b0t70b').remove();

// PDF FUNCTION IS IN JS/PDF.JS FILE. 

function showPdf(fileName, title){
	document.getElementById("title").innerHTML = title;
	// var newHtml = "<iframe src='https://docs.google.com/gview?url="+link4+fileName+"&embedded=true' style='width:100%; height:600px;' toolbar=0 frameborder='0'></iframe>";
	// var newHtml = "<iframe src='"+link4+fileName+"#toolbar=0&navpanes=0' style='width:100%; height:600px;' toolbar='0' frameborder='0'></iframe>";
	// var newHtml = "<embed src='"+link4+fileName+"#toolbar=0&navpanes=0&scrollbar=0' width='100%' height='600px' class='pdfNon'>";
	// var newHtml = '<iframe src = "/JS/ViewerJS/#../'+link4+fileName+'" width="100%" height="600px" allowfullscreen webkitallowfullscreen></iframe>'
	var newHtml = '<iframe src = "/JS/ViewerJS/#../'+fileName+'" width="100%" height="600px" allowfullscreen webkitallowfullscreen></iframe>'
	document.getElementById("show").innerHTML = newHtml;
  console.log(newHtml);
}
 


function showZip(fileName,title){
	
	document.getElementById("title").innerHTML = "";
	var newHtml = '<div class="card">  <div class="card-body"><h3>'+title+'</h3><a href="'+link4+fileName+'" download class="btn btn-primary">Download</a></div></div>';
	document.getElementById("show").innerHTML = newHtml;

}
function showHtml(fileName, title){
	document.getElementById("show").style.display = "block";
	// document.getElementById("app").innerHTML = null;
    document.getElementById("app").style.display = "none";
	document.getElementById("title").innerHTML = title;
	var newHtml = "<iframe src='"+link4+fileName+"' width=100% height=600 frameborder=0 >";
	document.getElementById("show").innerHTML = newHtml;
	console.log(newHtml);
}
