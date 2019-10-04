<template>
  <section class="mainHeader">
    <div class="mainHeaderInner">
      <div class="headerBar">
        <div id="headerLogo">
          <a href="/">
            <img src="@/assets/chatwork_logo_white.png">
          </a>
        </div>
        <div id="headerNav">
          <ul id="globalNav">
            <li class='globalNavItem'><a href="/">Product</a></li>
            <li class='globalNavItem'><a href="/">Pricing</a></li>
            <li class='globalNavItem'><a href="/">Security</a></li>
            <li class='globalNavItem'><a href="/">Download</a></li>
            <li class='globalNavItem'><a href="/">FAQ</a></li>
            <li class='globalNavItem'><a href="/">Sign In</a></li>
          </ul>
        </div>
      </div>
      <div class="headerContent">
        <div class="contentText">
          <h1 class="catchCopy">Group chat for global teams.</h1>
          <p class="tagLine">Teamwork without the drama. It’s a beautiful thing.</p>
        </div>
      </div>
      <div class="headerForm">
        <div class="headerFormInner">
          <div class="">
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
</script>

<style>
.mainHeader {
  background-image: url("../assets/main_header_img.png");
  background-position: center top;
  background-size: cover;
}

.mainHeaderInner {
  background-color: rgba(0,0,0,.6);
}

.headerBar{
  box-sizing: border-box;
  width: 940px;
  height: 85px;
  margin: 0 auto;
  padding: 1.25em 0;
}

#headerLogo {
  line-height: 100%;
  float: left;
  box-sizing: border-box;
  width: 23.4042553191%;
}

#headerLogo img {
  max-width: 100%;
  height: auto;
  vertical-align: middle;
  border: 0;
}

#headerNav {
  position: relative;
  top: 0;
  width: 74.4680851064%;
  margin: 0 0 0 auto;
}

#globalNav {
  font-size: .875em;
  text-align: right;
  border-radius: 0;
}

#headerNav ul {
  padding-left: 0;
  list-style: none;
}

.globalNavItem {
  line-height: 18px;
  display: inline-block;
  height: 18px;
  padding-left: 2em;
  text-align: left;
  vertical-align: top;
}

.globalNavItem a {
  color: #fff;
  font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif;
  font-weight: 400;
  height: auto;
  text-decoration: none;
}

.headerContent {
  padding-top: 160px;
  background: 0 0;
  position: relative;
  border-right: solid 0 #13202f;
  height: 516px;
}

.contentText {
  width: 940px;
  margin: 0 auto;
}

.catchCopy {
  font-family: 'aktiv-grotesk-std','Helvetica Neue',Helvetica,Arial,sans-serif;
  font-size: 64px;
  font-weight: 700;
  text-align: center;
  color: #fff;
  line-height: 1em;
  margin: 0 0 .3125em;
}

.tagLine {
  text-align: center;
  color: #fff;
  font-family: 'aktiv-grotesk-std','Helvetica Neue',Helvetica,Arial,sans-serif;
  font-size: 24px;
  font-weight: 300;
  line-height: 1.4;
  margin-bottom: 0;
}
</style>
