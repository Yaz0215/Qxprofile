// ==UserScript==

// @UpdateTime        2022/12/12 11:30 UTC/GMT +8
// @Function          请参考对应的注释或Tag
// @MainFunction      去开屏广告、超级VIP、智能分流、图标订阅、流媒体查询、Boxjs订阅、网易云解灰色Music、IOS更新屏蔽

// ==/UserScript==



# > 建议在「其他设置」里「GeoLite2」的「来源」填写使用下面链接「任选一个」，并开启「自动更新」
; https://raw.githubusercontent.com/Loyalsoldier/geoip/release/Country.mmdb
; https://github.com/Hackl0us/GeoIP2-CN/raw/release/Country.mmdb


# > 解锁网易云灰色音乐，获取证书链接 
; https://raw.githubusercontent.com/nondanee/UnblockNeteaseMusic/master/ca.crt
# > 具体操作步骤可参考下面这篇《利用QuantumultX解锁网易云付费及非版权音乐》文章
; https://mp.weixin.qq.com/s/ca6U1O2FTfcqzL7TnJ04IQ


# > QuantumultX图标库订阅，打开以下URL，手机端点击图片即可快捷添加「1.0.30+」
; https://github.com/ddgksf2013/Icon/blob/master/README.md


# > 推荐使用的旧版应用如下链接所示
; https://docs.qq.com/sheet/DYmRTQXpVY0hNcGls?tab=y6do1j
# > 利用描述文件屏蔽IOS更新提醒（兼容IOS13、14、15）
; https://app.initnil.com/tvOS.mobileconfig


# > 以上全部内容[1-70行]可自行在配置中删除，对使用并无影响

[general]

# > 用于节点延迟测试
server_check_url= http://www.gstatic.com/generate_204
# > 服务器测试超时时间 (毫秒)
server_check_timeout = 3000
# > 用于设置图标显示
profile_img_url=https://github.githubassets.com/images/modules/site/integrators/google.png
# > 用于Check节点IP地址(以下geo_location_checker任选一个即可)
geo_location_checker=disabled
;geo_location_checker=http://ip-api.com/json/?lang=zh-CN, https://raw.githubusercontent.com/KOP-XIAO/QuantumultX/master/Scripts/IP_API.js
# > 功能强大的解析器，用于引用资源的转换
resource_parser_url=https://raw.githubusercontent.com/KOP-XIAO/QuantumultX/master/Scripts/resource-parser.js
# > 下列路径将不经过QuanX的处理
excluded_routes=239.255.255.250/32, 24.105.30.129/32, 185.60.112.157/32, 185.60.112.158/32, 182.162.132.1/32
udp_whitelist=1-442, 444-65535
# > 第一个filter为4g模式开启规则分流，第二个filter为其他wifi下开启规则分流，第三个wifi1修改成你路由器翻墙的wifi名开启直连模式，第四个wifi2为你公司或者其他有路由器翻墙的WiFi名走直连）
# > 默认关闭根据wifi切换模式，如需开启，删除下方的"#"即可
#running_mode_trigger=filter, filter, wifi1:all_direct, wifi2: all_direct
# > dns_exclusion_list
dns_exclusion_list=*.cmpassport.com, *.jegotrip.com.cn, *.icitymobile.mobi, id6.me, *.pingan.com.cn, *.cmbchina.com



[task_local]

# > 请手动添加下面的订阅（流媒体Task订阅集合）
; https://raw.githubusercontent.com/KOP-XIAO/QuantumultX/master/Scripts/UI-Action.json
# > 流媒体解锁查询
event-interaction https://raw.githubusercontent.com/KOP-XIAO/QuantumultX/master/Scripts/streaming-ui-check.js, tag=流媒体解锁查询, img-url=arrowtriangle.right.square.system, enabled=true

0 0-23/1 * * * https://raw.githubusercontent.com/songyangzz/QuantumultX/master/testflight.js, tag=testflight公测监控, img-url=https://qxnav.com/rules/QuantumultX/img/testflight.png, enabled=false
10 9 * * * https://raw.githubusercontent.com/ClydeTime/Quantumult/main/Script/Task/BiliBili.js, tag=B站每日等级任务, enabled=false

[rewrite_local]



