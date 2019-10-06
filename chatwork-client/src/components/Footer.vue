<template>
  <div class="sectionFooter">
    <footer class="footer">
      <p class="footerBrand">
        <a href="/">
          <img src="@/assets/logo_color.png" />
        </a>
      </p>
      <div class="gridContainer">
        <ul class="footerNav gridColumn">
          <li><a href="#">Product</a></li>
          <li><a href="#">FAQ</a></li>
          <li><a href="#">Blog</a></li>
          <li><a href="#">Pricing</a></li>
          <li><a href="#">Company</a></li>
          <li><a href="#">Security</a></li>
          <li><a href="#">Terms of use</a></li>
          <li><a href="#">Download</a></li>
          <li><a href="#">Privacy</a></li>
        </ul>
        <div class="footerLanguage">
          <button title="Select region" class="selectLanguage">English</button>
        </div>
      </div>
      <small class="copyright smallText">
        © Chatwork
      </small>
    </footer>
  </div>
</template>

<style scoped lang="scss">
.sectionFooter {
  padding: 1.4286em 0;
  background-color: #13202f;

  .footer {
    position: relative;
    width: 940px;
    margin: 0 auto;

    .footerBrand {
      position: absolute;
      width: 23.4042553191%;
      top: 0;
      right: 0;
      margin: 0 0 2.2222em auto;

      img {
        max-width: 100%;
        height: auto;
        vertical-align: middle;
        border: 0;
      }
    }

    .gridContainer {
      box-sizing: border-box;
      max-width: 58.75em;
      margin-right: auto;
      margin-left: auto;

      ul {
        padding-left: 0;
        list-style: none;
      }

      .footerNav {
        width: 70%;
        margin-bottom: 3em;

        li {
          line-height: 2;
          float: left;
          width: 146px;
          text-align: left;

          a {
            font-size: 0.8571em;
            line-height: 1;
            color: #d9d9d9;
            text-decoration: none;

            &:hover {
              color: chocolate;
              text-decoration: underline;
            }
          }
        }

        &::after {
          display: table;
          clear: both;
          content: "";
        }
      }

      .gridColumn {
        float: left;
      }

      &::after {
        display: table;
        clear: both;
        content: "";
      }

      .footerLanguage {
        position: relative;
        clear: both;
        margin-bottom: 1em;
        text-align: left;

        .selectLanguage {
          font-size: 0.8571em;
          display: inline-block;
          width: auto;
          text-align: left;
          text-decoration: none;
          color: #d9d9d9;
          background: 0 0;

          &::before {
            display: inline-block;
            width: 20px;
            height: 20px;
            margin-right: 7px;
            content: "";
            vertical-align: middle;
            background-image: url("../assets/world.png");
            background-size: cover;
          }
        }

        button {
          border-style: none;
          margin: 0;
          padding: 0;
        }

        .languageName {
          box-sizing: border-box;
          width: 220px;
          padding: 12px 19px;
          border-radius: 3px;
          background: #e8e6e4;
          position: absolute;
          top: -123px;
          letter-spacing: -0.4em;
        }
      }
    }

    .copyright {
      display: block;
      width: 940px;
      margin: 0 auto;
      color: #d9d9d9;
      text-align: left;
    }

    .smallText {
      font-size: 0.7778em;
    }
  }
}
</style>
