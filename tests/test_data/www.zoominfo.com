# /robots.txt file for /www.zoominfo.com
#


User-agent: *

Disallow: /register
Disallow: /verifyRegister
Disallow: /verifyRegisterConfirm
Disallow: /clearRegister
Disallow: /resendVerification
Disallow: /accountWelcome
Disallow: /account
Disallow: /myAccount
Disallow: /needVerify
Disallow: /myaccount
Disallow: /profile
Disallow: /profileReferences
Disallow: /claim
Disallow: /update
Disallow: /blank
Disallow: /ie6
Disallow: /siteStatus
Disallow: /appExpired
Disallow: /appSuspended
Disallow: /notAuthorized
Disallow: /logout
Disallow: /resetPassword
Disallow: /changePassword
Disallow: /securityCode
Disallow: /common
Disallow: /CachedPageMain
Disallow: /CachedPageLoading
Disallow: /embeddedcontent
Disallow: /business/administrator
Disallow: /usercenter
Disallow: /CachedPageMain
Disallow: /CachedPageLoading
Disallow: /k/
Disallow: /blog/tag/
Disallow: /CachedPageHeader
Disallow: /business/zoominfo-unsubscribe
Disallow: /search/company
Disallow: /s/css
Disallow: /s/common/css
Disallow: /anura
Disallow: /*/undefined
Disallow: /undefined
Disallow: /api
Disallow: /assets
Allow: /c/undefined



User-agent: NextGenSearchBot
User-agent: ZoomBot
User-agent: ZoominfoBot

Disallow: /company-directory
Disallow: /directory
Disallow: /people_directory
Disallow: /people
Disallow: /people-search
Disallow: /location-search
Disallow: /p
Disallow: /c




User-agent: Yandex
User-agent: moget
User-agent: ichiro
User-agent: NaverBot
User-agent: Yeti
User-agent: Baiduspider
User-agent: Baiduspider-video
User-agent: Baiduspider-image
User-agent: sogou spider
User-agent: YoudaoBot
User-agent: MJ12bot
User-agent: DJEcoBot
Disallow: /

