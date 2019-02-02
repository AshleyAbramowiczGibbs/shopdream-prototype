/* global chrome, axios */

// alert(axios);

// const xhr = new XMLHttpRequest();

// var imageMenu = chrome.contextMenus.create({
//   title: "Pin It!",
//   contexts: ["image"],
//   onclick: function(info, tab) {
//     console.log(info);
//     console.log(tab);
//     var pinUrl = "http://pinterest.com/pin/create/bookmarklet/";
//     pinUrl += "?media=" + escape(info.srcUrl) + "&url=" + escape(tab.url) + "&alt=alt&title=foo"; //+ escape(tab.title);
//     pinUrl += "&is_video=false&";
//     window.open(
//       pinUrl,
//       "pin" + new Date().getTime(),
//       "status=no,resizable=no,scrollbars=yes,personalbar=no,directories=no,location=no,toolbar=no,menubar=no,width=635,height=290,left=0,top=0"
//     );
//   }
// });

document.addEventListener(
  "DOMContentLoaded",
  function() {
    var addStyleButton = document.getElementById("addStyle");
    addStyleButton.addEventListener(
      "click",
      function() {
        chrome.tabs.getSelected(null, function(tab) {
          d = document;

          // Log in
          var params = {
            email: "ashley@email.com",
            password: "password"
          };
          axios.post("http://localhost:3000/api/sessions", params).then(response => {
            // Set jwt
            var jwt = response.data.jwt;
            axios.defaults.headers.common["Authorization"] = "Bearer " + jwt;
            // Save the style
            var params = {
              image_url: "https://www.lulus.com/images/product/xlarge/2954720_185074.jpg?w=560"
            };
            axios.post("http://localhost:3000/api/styles", params).then(response => {
              console.log(response.data);
              alert(response.data);
            });
          });

          // xhr.open("POST", "http://localhost:3000/api/styles", params);

          // var params = {
          //   image_url: "hello"
          // };

          // xhr.send();

          // var f = d.createElement("form");
          // f.action = "http://gtmetrix.com/analyze.html?bm";
          // f.method = "post";
          // var i = d.createElement("input");
          // i.type = "hidden";
          // i.name = "url";
          // i.value = tab.url;
          // f.appendChild(i);
          // d.body.appendChild(f);
          // f.submit();
        });
      },
      false
    );
  },
  false
);