[rewrite_remote]
#>>>>>>>>>>>获取Cookie
https://raw.githubusercontent.com/ClydeTime/Quantumult/main/Task/Remote_Cookie.conf, tag=Cookies, update-interval=172800, opt-parser=false, enabled=false
#>>>>>>>>>>>Tiktok
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Quantumult-X/TikTok-US.conf, tag=Tiktok, update-interval=172800, opt-parser=false, enabled=true
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Quantumult-X/TikTok-KR.conf, tag=Tiktok, update-interval=172800, opt-parser=false, enabled=true
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Quantumult-X/TikTok-TW.conf, tag=Tiktok, update-interval=172800, opt-parser=false, enabled=true
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Quantumult-X/TikTok-JP.conf, tag=Tiktok, update-interval=172800, opt-parser=false, enabled=true
#>>>>>>>>>>>解锁会员
https://github.com/ddgksf2013/Rewrite/raw/master/AdBlock/Bilibili.conf, tag=B站去广告+1080P高码率@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true
https://github.com/ddgksf2013/Rewrite/raw/master/UnlockVip/Spotify.conf, tag=Spotify音乐VIP@app2smile, update-interval=86400, opt-parser=false, enabled=true


#>>>>>>>>>>>软件增强
https://github.com/ddgksf2013/Rewrite/raw/master/Function/BaiduCloud.conf, tag=百度网盘倍速@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true
https://raw.githubusercontent.com/zZPiglet/Task/master/UnblockURLinWeChat.conf, tag=微信解锁被屏蔽的URL@zZPiglet, update-interval=86400, opt-parser=false, enabled=true
https://raw.githubusercontent.com/Orz-3/QuantumultX/master/TikTok.conf, tag=Tiktok解锁[需旧版V21]@Orz-3, update-interval=86400, opt-parser=false, enabled=true
https://raw.githubusercontent.com/Orz-3/QuantumultX/master/Netflix_ratings.conf, tag=Netflix评分@Orz-3, update-interval=86400, opt-parser=false, enabled=true


#>>>>>>>>>>>应用去广告
https://github.com/ddgksf2013/Rewrite/raw/master/AdBlock/StartUp.conf, tag=应用去开屏广告2.0@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_plus.qxrewrite, tag=知乎去广告及体验增强@blackmatrix7, update-interval=86400, opt-parser=false, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/smzdm/smzdm_remove_ads.qxrewrite, tag=什么值得买去广告@blackmatrix7, update-interval=86400, opt-parser=false, enabled=true
https://github.com/app2smile/rules/raw/master/module/tieba-qx.conf, tag=百度贴吧去广告@app2smile, update-interval=86400, opt-parser=false, enabled=true
https://github.com/ddgksf2013/Rewrite/raw/master/AdBlock/Applet.conf, tag=微信小程序去广告@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true
https://github.com/ddgksf2013/Rewrite/raw/master/AdBlock/YoutubeAds.conf, tag=油管去广告@DivineEngine, update-interval=86400, opt-parser=false, enabled=true
https://github.com/zmqcherish/proxy-script/raw/main/weibo.conf, tag=微博去广告@zmqcherish, update-interval=86400, opt-parser=false, enabled=true
https://github.com/ddgksf2013/Rewrite/raw/master/AdBlock/Ximalaya.conf, tag=喜马拉雅去广告@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true


#>>>>>>>>>>>通用去广告
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rewrite/QuantumultX/Advertising/Advertising.conf, tag=去广告重写@blackmatrix7, update-interval=86400, opt-parser=false, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Quantumult/Rewrite/General.conf, tag=神机重定向@DivineEngine, update-interval=86400, opt-parser=false, enabled=true


#>>>>>>>>>>>网页优化
https://github.com/ddgksf2013/Rewrite/raw/master/Html/WebAdBlock.conf, tag=影视网站去广告@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true
https://github.com/ddgksf2013/Rewrite/raw/master/Function/Q-Search.conf, tag=Safari超级搜索@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true
https://github.com/ddgksf2013/Rewrite/raw/master/Function/Douban.conf, tag=豆瓣电影网页快捷跳转@@ddgksf2013, update-interval=86400, opt-parser=false, enabled=true

