// $("#researchForm").append("<span>＋ クリックで表示<span>");
$(".formTitle").addClass("table_close");
$("#researchForm").click(function(){
  var heightSummary = $(".formTitle").height();
  if (heightSummary == 0) {
    $(".formTitle").removeClass("table_close");
    $(".formTitle").addClass("table_open");
    // $('#researchForm').each(function(){
    //   var txt = $(this).html();
    //   $(this).html(
    //     txt.replace('＋ クリックで表示','－ クリックで非表示')
    //   );
    // });
  } else {
    $(".formTitle").removeClass("table_open");
    $(".formTitle").addClass("table_close");
    // $('#researchForm').each(function(){
    //   var txt = $(this).html();
    //   $(this).html(
    //     txt.replace('－ クリックで非表示','＋ クリックで表示')
    //   );
    // });
  }
});
