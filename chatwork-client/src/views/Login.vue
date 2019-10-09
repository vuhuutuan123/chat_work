<template>
  <div id='chatwork'>
    <header>
      <h1 class='globalHeader'>
        Chatwork
      </h1>
    </header>
    <div class='login_content'>
      <div class='section_inner'>
        <h2 class='loginTitle'>Login</h2>
        <form id="login" v-on:submit.prevent='validateLogin'>
          <div class='loginFormContainer'>
            <dl class='loginFormRow'>
              <dt class='loginLabel'>Email</dt>
              <dd class='loginInput'>
                  <input v-model='email' placeholder="enter email">
              </dd>
            </dl>
            <dl class='loginFormRow'>
              <dt class='loginLabel'>Password</dt>
              <dd class='loginInput'>
                  <input v-model='password' placeholder="enter password">
              </dd>
            </dl>
            <div class='loginFormOption'>
              <p>
                <input type="checkbox" id="checkbox">
                <label for="checkbox">{{ 'Remember' }}</label>
              </p>
            </div>
          </div>
          <div class='signInButton'>
            <input type="submit" class="btnPrimary" value="Submit">
          </div>
        </form>
        <div class='passwordRemainder'>
          <a href="google.com">Forgot password</a>
        </div>
      </div>
    </div>
    <footer class='globalFooter'>
      <div class='globalFooterInner'>
        <p>chatwork</p>
      </div>
    </footer>
  </div>
</template>
<script>
import { mapActions } from 'vuex'
export default {
  data() {
    return {
      email: '',
      password: ''
    }
  },
  created(){
    this.checkLogin()
  },
  watch:{
  	'$route':'checkLogin'
  },
  methods: {
    ...mapActions(['loginAction']),
    validateLogin () {
      const userDetails = {
        email: this.email,
        password: this.password
      }
      this.loginAction(userDetails)
        .then(() => {
          this.$router.push('/')
        })
        .catch(() => {
          this.$router.push('/login')
        })
    },
    checkLogin(){
      if(this.$store.state.user.email && localStorage.getItem('token'))
      {
         this.$router.push('/').catch(err => {});
         return;
      }
  	}
  }
}
</script>
<style>
.globalHeader {
  box-sizing: border-box;
  width: 960px;
  margin: 0 auto;
  padding-top: 20px;
}

.globalFooter {
  color: #d6d2c4;
  background-color: #34362f;
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: black;
  color: white;
  text-align: center;
}

.globalFooterInner {
  box-sizing: border-box;
  width: 960px;
  margin: 0 auto;
  padding: 1.7143em 0;
}
.login_content {
  padding: 2em 0;
}

.section_inner {
  width: 760px;
  margin: 0 auto;
}

.loginTitle {
  margin-bottom: 1.3636em;
  font-size: 1.375em;
}

.loginTitle:before {
  display: block;
  width: 2.7272em;
  height: 1em;
  border-top: solid 1px #676863;
  content: "";
}

.loginFormContainer {
  padding: 1.5rem 1.5em;
  background-color: #f5f5f4;
  margin-bottom: 30px;
  border-radius: 4px;
}

.loginFormRow {
  margin-right: 40px;
  margin-bottom: 24px;
}

.loginLabel {
  box-sizing: border-box;
  margin-bottom: 8px;
  margin-left: 40px;
  color: #34362f;
  font-size: .875em;
  font-weight: 700;
  line-height: 1;
}

.loginInput {
  margin-right: 40px;
  box-sizing: border-box;
  padding: 9px 7px;
  border: solid 1px #b8b9b6;
  border-radius: 3px;
  background-color: #fff;
}

.loginInput input {
  margin-left: 0 !important;
  box-sizing: border-box;
  padding: 0;
  width: 100%;
  height: 21px;
  border: 0;
  font-size: 1.125em;
  box-shadow: none;
  outline: none;
}

.loginFormOption {
  padding: 0 0 0 30%;
  font-size: .875em;
}

.signInButton {
  margin-bottom: 15px;
  text-align: center;
}

.btnPrimary {
  width: 260px;
  font-size: 1em;
  font-weight: 700;
  line-height: 50px;
  text-align: center;
  color: #fff;
  border: 0;
  background-color: #f9423a;
  -webkit-box-shadow: none;
  box-shadow: none;
  border-radius: 4px;
}

.passwordRemainder {
  margin-bottom: 60px;
  text-align: center;
}

.passwordRemainder a {
  color: #0084b2;
  text-decoration: none;
}
</style>
