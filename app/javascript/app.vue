<template>
  <v-app id="app">
    <Header />
    <h1>This is app.vue</h1>
    <p>{{ message }}</p>
    <Top />
  </v-app>
</template>

<script>
import Header from "./packs/components/Header"; //追記
import Top from "./packs/components/Top";

export default {
  data: function () {
    return {
      message: "Hello Vue!",
    };
  },
  components: {
    Header, //追記
    Top,
  },
};
</script>