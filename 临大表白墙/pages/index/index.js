var url = "http://localhost/lyubbq/biaob/";
var page = 0;
var page_size = 5; 
var GetList = function (that) {
  that.setData({
    hidden: false
  });
  wx.showNavigationBarLoading();
  wx.request({
    url: url + 'index/',
    data: {
      page: page,
      page_size: page_size
    },
    header: {
      'Content-Type': 'application/json'
    },
    success: function (res) {
      var whdthNum = res.data;
      if (whdthNum == 0) {
        that.setData({
          ShdthNum: whdthNum
        });
      }
      if(res.data != 0){
        var listData = wx.getStorageSync('infoList') || []
        for (var i = 0; i < res.data.length; i++) {
          listData.push(res.data[i]);
        }
        wx.setStorageSync('infoList', listData)
        setTimeout(function () {
          that.setData({
            infoList: listData
          });
        }, 800)
        page++;
        setTimeout(function () {
          that.setData({
            hidden: true
          });
        }, 2000)
      }else{
        that.setData({
          hidden: true,
          display: false
        });
      }
      
    },
    complete: function () {
      wx.hideNavigationBarLoading(); 
      wx.stopPullDownRefresh();
    }
  })
}
// -------------------------------
Page({
  data: {
    picUrl: "http://localhost/lyubbq/",
    infoList:[],
    hidden: true,
    display: true,
    ShdthNum: 1
  },
  onLoad: function () {
    try {
      wx.removeStorageSync('infoList')
    } catch (e) {
    }
  },
  onShow: function () {
    var that = this;
    var ShdthNum = that.data.ShdthNum;
    if (ShdthNum == 1) {
      GetList(that);
    }else{
      setTimeout(function () {
        try {
          var value = wx.getStorageSync('infoList')
          if (value) {
            that.setData({
              infoList: value,
            })
          }
        } catch (e) {
          console.log('error');
        }
      }, 1000) 
    }
  },

  onPullDownRefresh: function () {
    page = 0;
    this.setData({
      display: true,
      infoList: []
    })
    wx.removeStorageSync('infoList')
    GetList(this)
  },

  onReachBottom: function () {
    var that = this;
    setTimeout(function () {
      GetList(that)
    }, 1000)
  },

  onShareAppMessage: function () {
    var that = this;
    var picUrl = that.data.picUrl;
    return {
      title: '对自己喜欢的人表白【临沂大学】',
      path: '/pages/index/index'
    }
  }
})
