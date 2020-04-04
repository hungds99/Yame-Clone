$(document).ready(function() {
		var suasp = document.querySelectorAll('#btn-sua');
		$('#capnhatsanpham').hide();
		var spid;
		$(suasp).click(function() {
			spid = $(this).attr('data-id');
			console.log(spid);
			$.ajax({
				url: "/YameStore/quanly/laysanphambyid",
				type: "POST",
				data: {
					spid : spid
				},
				success: function(value) {
					$('#tensanpham').val(value.tenSanPham);
					$('#giatien').val(value.giaTien);
					$('#mota').val(value.moTa);
					$('#andanhmuc').hide();
					$('#anhinhanh').hide();
					$('#themmoisanpham').hide();
					$('#capnhatsanpham').show();
				},
				error: function(er) {
					console.log(er);
				}
			});
		});
		$('#capnhatsanpham').click(function() {
			$.ajax({
				url: "/YameStore/quanly/capnhatsanpham",
				type: "POST",
				data: {
					spid : spid,
					tensanpham: $('#tensanpham').val(),
					giatien: $('#giatien').val(),
					mota : $('#mota').val()
				},
				success: function(value) {
					location.reload();
					localStorage.clear();
				},
				error: function(er) {
					console.log(er);
				}
			});
		})
	});