# Sushi
## 参考：[Swift で Touch Bar 開発 - 今更だけど寿司を回す](http://appleengine.hatenablog.com/entry/2017/01/24/020033)
躓いたところ：アニメーションさせるところで全く動かず、sushiView.wantsLayer = trueにしたことで解決。Layer Backed Viewにしないとlayerのプロパティにアクセスできないことが原因だった。
