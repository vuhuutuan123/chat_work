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
          <div v-if="validationError == true" class="alert alert-danger" role="alert">
            <ul>
              <li v-for="message in messages" :key="message">
                {{ message }}
              </li>
            </ul>
          </div>
          <form @submit.prevent="formSubmit">
            <div class="form-group">
              <h4>Name</h4>
              <input type="text" class="form-control" v-model="name" placeholder="Username" />
            </div>
            <div class="form-group">
              <h4>Email</h4>
              <input id="email" type="email" class="form-control" v-model="email" placeholder="example@email.com" />
            </div>
            <div class="form-group">
              <h4>Password</h4>
              <input type="password" class="form-control" v-model="password" placeholder="Your password" />
            </div>
            <div class="form-group">
              <h4>Password confirmation</h4>
              <input type="password" class="form-control" v-model="password_confirmation" placeholder="Insert password again" />
            </div>
            <div class="textCenter">
              <button class="btn btn-success">Submit</button>
            </div>
          </form>
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
  },
  data() {
    return {
      name: "",
      email: "",
      password: "",
      password_confirmation: "",
      messages: "",
      validationError: false
    };
  },
  methods: {
    formSubmit() {
      let currentObj = this;
      this.$api
        .post("/api/v1/sign_up", {
          user: {
            name: this.name,
            email: this.email,
            password: this.password,
            password_confirmation: this.password_confirmation
          }
        })
        .then(response => {
          if (response.data["success"]) {
            currentObj.$router.push("/sign_up/success");
          } else {
            currentObj.validationError = true;
            currentObj.messages = response.data["messages"];
          }
        })
        .catch(error => {
          console.log(error.response);
        });
    }
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
