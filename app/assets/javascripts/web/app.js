/*!
 * 30秒テレビ - メインスクリプト
 * --------------------
 * @author k.saruta
 * @link https://vem30.com/
 * --------------------
 */

 /*****************************************************
  
  30 研修プログラム実施者へ


  このファイルは30のWebサイトのベーススクリプトです。
  スクリプトの変更は、amend.jsで上書きしてください。

  上書きの際に特段必要な時以外は、このファイルは基本的に触らないようにお願いします。

  *****************************************************/


! function(t) {
  function n(o) {
      if (e[o]) return e[o].exports;
      var r = e[o] = {
          exports: {},
          id: o,
          loaded: !1
      };
      return t[o].call(r.exports, r, r.exports, n), r.loaded = !0, r.exports
  }
  var e = {};
  return n.m = t, n.c = e, n.p = "", n(0)
}([function(t, n, e) {
  e(1), e(2), e(3), e(5), e(6), e(7), e(8), e(9), e(10), e(11), e(12), t.exports = e(13)
}, function(t, n) {}, function(t, n) {}, function(t, n, e) {
  (function(t) {
      var n;
      new(n = function() {
          function n() {
              t.getName("Article") && this.init()
          }
          return n.prototype.init = function() {
              return this.main()
          }, n.prototype.main = function() {}, n
      }())
  }).call(n, e(4))
}, function(t, n) {
  var e;
  e = function() {
      function t() {}
      var n;
      return t.getName = function(t) {
          return document.querySelector("body.page-" + t.toLowerCase())
      }, t.getParam = function() {
          var t, n, e, o;
          for (t = [], o = location.search.substring(1).split("&"), n = 0; o[n];) e = o[n].split("="), t[e[0]] = e[1], n++;
          return t
      }, t.shuffleArray = function(t) {
          var n, e, o, r;
          for (o = t.length, n = o - 1; n > 0;) e = Math.floor(Math.random() * (n + 1)), r = t[n], t[n] = t[e], t[e] = r, n--;
          return t
      }, t.splitByLength = function(t, n) {
          var e, o, r, i;
          if (r = [], !t || !n || n < 1) return r;
          for (o = 0, i = o, e = i + n; i < t.length;) r[o] = t.substring(i, e), o++, i = e, e = i + n;
          return r
      }, t.twitterShare = function(t, n, e, o) {
          null !== document.querySelector(t) && document.querySelector(t).addEventListener("click", function(t) {
              var o;
              return t.preventDefault(), o = "http://twitter.com/share?url=", o += encodeURIComponent(n), o += "&text=" + encodeURIComponent(e), window.open(o, "share", ["width=550", "height=450", "location=yes", "resizable=yes", "toolbar=no", "menubar=no", "scrollbars=no", "status=no"].join(",")), !1
          }, !1)
      }, t.facebookShare = function(t, n) {
          null !== document.querySelector(t) && document.querySelector(t).addEventListener("click", function(t) {
              var e;
              return t.preventDefault(), e = "http://www.facebook.com/share.php?u=", e += encodeURIComponent(n), window.open(e, "share", ["width=550", "height=450", "location=yes", "resizable=yes", "toolbar=no", "menubar=no", "scrollbars=no", "status=no"].join(",")), !1
          }, !1)
      }, t.lineShare = function(t, n, e, o) {
          null !== document.querySelector(t) && document.querySelector(t).addEventListener("click", function(t) {
              var o;
              return t.preventDefault(), "mobile" === mobileType[0] ? (o = "http://line.me/R/msg/text/?", o += encodeURIComponent(e), o += "%20" + encodeURIComponent(n)) : (o = "https://timeline.line.me/social-plugin/share?url=", o += encodeURIComponent(n)), window.open(o, "share", ["width=550", "height=450", "location=yes", "resizable=yes", "toolbar=no", "menubar=no", "scrollbars=no", "status=no"].join(",")), !1
          }, !1)
      }, n = {
          first: "-.5em",
          rspace: "-.75em",
          rspace2: "-.5em"
      }, t.textKerning = function(t) {
          Array.prototype.forEach.call(document.querySelectorAll(t), function(t, e) {
              var o, r, i, a, c, u, l, s, p;
              for (i = t, a = [], u = [], r = i.getElementsByTagName("img"), o = i.getElementsByTagName("a"), r.length > 0 && Array.prototype.forEach.call(r, function(t, n) {
                      a.push(t.getAttribute("alt")), t.setAttribute("alt", "")
                  }), o.length > 0 && Array.prototype.forEach.call(o, function(t, n) {
                      u.push(t.getAttribute("title")), t.setAttribute("title", "")
                  }), c = i.innerHTML, c = c.replace(/^(\s|\t|\n)+|(\s|\t|\n)+$/g, ""), c = c.replace(/(\n)((\s|\t)+)/g, ""), c = c.replace(/^(（|〔|［|｛|〈|《|「|『|【)/g, "<span class='rspace-first'>$1</span>"), c = c.replace(/(<br \/>|<br>)(（|〔|［|｛|〈|《|「|『|【)/g, "$1<span class='rspace-first'>$2</span>"), c = c.replace(/(、|。|，|．|）|〕|］|｝|〉|》|」|』|】)(、|。|，|．|）|〕|］|｝|〉|》|」|』|】)(（|〔|［|｛|〈|《|「|『|【)/g, "<span class='rspace2'>$1</span><span class='rspace'>$2</span>$3"), c = c.replace(/(、|。|，|．|）|〕|］|｝|〉|》|」|』|】)(（|〔|［|｛|〈|《|「|『|【)/g, "<span class='rspace2'>$1</span>$2"), i.innerHTML = c, l = i.querySelectorAll(".rspace-first"), s = i.querySelectorAll(".rspace"), p = i.querySelectorAll(".rspace2"), e = 0; e < l.length;) l[e].style.position = "relative", l[e].style.left = n.first, l[e].style.letterSpacing = n.first, e++;
              for (e = 0; e < s.length;) s[e].style.letterSpacing = n.rspace, e++;
              for (e = 0; e < p.length;) p[e].style.letterSpacing = n.rspace2, e++;
              r = i.getElementsByTagName("img"), o = i.getElementsByTagName("a"), r.length > 0 && Array.prototype.forEach.call(r, function(t, n) {
                  t.setAttribute("alt", a[n])
              }), o.length > 0 && Array.prototype.forEach.call(o, function(t, n) {
                  t.setAttribute("title", u[n])
              })
          })
      }, t.setCookie = function(t, n, e) {
          var o, r, i, a, c, u;
          a = location.pathname, c = new Array, c = a.split("/"), "" !== c[c.length - 1] && (c[c.length - 1] = "", a = c.join("/")), i = (new Date).getTime(), o = new Date(i + 864e5 * e), r = o.toUTCString(), u = "", u += t + "=" + escape(n), u += "; path=" + a, u += e ? "; expires=" + r + "; " : "; ", document.cookie = u
      }, t.getCookie = function(t) {
          var n, e;
          return e = "", n = "", document.cookie.length > 0 && (e = document.cookie.indexOf(t + "="), e !== -1) ? (e = e + t.length + 1, n = document.cookie.indexOf(";", e), n === -1 && (n = document.cookie.length), unescape(document.cookie.substring(e, n))) : ""
      }, t
  }(), t.exports = e
}, function(t, n, e) {
  (function(t) {
      var n;
      new(n = function() {
          function n() {
              t.getName("Category") && this.init()
          }
          return n.prototype.init = function() {
              return this.main()
          }, n.prototype.main = function() {}, n
      }())
  }).call(n, e(4))
}, function(t, n) {
  var e;
  new(e = function() {
      function t() {
          this.init()
      }
      return t.prototype.init = function() {
          return this.main()
      }, t.prototype.main = function() {
          var t, n;
          return t = $(".section-header-inner-menu"), n = function() {
              var n, e, o;
              return e = $(window).width(), o = 765, n = e <= o ? 18 : 30, t.find("li").text().replace(/\s+/g, "").length > n ? t.removeClass("min") : t.addClass("min")
          }, $(window).on("load resize orientationchange", n)
      }, t
  }())
}, function(t, n, e) {
  (function(t) {
      var n;
      new(n = function() {
          function n() {
              t.getName("Creator") && this.init()
          }
          return n.prototype.init = function() {
              return this.main()
          }, n.prototype.main = function() {}, n
      }())
  }).call(n, e(4))
}, function(t, n, e) {
  (function(t) {
      var n;
      new(n = function() {
          function n() {
              t.getName("Index") && this.init()
          }
          return n.prototype.init = function() {
              return this.main()
          }, n.prototype.main = function() {
              return $(".section-contents-inner-new-inner-slider").slick({
                  centerMode: !0,
                  centerPadding: "25%",
                  slidesToShow: 1,
                  arrows: !1
              })
          }, n
      }())
  }).call(n, e(4))
}, function(t, n, e) {
  (function(t) {
      var n;
      new(n = function() {
          function n() {
              t.getName("Pickup") && this.init()
          }
          return n.prototype.init = function() {
              return this.main()
          }, n.prototype.main = function() {}, n
      }())
  }).call(n, e(4))
}, function(t, n, e) {
  (function(t) {
      var n;
      new(n = function() {
          function n() {
              t.getName("Search") && this.init()
          }
          return n.prototype.init = function() {
              return this.main()
          }, n.prototype.main = function() {}, n
      }())
  }).call(n, e(4))
}, function(t, n, e) {
  (function(t) {
      var n;
      new(n = function() {
          function n() {
              t.getName("Series") && this.init()
          }
          return n.prototype.init = function() {
              return this.main()
          }, n.prototype.main = function() {}, n
      }())
  }).call(n, e(4))
}, function(t, n, e) {
  (function(t) {
      var n;
      new(n = function() {
          function n() {
              t.getName("Tag") && this.init()
          }
          return n.prototype.init = function() {
              return this.main()
          }, n.prototype.main = function() {}, n
      }())
  }).call(n, e(4))
}, function(t, n, e) {
  (function(t) {
      var n;
      new(n = function() {
          function n() {
              t.getName("Video") && this.init()
          }
          return n.prototype.init = function() {
              return this.main()
          }, n.prototype.main = function() {
              return $("video").mediaelementplayer()
          }, n
      }())
  }).call(n, e(4))
}]);
