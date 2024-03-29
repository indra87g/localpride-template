<?php
if (!empty($_GET['q'])) {
  switch ($_GET['q']) {
    case 'info':
      phpinfo();
      exit;
      break;
  }
}
?>
<!DOCTYPE html>
<html data-bs-theme="dark">

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Localpride - Project</title>
  <link rel="stylesheet" href="lp-res/vendor/bootstrap/bootstrap.min.css">
</head>

<body>
<nav id="navbar" class="navbar navbar-expand-lg navbar-danger bg-danger fixed-top shadow">
    <div class="container px-5">
      <a class="navbar-brand" href="http://localpride.pro">Localpride</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" href="index.php">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="project.php">Project</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="toolbox.php">Toolbox</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <br><br><br>
  <header id="hero" class="bg-body-tertiary py-5">
    <div class="container-fluid px-5">
      <div class="row gx-5 align-items-center justify-content-center">
        <div class="col-lg-8 col-xl-7 col-xxl-6">
          <div class="my-5 text-center text-xl-start">
            <h1 class="display-5 fw-bolder text-center">
              Your Project
            </h1>
            <p class="text-center">Document Root: <br> <?php print($_SERVER['DOCUMENT_ROOT']); ?></p>
          </div>
        </div>
      </div>
    </div>
  </header><br><br>
  <?php
  $dirList = glob('*', GLOB_ONLYDIR);
  if (!empty($dirList)) :  
  ?>
  <section class="container">
      <ul>
        <?php
        foreach ($dirList as $key => $value) :
          $link = 'http://localpride.pro/' . $value;
          $projectname = $value;
        ?>
          <li class="project-list"><a href="<?php echo $link; ?>" target="_blank"><?php echo $projectname; ?></a></li>
        <?php
        endforeach;
        ?>
      </ul>
      </section>
  <?php
  else :
  ?>
    <aside>
      <p class="alert">There are no directories, create your first project now</p>
      <div>
        <img src="https://i.imgur.com/3Sgu8XI.png" alt="Offline">
      </div>
    </aside>
  <?php
  endif;
  ?>
</body>

</html>