$(function(){
	// スライド幅の登録
	var slide_width = $('#slider .slideFrame .slide').width();

	// スライドの最大数を登録
	var slide_count = $('#slider .slideFrame .slide').length;

	// スライドが収まるように横幅を設定
	$('#slider .slideFrame .slideSet').width(slide_width * slide_count);

	// 初期位置の設定
	var current = 1;

	// オートスライド true/false
	var auto_mode = false;

	// 切り替えアニメーション時間（秒数/1000）
	var animate_time = 500;

	// 切り替えアニメーションのイージング
	var animate_easing = 'swing';

	// 待機時間（秒数/1000）
	var auto_interval = 0;

	// サムネイルの自動生成 true/false
	var thumbnail_mode = true;

	// サムネイル画像のサイズを設定
	var thumbnail_w = 60;
	var thumbnail_h = 60;

	// 機能が true だったらサムネイルを自動生成
	if(thumbnail_mode){
		$('#slider').append('<div id="thumbnail"><div class="thumbnailSet"></div></div>');

		// スライドの数と同様のサムネイルを生成
		$('#slider .slide').each(function(){
			// 元画像からパスを取得し「t」を付けて整形
			var src = $(this).find('img').attr('src');

			// 画像を生成する
			$('.thumbnailSet').append('<li><a href="javascript: void(0);"><img class="thumbnail" src="'+src+'" width="'+thumbnail_w+'" height="'+thumbnail_h+'" alt="内装のサムネイル" /></a></li>');
		});

		//サムネイル領域の調整
		var thumbnail_count = $('.thumbnailSet .thumbnail').length;
		var thumbnail_area_width = (thumbnail_w * thumbnail_count) + (40 * thumbnail_count);
		if(thumbnail_area_width > slide_width) {
			thumbnail_area_width = slide_width;
		}
		thumbnail_area_width = thumbnail_area_width.toString(10) + "px";
		document.getElementById("thumbnail").style.width = thumbnail_area_width;

		$('.thumbnailSet a').click(function(){
			// オートスライドを一時停止
			stopAuto();

			// 選択したサムネイルの画像までスライド
			current = $('.thumbnailSet a').index(this) + 1;
			setting();
		});
	}

	var stopIntereval = 1;
	var stopAuto = function(){
		if(auto_mode){
			// オートスライド停止
			clearInterval(autoTimer);

			// スライド完了後、オートスライド再実行
			clearTimeout(stopIntereval);
			stopIntereval = setTimeout(function(){
				startAuto();
			}, animate_time);
		}
	}

	var setting = function(mode){
		// ロード時の実行とクリックイベントで処理を振り分け
		if(mode == 'onload'){
			$('#slider .slideFrame .slideSet').css({
				left: -slide_width * (current-1)
			});
		}else{
			$('#slider .slideFrame .slideSet').stop().animate({
				left: -slide_width * (current-1)
			}, animate_time, animate_easing);
		}

		// サムネイルがある場合だけカレントクラスを付与
		if(thumbnail_mode){
			$('.thumbnailSet a').removeClass('current').eq(current-1).addClass('current');
		}
	}

	setting('onload');
});
