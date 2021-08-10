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
</style>