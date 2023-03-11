// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.


import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import jQuery from "jquery"
import "popper.js"
import "bootstrap"
import Chart from 'chart.js/auto'; //グラフ出力時に記述
import '@fortawesome/fontawesome-free/js/all';
import "../stylesheets/application"

import Raty from "raty.js" //レビュー評価時に記述
window.raty = function(elem,opt){
  let raty = new Raty(elem,opt)
  raty.init();
  return raty;
}

Rails.start()
Turbolinks.start()
ActiveStorage.start()

global.$=jQuery;
window.$=jQuery;
global.Chart = Chart;　//グラフ出力時に記述