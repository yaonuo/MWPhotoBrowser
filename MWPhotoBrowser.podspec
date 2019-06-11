Pod::Spec.new do |s|

  s.name = 'MWPhotoBrowser'
  s.version = '2.1.2'
  s.license = 'MIT'
  s.summary = 'A simple iOS photo and video browser with optional grid view, captions and selections. But this is an unoffical repo that forked from MWPhotoBrowser. Just update the dependency library version.'
  s.description = <<-DESCRIPTION
                  MWPhotoBrowser can display one or more images or videos by providing either UIImage
                  objects, PHAsset objects, or URLs to library assets, web images/videos or local files.
                  The photo browser handles the downloading and caching of photos from the web seamlessly.
                  Photos can be zoomed and panned, and optional (customisable) captions can be displayed.
                  DESCRIPTION
  s.screenshots = [
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser1.png',
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser2.png',
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser3.png',
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser4.png',
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser5.png',
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser6.png'
  ]

  s.homepage = 'https://github.com/yaonuo/MWPhotoBrowser'
  s.author = { 'Michael Waterfall' => 'michaelwaterfall@gmail.com' }
  s.social_media_url = 'https://twitter.com/mwaterfall'

  s.source = {
    :git => 'https://github.com/yaonuo/MWPhotoBrowser.git',
    :tag => '2.1.2'
  }
  s.platform = :ios, '7.0'
  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MWPhotoBrowser' => ['Pod/Assets/*.png']
  }
  s.requires_arc = true

  s.frameworks = 'ImageIO', 'QuartzCore', 'AssetsLibrary', 'MediaPlayer'
  s.weak_frameworks = 'Photos'

  # 更新库参考教程：https://www.jianshu.com/p/7e56ec72aeff

  # 2019-06-10 MBProgressHUD 最新为 1.1.0
  s.dependency 'MBProgressHUD', '~> 1.1.0'

  # 2019-06-10 DACircularProgress 最新为 2.3.1
  s.dependency 'DACircularProgress', '~> 2.3.1'

  # SDWebImage
  # 3.7.2 contains bugs downloading local files
  # https://github.com/rs/SDWebImage/issues/1109
  # s.dependency 'SDWebImage', '~> 3.7', '!= 3.7.2'

  # 2019-06-10 SDWebImage 最新为 5.0.0
  s.dependency 'SDWebImage', '~> 5.0.0'

end
