
document.addEventListener('contextmenu', event => event.preventDefault());
  var myState = {
      pdf: null,
      currentPage: 1,
      zoom: 1
  }
  var link4 = "https://beanstalks3.s3.ap-south-1.amazonaws.com/Beanstalk-video/frp";


  // more code here
  function initPdf(fileName, title){
    document.getElementById("show").innerHTML = null;
    document.getElementById("title").innerHTML = title;
    document.getElementById("show").style.display = "none";
    document.getElementById("pdfShow").style.display = "flex";
    document.getElementById("pdfShow").innerHTML = '<div id="my_pdf_viewer">     <div id="canvas_container">          <canvas id="pdf_renderer"></canvas>          </div>          <div class="btns">            <div id="navigation_controls">                <button id="go_previous" class="btn btn-success">Previous</button>                <input id="current_page" value="1" type="number"/>                <button id="go_next" class="btn btn-success">Next</button>            </div>            <div id="zoom_controls">              <button id="zoom_in" class="btn btn-primary">+</button>              <button id="zoom_out" class="btn btn-primary">-</button>            </div>          </div>        </div>';
    pdfjsLib.getDocument(link4+fileName).then((pdf) => {

    // more code here
    myState.pdf = pdf;
    render();

    });
  }


  function render() {
    

    myState.pdf.getPage(myState.currentPage).then((page) => {

        // more code here
        var canvas = document.getElementById("pdf_renderer");
        var ctx = canvas.getContext('2d');

        var viewport = page.getViewport(myState.zoom);
        canvas.width = viewport.width;
        canvas.height = viewport.height;
        page.render({
            canvasContext: ctx,
            viewport: viewport
        });
    });
}
document.getElementById('go_previous')
      .addEventListener('click', (e) => {
        console.log("jnnfjnfj");
          if(myState.pdf == null
             || myState.currentPage == 1) return;
          myState.currentPage -= 1;

          document.getElementById("current_page")
                  .value = myState.currentPage;
          render();
});
document.getElementById('go_next')
.addEventListener('click', (e) => {
    if(myState.pdf == null
       || myState.currentPage > myState.pdf
                                       ._pdfInfo.numPages)
       return;

    myState.currentPage += 1;
    document.getElementById("current_page")
            .value = myState.currentPage;
    render();
});
document.getElementById('current_page')
      .addEventListener('keypress', (e) => {
          if(myState.pdf == null) return;

          // Get key code
          var code = (e.keyCode ? e.keyCode : e.which);

          // If key code matches that of the Enter key
          if(code == 13) {
              var desiredPage =
                      document.getElementById('current_page')
                              .valueAsNumber;

              if(desiredPage >= 1
                 && desiredPage <= myState.pdf
                                          ._pdfInfo.numPages) {
                      myState.currentPage = desiredPage;
                      document.getElementById("current_page")
                              .value = desiredPage;
                      render();
              }
          }
      });
document.getElementById('zoom_in')
      .addEventListener('click', (e) => {
        console.log("jnnfjnfj");
          if(myState.pdf == null) return;
          myState.zoom += 0.5;
          render();
});
document.getElementById('zoom_out')
      .addEventListener('click', (e) => {
        console.log("jnnfjnfj");
          if(myState.pdf == null) return;
          myState.zoom -= 0.5;
          render();
});
