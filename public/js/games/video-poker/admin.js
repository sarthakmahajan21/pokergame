webpackJsonp([13],{4:function(n,i,e){n.exports=e("BQcQ")},BQcQ:function(n,i,e){"use strict";window.game_video_poker_config=function(){var n=this;if(n.game_video_poker_tab=document.getElementById("tab-game-video-poker-paytable"),n.game_video_poker_tab)return n.config={},n.input_config=null,n.inputs={},n.bind=function(){var i=n.game_video_poker_tab.getElementsByTagName("input");for(var e in i)if(i[e].type&&"hidden"==i[e].type)n.input_config=i[e];else if(i[e].type&&"number"==i[e].type){var t=i[e].dataset.idx.split(",");n.inputs[t[0]]||(n.inputs[t[0]]={}),n.inputs[t[0]][t[1]]=i[e],i[e].onchange=n.num_changed}},n.num_changed=function(){var i=this.dataset.idx.split(",");n.config[i[1]]||(n.config[i[1]]={}),n.config[i[1]][i[0]]=parseFloat(this.value),n.input_config.value=JSON.stringify(n.config)},n.bind(),n.init=function(){try{for(var i in n.config=JSON.parse(n.input_config.value),n.config)for(var e in n.config[i])n.inputs[e][i].value=n.config[i][e]}catch(n){}},n.init(),n},window.addEventListener("DOMContentLoaded",window.game_video_poker_config)}},[4]);