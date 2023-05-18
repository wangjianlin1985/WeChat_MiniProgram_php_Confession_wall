var app = getApp();
const API_URL = 'http://localhost/lyubbq/biaob/';
Page({
  data: {
    userInfo: {},
    openid: null
  },
  
  txtMore:function(){
    var that = this;
    var openid = that.data.openid;
    if(openid != null){
        wx.switchTab({
          url: '../index/index',
        })
    }else{
      console.log('尚未登录');
    }
  },

  onLoad: function () {
    var that = this;
      wx.login({
        success: function (loginCode) {
          wx.request({
            url: API_URL + 'GetOpenid/code/' + loginCode.code,
            header: {
              'content-type': 'application/json'
            },
            success: function (res) {
              that.setData({
                openid: res.data
              })
            }
          })
        }
      })
    app.getUserInfo(function (userInfo) {
      that.setData({
        userInfo: userInfo
      })
    })
  }
})