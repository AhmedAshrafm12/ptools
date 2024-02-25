<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>payment ptoolz</title>
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

.type-effect {
  display: flex;
  justify-content: center;
  font-family: monospace;
}

.type-effect > .text {
  max-width: 0;
  animation: typing 3s steps(var(--characters)) infinite;
  white-space: nowrap;
  overflow: hidden;
  font-size:20px;
}

.type-effect:after {
  content: " |";
  animation: blink 1s infinite;
  animation-timing-function: step-end;
  font-size:20px;
}

@keyframes typing {
  75%,
  100% {
    max-width: calc(var(--characters) * 1ch);
  }
}

@keyframes blink {
  0%,
  75%,
  100% {
    opacity: 1;
  }
  25% {
    opacity: 0;
  }
}
    </style>
    <!-- Custom styles for this template -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> 
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>

<body class="text-center" style=" margin: 6%;position: relative;top: 44px;" >
  <!-- As a heading -->
<nav class="navbar bg-light">
  <div class="container-fluid">
    <span class="navbar-brand mb-0 h1">Ptoolz Payment </span>
  </div>
</nav>
    <main class="form-signin w-100 m-auto">
        <div class="form-floating">