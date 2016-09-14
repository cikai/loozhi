$(document).ready(function() {
  $("#getBusline").on("click", function() {
    getLineInfo();
  });
});

function getLineInfo() {
  $.ajax({
    url : '/loozhi/buslineServlet',
    data : "city=" + $("#city").val() + "&line=" + $("#line").val(),
    method : 'get',
    dataType : 'json',
    success : function(data) {
      console.log(data);
      $("#name").html("线路名称：" + data.result[0].name);
      $("#front").html("始发站：" + data.result[0].front_name);
      $("#terminal").html("终点站：" + data.result[0].terminal_name);
      $("#price").html("票价：" + data.result[0].total_price + "元");

      var stations = "";
      for (var i = 0; i < data.result[0].stationdes.length; i++) {
        stations += "<span>" + data.result[0].stationdes[i].stationNum + " · "
            + data.result[0].stationdes[i].name + "</span>";
      }
      $("#stations").html(stations);
    }
  });
}
