<template>
  <div id="app">
    <MainWindow />
  </div>
</template>

<script>
import MainWindow from "./components/MainWindow.vue";

export default {
  name: "App",
  components: {
    MainWindow,
  },
};
</script>

<style>
@font-face {
  font-family: "Lab Grotesque";
  src: local("Lab Grotesque Regular"), local("Lab-Grotesque-Regular"),
    url("./assets/Fonts/LabGrotesque-Regular/LabGrotesque-Regular.woff2")
      format("woff2"),
    url("./assets/Fonts/LabGrotesque-Regular/LabGrotesque-Regular.woff")
      format("woff"),
    url("./assets/Fonts/LabGrotesque-Regular/LabGrotesque-Regular.ttf")
      format("truetype");
  font-weight: 400;
  font-style: normal;
}

@font-face {
  font-family: "Lab Grotesque";
  src: local("Lab Grotesque Medium"), local("Lab-Grotesque-Medium"),
    url("./assets/Fonts/LabGrotesque-Medium/LabGrotesque-Medium.woff2")
      format("woff2"),
    url("./assets/Fonts/LabGrotesque-Medium/LabGrotesque-Medium.woff")
      format("woff"),
    url("./assets/Fonts/LabGrotesque-Medium/LabGrotesque-Medium.ttf")
      format("truetype");
  font-weight: 500;
  font-style: normal;
}

@media screen and (min-width: 768px) {
  .wrapper {
    margin: 24px 0;
    display: flex;
    align-items: center;
    flex-wrap: wrap;
  }
  .ident {
    margin: 0;
    margin-right: 32px;
  }
  .big-button {
    height: 56px;
  }
  .background {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0, 0, 0, 0.3);
  }
  .modal {
    background: transparent;
  }
  .container {
    border-radius: 30px;
    background: #fff;
    width: 50%;
    min-height: unset;
    position: absolute;
    left: 50%;
    top: 120px;
    transform: translateX(-50%);
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    padding: 32px;
    max-height: 74vh;
    overflow: auto;
  }
  .footer {
    position: static;
    padding: 0;
    margin-top: 40px;
  }
}

@media screen and (min-width: 1440px) {
  .container {
    max-width: 552px;
  }
}

@media screen and (max-height: 650px) {
  .container {
    top: 15vh;
    max-height: unset;
  }
  .modal,
  .main {
    min-height: 650px;
  }
}
</style>