#>>>>>>>>>>>未启用的重写
https://raw.githubusercontent.com/Orz-3/QuantumultX/master/JD_TB_price.conf, tag=比价脚本@Orz-3, update-interval=86400, opt-parser=false, enabled=false
https://github.com/ddgksf2013/Rewrite/raw/master/Function/BilibiliAutoRegion.conf, tag=B站换区[不会配置boxjs请勿勾选]@NobyDa, update-interval=86400, opt-parser=false, enabled=false
https://raw.githubusercontent.com/id77/QuantumultX/master/rewrite/Youtube_CC.conf#out=Hant, tag=油管字幕翻译@id77, update-interval=86400, opt-parser=false, enabled=false
https://raw.githubusercontent.com/chavyleung/scripts/master/box/rewrite/boxjs.rewrite.quanx.conf, tag=BoxJS商店版@chavyleung, update-interval=86400, opt-parser=false, enabled=false

[server_local]



[server_remote]

# > 为避免网易云解锁节点滥用，有需求的请去墨鱼手记公众号回复「网易云」获取

# > 魔法仅供临时使用
https://raw.githubusercontent.com/Jsnzkpg/Jsnzkpg/Jsnzkpg/Jsnzkpg, tag=临时使用, update-interval=3600, opt-parser=true, enabled=false

https://www.ppssqq.com/link/D31rJqB1LSTfusOy?clash=1, tag=大户, update-interval=172800, opt-parser=true, enabled=true
# 节点远程订阅，自行添加
#解锁网易云灰色音乐原订阅地址：https://git.io/JfNq3
https://gist.githubusercontent.com/ddgksf2013/baacafc36c685a0af41e500d9a4773ab/raw/Netease.list, tag=网易云, update-interval=172800, opt-parser=false, enabled=true
https://suo.yt/L7QKHkm, tag=白票, update-interval=172800, opt-parser=true, enabled=true
https://dy1.afi0i.cn/link/GVH1t70g5eJiUSVu?list=shadowrocket, tag=Bee, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Color/Guguex.png, update-interval=172800, opt-parser=false, enabled=true
https://qxnav.com/ss.txt, tag=奇心, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Alpha/Team.png, update-interval=172800, opt-parser=true, enabled=false
https://xn--4gq62f52gdss.com/api/v1/client/subscribe?token=ad6214b31411220d8dad0b1d1ce28207, tag=一元机场, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Alpha/OvO.png, update-interval=172800, opt-parser=false, enabled=true

[dns]

