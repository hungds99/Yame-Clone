$(document).ready(function() {
	$('#themmau').click(function() {
		var tenMau = $('#tenMaumoi').val();
		$.ajax({
			url: "/YameStore/quanlychitiet/themmau",
			type: "POST",
			data: {
				tenMau : tenMau
				},
			success: function(value) {
				location.reload();
			}
		});
	});
	
	
	$('#themsize').click(function() {
		var size = $('#sizemoi').val();
		$.ajax({
			url: "/YameStore/quanlychitiet/themsize",
			type: "POST",
			data: {
				size : size
				},
			success: function(value) {
				location.reload();
			}
		});
	});
	
	$('#themchitietmoi').click(function() {
		var sanphamID = $('#tenSanPham').attr('data-spID');
		var mauID = $('#chonmau').val();
		var sizeID = $('#chonkichthuoc').val();
		var soLuong = $('#chonsoluong').val();
		var ngayNhap = $('#chonngaynhap').val();
		$.ajax({
			url: "/YameStore/quanlychitiet/themchitiet",
			type: "POST",
			data: {
				sanphamID : sanphamID,
				mauID : mauID,
				sizeID : sizeID,
				soLuong : soLuong,
				ngayNhap : ngayNhap
				},
			success: function(value) {
				location.reload();
			}
		});
	});
	
	var xoact = document.querySelectorAll('#xoact');
	
	$(xoact).click(function() {
		var chitietID = $(this).attr('data-id');
		$.ajax({
			url: "/YameStore/quanlychitiet/xoachitiet/"+chitietID,
			type: "GET",
			success: function(value) {
				location.reload();
			}
		});
	});
	
})