<template>
  <div id="home">
    <section class="mainHeader">
      <div class="mainHeaderInner">
        <div class="headerBar">
          <div class="headerLogo">
            <a href="/">
              <img src="@/assets/logo_white.png" />
            </a>
          </div>
          <div class="headerNav">
            <ul class="globalNav">
              <li class="globalNavItem"><a href="#">Product</a></li>
              <li class="globalNavItem"><a href="#">Pricing</a></li>
              <li class="globalNavItem"><a href="#">Security</a></li>
              <li class="globalNavItem"><a href="#">Download</a></li>
              <li class="globalNavItem"><a href="#">FAQ</a></li>
              <li class="globalNavItem">
                <a href="/" class="signInBtn">Sign In</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="headerContent">
          <div class="contentText">
            <h1 class="catchCopy">Group chat for global teams.</h1>
            <p class="tagLine">
              Teamwork without the drama. It’s a beautiful thing.
            </p>
          </div>
        </div>
        <div class="headerForm">
          <div class="headerFormInner">
            <div class="formCenter">
              <div class="signUpForm">
                <input type="email" placeholder="e.g. name@company.com" class="inputForm">
              </div>
              <div class="signUpBtn">
                <input type="submit" value="Get started" class="submitBtn" />
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="section homeDevice">
      <div class="sectionInner">
        <h2 class="homeDeviceTitle">
          Conversations. It's the human way to work.
        </h2>
        <p>
          Frustrated and stressed from spending too much time on email?<br />
          Replace your daily crush of email with real-time chat messages. What could be simpler.
        </p>
        <img class="homeDeviceImg" src="@/assets/img_device.jpg" />
        <a href="#" class="btn btnExplore">Explore more</a>
      </div>
    </section>
    <app-footer></app-footer>
  </div>
</template>

<script>
import Footer from "@/components/Footer";

export default {
  components: {
    appFooter: Footer
  }
};
</script>

<style scoped lang="scss">
.mainHeader {
  background-image: url("../assets/home_background.jpg");
  background-position: center top;
  background-size: cover;

  .mainHeaderInner {
    background-color: rgba(0, 0, 0, 0.6);

    .headerBar {
      box-sizing: border-box;
      max-width: 940px;
      height: 85px;
      margin: 0 auto;
      padding: 1.25em 0;

      .headerLogo {
        line-height: 100%;
        float: left;
        box-sizing: border-box;
        width: 23.4042553191%;

        img {
          max-width: 100%;
          height: auto;
          vertical-align: middle;
          border: 0;
        }
      }

      .headerNav {
        position: relative;
        top: 0;
        width: 74.4680851064%;
        margin: 0 0 0 auto;

        ul.globalNav {
          font-size: 0.875em;
          text-align: right;
          border-radius: 0;
          padding-left: 0;
          list-style: none;

          .globalNavItem {
            line-height: 18px;
            display: inline-block;
            height: 18px;
            padding-left: 2em;
            text-align: left;
            vertical-align: top;

            &::before {
              display: block;
              box-sizing: border-box;
              width: 1.5em;
              height: 1em;
              content: "";
            }

            a {
              color: #fff;
              font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
              font-weight: 400;
              height: auto;
              text-decoration: none;

              &:hover {
                color: chocolate;
              }
            }

            .signInBtn {
              padding: 10px 25px;
              box-sizing: border-box;
              border-radius: 4px;
              border: solid 1px white;

              &:hover {
                border-color: chocolate;
              }
            }
          }
        }
      }
    }

    .headerContent {
      padding-top: 160px;
      background: 0 0;
      position: relative;
      border-right: solid 0 #13202f;

      .contentText {
        max-width: 940px;
        margin: 0 auto;

        .catchCopy {
          font-family: "aktiv-grotesk-std", "Helvetica Neue", Helvetica, Arial,
            sans-serif;
          font-size: 64px;
          font-weight: 700;
          text-align: center;
          color: #fff;
          line-height: 1em;
          margin: 0 0 0.3125em;
        }

        .tagLine {
          text-align: center;
          color: #fff;
          font-family: "aktiv-grotesk-std", "Helvetica Neue", Helvetica, Arial,
            sans-serif;
          font-size: 24px;
          font-weight: 300;
          line-height: 1.4;
          margin-bottom: 0;
        }
      }
    }

    .headerForm {
      margin-top: 80px;
      height: 150px;

      .headerFormInner {
        width: 940px;
        margin: 0 auto;
        text-align: center;

        &:after {
          display: table;
          clear: both;
          content: "";
        }

        .formCenter {
          display: inline-block;
          width: 65.9574468085%;
          margin-bottom: 0;
          vertical-align: middle;

          .signUpForm {
            float: left;
            width: 60%;
            margin: 0 0 0 1em;

            .inputForm {
              box-sizing: border-box;
              width: 100%;
              padding: 0.5em;
              border: solid 1px #df1c13;
              border-radius: 4px;
              background-color: #fff;
              height: 44px;
              font-size: 1em;
            }
          }

          .signUpBtn {
            float: left;
            width: 33%;
            margin: 0 0 0 1em;

            .submitBtn {
              font-size: 1em;
              font-family: "aktiv-grotesk-std", "Helvetica Neue", Helvetica,
                Arial, sans-serif;
              font-weight: 400;
              line-height: 44px;
              position: relative;
              display: block;
              box-sizing: border-box;
              width: 100%;
              height: 44px;
              margin: 0;
              cursor: pointer;
              text-align: center;
              text-decoration: none;
              color: #fff;
              border: solid 1px #df1c13;
              border-radius: 4px;
              background-color: #df1c13;
            }
          }
        }
      }
    }
  }
}

.section {
  padding: 2.7778em 0 3.3333em;

  .sectionInner {
    width: 940px;
    margin: 0 auto;
  }
}

.homeDevice {
  background-color: #fff;

  .homeDeviceTitle {
    font-family: "aktiv-grotesk-std", "Helvetica Neue", Helvetica, Arial,
      sans-serif;
    font-size: 2.25em;
    font-weight: 300;
    text-align: center;
  }

  .homeDeviceImg {
    margin: 40px -22px 0;
  }

  .btn {
    font-family: "aktiv-grotesk-std", "Helvetica Neue", "Helvetica", Arial,
      sans-serif;
    font-weight: 400;
    line-height: 44px;
    position: relative;
    display: block;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    width: 100%;
    height: 44px;
    margin: 0;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    color: #fff;
    border: solid 1px #df1c13;
    border-radius: 4px;
    background-color: #df1c13;
  }

  .btnExplore {
    font-size: 1.3em;
    line-height: 50px;
    width: 220px;
    height: 50px;
    margin: 0 auto;
    cursor: pointer;
  }
}
</style>
