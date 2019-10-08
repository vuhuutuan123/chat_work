<template>
  <header class="globalHeader">
    <div class="header layoutInner">
      <h1 class="headerLogo">
        <img class="logoChatwork" src="@/assets/logo_full_color.svg" />
      </h1>
    </div>
  </header>
</template>

<style lang="scss">
.globalHeader {
  position: static;
  height: auto;
  padding: 1.4286em 0;
  background: #fff;

  .header {
    background-color: #fff;
    zoom: 1;

    &Logo {
      float: left;

      .logoChatwork {
        width: 220px;
        height: 45.15135967px;
      }

      img {
        vertical-align: middle;
        border: 0;
      }
    }

    &:after {
      content: "";
      display: block;
      clear: both;
    }
  }

  .layoutInner {
    width: 960px;
    margin: 0 auto;
  }
}
</style>