#prefer-doh3
no-ipv6
no-system
server=223.5.5.5
server=119.29.29.29
server=114.114.114.114
#doh-server = https://223.5.5.5/dns-query, https://223.6.6.6/dns-query
server=/*icloud.com/119.29.29.29
server=/*icloud.com.cn/119.29.29.29
server=/*tencent.com/119.29.29.29
server=/*weixin.com/119.29.29.29



[policy]

static=网易云音乐, direct, 公众号墨鱼手记-收费请举报, 🐟网易云解锁1, 🐟网易云解锁2, 🐟网易云解锁3, 🐟网易云解锁4, 🐟网易云解锁5, 🐟网易云解锁6, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Color/Netease_Music_Unlock.png
static=全球加速, 自动选择, 香港节点, 台湾节点, 日本节点, 狮城节点, 美国节点, proxy, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Color/Global.png
static=苹果服务, direct, 自动选择, 香港节点, 台湾节点, 美国节点, 日本节点, 狮城节点, proxy, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Color/Apple.png
static=港台番剧, direct, 自动选择, 香港节点, 台湾节点, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Color/StreamingSE.png
static=国际媒体, 香港节点, 自动选择, 台湾节点, 日本节点, 美国节点, 狮城节点, proxy, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Color/Streaming.png
static=兜底分流, 全球加速, direct, 自动选择, 香港节点, 台湾节点, 日本节点, 狮城节点, 美国节点, proxy, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Color/Final.png

#默认设置10分钟测速一次

url-latency-benchmark=自动选择, server-tag-regex=^(.(?!(网易|墨鱼)))*$, check-interval=600, tolerance=0, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Color/Auto.png
url-latency-benchmark=香港节点, server-tag-regex=(?=.*(港|HK|(?i)Hong))^((?!(台|日|韩|新|美)).)*$, check-interval=600, tolerance=0, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Color/HK.png
url-latency-benchmark=台湾节点, server-tag-regex=(?=.*(台|TW|(?i)Taiwan))^((?!(港|日|韩|新|美)).)*$, check-interval=600, tolerance=0, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Color/TW.png
url-latency-benchmark=日本节点, server-tag-regex=(?=.*(日|JP|(?i)Japan))^((?!(港|台|韩|新|美)).)*$, check-interval=600, tolerance=0, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Color/JP.png
url-latency-benchmark=狮城节点, server-tag-regex=(?=.*(新|狮|獅|SG|(?i)Singapore))^((?!(港|台|日|韩|美)).)*$, check-interval=600, tolerance=0, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Color/SG.png
url-latency-benchmark=美国节点, server-tag-regex=(?=.*(美|US|(?i)States|American))^((?!(港|台|日|韩|新)).)*$, check-interval=600, tolerance=0, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Color/US.png



[filter_remote]

https://github.com/ddgksf2013/Filter/raw/master/NeteaseMusic.list, tag=解锁网易云音乐, force-policy=网易云音乐, update-interval=172800, opt-parser=false, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Unbreak.list, tag=规则修正, force-policy=direct, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Guard/Advertising.list, tag=广告拦截, force-policy=reject, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Guard/AdvertisingPlus.list#type=domain-set, tag=广告拦截, force-policy=reject, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/NobyDa/Script/master/Surge/AdRule.list, tag=广告拦截, force-policy=reject, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/app2smile/rules/master/rule/tieba-ad-qx.list, tag=贴吧广告, force-policy=reject, update-interval=172800, opt-parser=false, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Guard/Hijacking.list, tag=运营劫持, force-policy=reject, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Guard/Privacy.list, tag=隐私保护, force-policy=reject, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/QuantumultX/WeChat/WeChat.list, tag=微信直连, force-policy=direct, update-interval=172800, opt-parser=false, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/StreamingMedia/Video/TikTok.list, tag=海外抖音, force-policy=全球加速, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Extra/Google/GoogleVoice.list, tag=Google Voice, force-policy=美国节点, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/StreamingMedia/Region/HK.list, tag=流媒体HK, force-policy=香港节点, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/StreamingMedia/Region/TW.list, tag=流媒体TW, force-policy=台湾节点, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/StreamingMedia/Region/JP.list, tag=流媒体JP, force-policy=日本节点, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/StreamingMedia/Region/US.list, tag=流媒体US, force-policy=美国节点, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/StreamingMedia/Streaming.list, tag=国际媒体, force-policy=国际媒体, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/StreamingMedia/StreamingSE.list, tag=港台番剧, force-policy=港台番剧, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Global.list, tag=全球加速, force-policy=全球加速, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Extra/Apple/Apple.list, tag=苹果服务, force-policy=苹果服务, update-interval=172800, opt-parser=true, enabled=true
https://raw.githubusercontent.com/VirgilClyne/GetSomeFries/main/ruleset/ASN.China.list, tag=国内网站, force-policy=direct, update-interval=172800, opt-parser=true, enabled=true



[filter_local]

host-suffix, u3.ucweb.com, reject

# > 知乎AD屏蔽,以下规则请放置在filter_local最顶部
DOMAIN,118.89.204.198,REJECT
DOMAIN-KEYWORD,118.89.204.198,REJECT
IP-CIDR,118.89.204.198/32,REJECT
DOMAIN,appcloud2.in.zhihu.com,REJECT
HOST,mqtt.zhihu.com,reject
HOST,sugar.zhihu.com,reject
USER-AGENT,AVOS*,REJECT

# > B站自动换区
ip-cidr, 203.107.1.1/24, reject

# > local
ip-cidr, 10.0.0.0/8, direct
ip-cidr, 127.0.0.0/8, direct
ip-cidr, 172.16.0.0/12, direct
ip-cidr, 192.168.0.0/16, direct
ip-cidr, 224.0.0.0/24, direct
ip-cidr, 182.254.116.0/24, direct
geoip, cn, direct
final, 兜底分流



[http_backend]

# > Boxjs设置，改为使用http backend方式，访问地址改为http://127.0.0.1:9999，更新配置后请长按风车-更新，然后重启代理
# > BoxJs相关教程参考 https://chavyleung.gitbook.io/boxjs/
https://raw.githubusercontent.com/chavyleung/scripts/master/chavy.box.js, host=boxjs.com, tag=BoxJS, path=^/, enabled=false



[mitm]

skip_validating_cert = true
force_sni_domain_name = false

hostname = -consumer.fcbox.com, -*huami.com, -weather-data.apple.com, -*amemv.com, -*snssdk.com, -www.google.com

# 🟢 passphrase和p12代为证书&主机名部分, 更新配置前可把旧的配置中passphrase和p12代码拷贝下来, 导入新的配置文件把内容粘贴在对应位置就不用重装证书

passphrase = 6EE87080
p12 = MIIKsQIBAzCCCnsGCSqGSIb3DQEHAaCCCmwEggpoMIIKZDCCBL8GCSqGSIb3DQEHBqCCBLAwggSsAgEAMIIEpQYJKoZIhvcNAQcBMBwGCiqGSIb3DQEMAQYwDgQIggxuPEeMwWsCAggAgIIEeCSlNyCmVHFvbNRWHUY0GGqyxxoIxBbTWWzvyD6rYk2pjbQbe47CHfK+Mw3bWOKY7lmisLcCjrLkuunDC6oBtroJTMI1Jvc1blQAWe02ppaTRzFGNolCV3Sb2Wb9E4n2VjrRmp+Uy/PYEYfNxXeIlw8f3zg6vmGD05VEt68Og3TL6fY0VOuffGsoQIaOmJTEKMcx/mBs0SNhD3xMMlbK6hyHCtHwjPMaV1USgJso+u6GvT8OoBJsf/ugGp5+XWPQzHt2fGMFS02gzFY1gLgQOksXGsJnS39yVSvKiksrKfRrhs8jSEbpchFTaUQL7JoLu+F3054fEPEcaWMbRmqYzk4srvJuBD59i9IVLtGQPsMjn/cMMoslWDxJZ9nYLX7KYZNuuZdZRUtgbSxBa/FQasDMpSBXEedRfGAPEZvDJPsODeWtlhqHrGbqhqR1Iz4ypAhOIpsFBfXTSgM7Wmn/DO9PLhlreHSTMwk7LnRUS0tXM2ddViamrG19iVhmwx9GUa4oXlgXHt7e5ykdxxb8y6io4MGQ0tsKh/TjA5VdTDdZMUsJBMdqF0v5+HRFwcbFxWcT2c/w/qDcPdxnQ6D6gvN5rT6GEzRwDiQdYmgPSontZPVobi0/ru25z9fPfEL+XhpvZmudtCQ/NW2N7or17/kAUrI34h+SVl1iUP4Unb3EMPUFvH+FQP9f0JMzpYH68M01x5DC2hwpkB3vhVl6vJozRh6KbTyKfU7KGk6Z6Nd0+ZnEIhiVTOomYIxfyH4B0oqVdtRdjlitQmlQoUTRNGRrXDfASIlGpKPwis6OWlA8RHOw92pb6fRcnBo5j8IVacJPMXCgmImsEJJulXbIQtTctIeXy9GKK48Da17kfPOpDtqkm28lFZWMvjsgWeF9vQu8YAXDQiLeApNyHfLuTZQj+3G5nFN4aCwaLYBiILEDNcNMYCOwx0eSXlcyrJh9/EyDIScJK5PPk7wPypzgZy6FNAmNcwyWCAP5wYwGRahNFvu872YLOwqW1c0jXSpuMjx9U/TpGYXWeeL4cP+ycrPey8JtjdP+FmtATmU4+eOlQm10+TO/tdhfMGCtVrA8kSWhWNkalrqQV/rBvmMVhq1GHbcr3+83sea3TE5//G3XC9gYQ0XghAHhdMgGZcD+J+0f3qoZoT2lqIlWq5z9RaiWLEw+IUmH5iAjDGItk2Nqz5G8LyqyT5mkuAUkNuVlRS4yFpDw4l8ws0di3l1+KAilm4AZN1onbJT8iBXfOwm7F9EBmvDv9Jaq7IESG42EHmis2gYW1n2cEBVfPSfyUD6r+afaXf5tBFBoDeylw4P/f6/VL/ZxgIj50k2hnFHcPiXNSqbCsjjwfwwFlFfIHtrA3xPiSVsqWp3+92wNDEgaY7UGfZn3ficEH1G0gaug7ZGKJi9WZCXRhjS3NHa6grThP7ht/aoRGuee2QaM+U6fD20eNrkkhzFVYH2moPJA+YmeOSLi5YWV5MUD/kVcTsY2NjJRlpWIHeKFCjIJKeB6JF44iex+hLcwggWdBgkqhkiG9w0BBwGgggWOBIIFijCCBYYwggWCBgsqhkiG9w0BDAoBAqCCBO4wggTqMBwGCiqGSIb3DQEMAQMwDgQIMdg5ojjYxXUCAggABIIEyPaR9gINFi/Z7NA/6WNqtBAeE/x4NiqKt23Qjbrq8KSKsXOIlpJuq5PZod5V10LF0MG/Y7acBktHLGYgqaXqI9GB4mXE3LP4ZjqhmYtSlhTzvFyS6QLUVhGCW6vaPKTCxQdZuBy+K5sR6ll4YrhdJMXs3qLFgH9XnYqUsypVpTc7YwbU0lpI8MMLDBVIXUunQCjcx2nI5mzL4JG5oFp6UDAd+y3RTHB/USVWfLIaYQM2j247ynMkKxY/a5LZGuClGe5FDsbe7cBET7VJUiSrL70d3zEiw2BYzPR/gfGQfhFFvH9NKB5gvUr43YMH1DaYzsj0aC9hCM995hZO9A7nmBSRbhfHpfumZBmpatRd6Q2EodrLg/qKaJ6GpTuWMAAKyXd11qWyVgHMJaP3fnOwgwArfmSF0eKTl+T7aPyNIB4TVHIkq0nckLWLljWhQfDj+Fj0F1KkLCeHZvnJ2D/IAEZ3PqX9YliPmgYlwgd9J05Erj65kLIBDjG7d0VCZ+lWx/WZcl4ULc1A16fS6SFoShfkUMXVaIAlX66PFv4CtybwEnn3wBeqzUE9TNkde9PLlcAcR/9RBv0qRTtI0Y2ZMXPOLufjwNldaJ1T1WNuji39vGo6sJaQ/47hU3A2DdfZ2kmAzjXiLHMq4OXwAC2vjvnZxevTVkjmLH63awrb35jjuNoz4KUGOMVrRIQbN9xDfLVBAbzGkv4TnwFzQ4rFDyNEkrmdPuWfDCx6GvZ3zjubROI4WFCHqyJujd+dfrqv9nSiUSrAjGTaLNS7vc/56b3sWI0v75lCmFtUD44F2sp8MFXIDIzBkIgpERhKIiI2mhPn7MexMXA+61ie86s7b/WtLnV/Q0F0YBsNDGEWa7D5G9rXYrlq75W1LfxQ4Nb+0PgheU3FJrWSecQ1r2kVa5DM1EVM33IVp8P2AIdWSleB1Xu2a2s2XbsDbnqiUdtOtI26/1qmHQ1W01KcZwYK/8uVJGdCkrjakMAHKbcQ1IvSts2DblrY1fTrBQ7EQcEh2fxN7Qb23/gNwIJLXByvLNqCD6aSMJUPqWRmC/1ft9OFpmlYkCnTncteTe2d/1WQg4UiMMJXpok+zOfWFUHN203AyhnAM/V38S2Ve69QCSii8b2HICjdvmgRMwCDs0HciS0SH3UsMHmN5/dSLtcmFrxJ2c8hEjciJ8lybu3jkeLMAmfJJD+Xj1t2vfze2jz/OjcveIXTelFwFEB/wIDvhA+R1EZqn3UQdsnddmsLKAFJ2pLkmb29yE/v69LAJLZTUlJAVg4Ug42yp8x5UkiLNS+AseQ5WafkISL7Gsb+jQ7VGH1N+G2YyIr82afB9O4p+hccPVeGF+njvqPSqZvmO7QIQaHClCuYlmA2YUmvTfU3MzmPO6DFIX0kArZw4dzcuqViDdjnOoKJXkF9SQ1mqEUFUy5ytuE/97qk6mIGUYbp3TBEwRc7w2nf3Z1M3s34WXXIVCSFW8+IKHIWFNOMB9J7pWcSgUv9a7XQs+l0kPFTIg+61y+9HilJFpL0MwHbeZJDTY4/uhbK5w+8EezutxirdxT+SJBGZshxNDURMzYGEeguWVjCOgsRvlyFQqrvrJHHwTgl4K8TPIZFQLR1FuFN7GJsqvXYXDGBgDAjBgkqhkiG9w0BCRUxFgQUddFpZDiyl6kqVJrjnoPzAES5Ge0wWQYJKoZIhvcNAQkUMUweSgBRAHUAYQBuAHQAdQBtAHUAbAB0ACAAWAAgAEMAQQAgADYARQBFADgANwAwADgAMAAgACgAOQAgAE4AbwB2ACAAMgAwADIAMAApMC0wITAJBgUrDgMCGgUABBQ6GXjcpbU/+vRfIxHCAQVAETM/RgQI8AfaUxmWzuA=