$(function(){  /* 読み込みが完了したら実行 viewDidLoad */

	$('.tab').prepend('<div class="menu"></div>');  /* tab内の先頭に追加 */
	$('.menu').prepend($('.tabMenu'));  /* menuの中にtabMenu要素を移動 */
	$('.tabMenu').wrapInner('<a href="javascript: void(0);"></a>');  /* tabMenuの子要素を指定の要素で囲む */

/*  上記によって最終的に↓のように変更される
<div class="tab">
	<div class="menu">
		<h4 class="tabMenu"><a href="javascript: void(0);">お知らせ</a></h4>
		<h4 class="tabMenu"><a href="javascript: void(0);">行事案内</a></h4>
		<h4 class="tabMenu"><a href="javascript: void(0);">ブログ</a></h4>
	</div>
略...
</div>
*/

	var current = 0;
	var show = $('.tab .tabBox').eq(current);  /* showは1番目のtabBox */
	$('.tab .tabBox').not(show).hide();  /* show以外を非表示 */
	$('.tab .tabMenu').eq(current).find('a').addClass('current');

	$('.menu a').click(function(){  /* クリックされたとき */
		$('.tab .tabBox').hide().eq($('.menu a').index(this)).show();  /* クリックされたやつを表示 */
		$('.tab .tabMenu a').removeClass('current');  /* currentクラスの付け替え */
		$(this).addClass('current');
		return false;  /* <a href="javascript: void(0);">を指定しないなら必須 */
	});
});