<div class="container">
  <script>
      if ( window.history.replaceState ) {
          window.history.replaceState( null, null, window.location.href );
      }
  </script>
  <script type="text/javascript" src="/JS/QR-Generator.min.js"></script>






  <?php

  if (isset($_GET)){
    if (isset($_GET['Business'])){
      if (isset($_GET['futurePlanForExceptionHandling'])) {
        // code...
      }
      elseif (isset($_GET['ProgramContent'])) {
        echo '
        <h2>Program Content </h2>
          <form method="post" class="form-inline">
            <div class="form-group">
              <label for="email">New &nbsp;&nbsp; </label>
              <input type="hidden" name="FormTarget" value=""><input type="hidden" name="s_Hash" value="'.$_SESSION['s_Hash'].'">
              <input type="file" class="form-control" > <input type="hidden" name="FormTarget" value="">
            </div> &nbsp;
           <button type="submit" class="btn btn-primary">Create</button>
          </form>
        ';
        $i=0;
        foreach (glob("CONTENT/DATA/Structure/Business/".$_GET['Business']."/".$_GET['Program']."/".$_GET['ProgramContent']."/*") as $filename) {
          if(!is_dir($filename)) {
            $i++;
            $FolderName=explode('/', $filename); $FolderName=end($FolderName);
            echo  '<a href="?Business='.$_GET['Business'].'&Program='.$_GET['Program'].'&ProgramContent=',$FolderName,'"> <div class="gridView1">',$FolderName,'</div> </a>';
          }
        } //echo  "<br>",$filename));
        if($i==0) {
          echo 'Nothng Found Upload One: ';
        }
        // echo $_GET['Business'];
      }
      elseif (isset($_GET['Program'])) {
        echo '<h2> Sub Program  </h2>
        <form method="post" class="form-inline">
          <div class="form-group">
            <label for="email">New &nbsp;&nbsp; </label>
            <input type="text" class="form-control" name="SubProgramList" placeholder="Program Name (<3 char)"> <input type="hidden" name="FormTarget" value=""><input type="hidden" name="s_Hash" value="'.$_SESSION['s_Hash'].'">
          </div> &nbsp;
         <button type="submit" class="btn btn-primary">Create</button>
        </form>
        ';
        $i=0;
        foreach (glob("CONTENT/DATA/Structure/Business/".$_GET['Business']."/".$_GET['Program']."/*") as $filename) {
          if(is_dir($filename)) {
            $i++;
            $FolderName=explode('/', $filename); $FolderName=end($FolderName);
            echo  '<a href="?Business='.$_GET['Business'].'&Program='.$_GET['Program'].'&SubProgramList=',$FolderName,'"> <div class="gridView1">
              <div id="',$FolderName,'" style="width:100px; height:100px; margin-top:15px;"></div>
                <script type="text/javascript">
                var qrcode = new QRCode(document.getElementById("',$FolderName,'"), {
                	width : 100,
                	height : 100
                });
                  qrcode.makeCode("',$FolderName,'");
                </script>
            ',$FolderName,'</div> </a>';
          }
        } //echo  "<br>",$filename));
        if($i==0) {
          echo 'Nothng Found Create One:';
        }
        // echo $_GET['Business'];
        if ( isset($_POST["s_Hash"]) && $_POST["s_Hash"]== $_SESSION['s_Hash'] && isset($_POST["SubProgramList"]) ) {
          $folderToCreate=APP_DIR.'/CONTENT/DATA/Structure/Business/'.$_GET['Business'].'/'.$_GET['Program'].'/'.$_POST["SubProgramList"];
          if(!file_exists($folderToCreate) && strlen($_POST["SubProgramList"])>2 ) mkdir($folderToCreate, 0755, true);
          else $GLOBALS['alert_info'] .= DaddToBsAlert("That entry exists!");
        }
      }
      else{
        echo '<h2>Program List </h2>
        <form method="post" class="form-inline">
          <div class="form-group">
            <label for="email">New &nbsp;&nbsp; </label>
            <input type="text" class="form-control" name="ProgramList" placeholder="Program Name (<3 char)"> <input type="hidden" name="FormTarget" value=""><input type="hidden" name="s_Hash" value="'.$_SESSION['s_Hash'].'">
          </div> &nbsp;
         <button type="submit" class="btn btn-primary">Create</button>
        </form>
        ';
        $i=0;
        foreach (glob("CONTENT/DATA/Structure/Business/".$_GET['Business']."/*") as $filename) {
          if(is_dir($filename)) {
            $i++;
            $FolderName=explode('/', $filename); $FolderName=end($FolderName);
            echo  '<a href="?Business='.$_GET['Business'].'&Program=',$FolderName,'"> <div class="gridView1">',$FolderName,'</div> </a>';
          }
        } //echo  "<br>",$filename));
        if($i==0) {
          echo 'No Program Found Create One:';
        }
        // echo $_GET['Business'];
        if ( isset($_POST["s_Hash"]) && $_POST["s_Hash"]== $_SESSION['s_Hash'] && isset($_POST["ProgramList"]) ) {
          $folderToCreate=APP_DIR.'/CONTENT/DATA/Structure/Business/'.$_GET['Business'].'/'.$_POST["ProgramList"];
          if(!file_exists($folderToCreate) && strlen($_POST["ProgramList"])>2 ) mkdir($folderToCreate, 0755, true);
          else $GLOBALS['alert_info'] .= DaddToBsAlert("That entry exists!");
        }
      }

    }
    elseif (isset($_GET['futurePlanForExceptionHandling'])) {
      // code...
    }
    else {
      echo '<h2>Business List </h2>
        <form method="post" class="form-inline">
          <div class="form-group">
            <label for="email">New &nbsp;&nbsp; </label>
            <input type="text" class="form-control" name="BusinessList" placeholder="3 chars min" > <input type="hidden" name="FormTarget" value=""><input type="hidden" name="s_Hash" value="'.$_SESSION['s_Hash'].'">
          </div> &nbsp;
         <button type="submit" class="btn btn-primary">Create</button>
        </form>
      ';
        foreach (glob("CONTENT/DATA/Structure/Business/*") as $filename) {
          if(is_dir($filename)) {
            $FolderName=explode('/', $filename); $FolderName=end($FolderName);
            echo  '<a href="?Business=',$FolderName,'"> <div class="gridView1">',$FolderName,'</div> </a>';
          }
        } //echo  "<br>",$filename));

        if ( isset($_POST["s_Hash"]) && $_POST["s_Hash"]== $_SESSION['s_Hash'] && isset($_POST["BusinessList"]) ) {
          $folderToCreate=APP_DIR.'/CONTENT/DATA/Structure/Business/'.$_POST["BusinessList"];
          if(!file_exists($folderToCreate) && strlen($_POST["BusinessList"])>2 ) mkdir($folderToCreate, 0755, true);
          else $GLOBALS['alert_info'] .= DaddToBsAlert("That entry exists!");
        }
    }

  }
  else {
  }




  if ($GLOBALS['alert_info']!="") {
    echo $GLOBALS['alert_info'];
  }
  ?>

</div>
