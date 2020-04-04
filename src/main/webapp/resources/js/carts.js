$(document).ready(function() {
	$('.btn-cart').click(function() {
		var spID = $("#tenSanPham").attr("data-spID");
		var mauID = $(this).closest("tr").find(".mauSanPham").attr("data-mauID");
		var sizeID = $(this).closest("tr").find(".sizeSanPham").attr("data-sizeID");
		var tenSanPham = $("#tenSanPham").text();
		var giaTien = $("#giaTien").attr("data-giaTien");
		var tenMau = $(this).closest("tr").find(".mauSanPham").text();
		var size = $(this).closest("tr").find(".sizeSanPham").text();
	
		var giohang = {
				"spID": spID,
				"mauID": mauID,
				"sizeID": sizeID,
				"tenSanPham": tenSanPham,
				"giaTien": giaTien,
				"tenMau": tenMau,
				"size": size
		};
		
		$.ajax({
			/*url: "/YameStore/api/themgiohang/",*/
			url: "/YameStore/api/themgiohang/",
			type: "GET",
			data: giohang,
			success: function(value) {
				$('#i-cart').text(" | " + value);
			}
		});
	});
	
	$('#formABC').submit(function(e) {
		e.preventDefault();
		 $(".btn-dathang").attr("disabled", true);
	});
	
})