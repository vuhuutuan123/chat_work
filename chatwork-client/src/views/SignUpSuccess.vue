<template>
  <div class="signUp">
    <div class="wrapper">
      <global-header></global-header>
      <div class="header">
        <div class="contentHeader">
          <div class="contentHeaderBody">
            <h1>Sign Up</h1>
          </div>
        </div>
      </div>
      <div class="main signUpMain">
        <div class="section">
          <h1>Sign up success</h1>
          <p>Please log in here</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import GlobalHeader from "@/components/GlobalHeader";

export default {
  components: {
    globalHeader: GlobalHeader
  }
};
</script>

<style scoped lang="scss">
.wrapper {
  text-align: left;
  background: #f9f8f7;
}

.header {
  background-color: #fff;
  zoom: 1;
  .contentHeader {
    position: relative;
    padding: 2.8571em 0;
    border-right: solid 8px #34362f;
    border-radius: 0 120px 0 0;
    background-color: #eeede9;

    &Body {
      width: 960px;
      margin: 0 auto;

      h1 {
        margin: 0;
        padding: 0;
        border-width: 0;
        font-size: 2em;
        font-weight: 700;
        line-height: 1;
      }
    }

    &:after {
      position: absolute;
      top: 0;
      right: 0;
      display: block;
      width: 120px;
      height: 100%;
      border-right: solid 8px #f9423a;
      border-radius: 0 110px 0 0;
      content: "";
    }
  }

  &:after {
    content: "";
    display: block;
    clear: both;
  }
}

.main {
  float: none;

  .section {
    margin-bottom: 60px;

    .textCenter {
      text-align: center;
    }
  }
}

.signUpMain {
  width: 960px;
  margin: 0 auto;

  .section {
    width: 100%;
    padding: 2.5em 0 0;
  }
}
</style>
