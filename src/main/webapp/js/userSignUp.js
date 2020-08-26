$("#birth").blur(function() { //自動計算年齡
			userbirth = document.getElementById("birth").value;
			let today = new Date();
			let tyear = today.getFullYear();
			let uyear = userbirth.split("-")[0]
			document.getElementById("age").value = (tyear - uyear);
			console.log(document.getElementById("age").value);

			if (document.getElementById("age").value < 20) //年齡不滿20歲隱藏當買家資格
			{
				document.getElementById("seller").hidden = true;
				document.getElementById("seller_word").hidden = true;
			} else {
				document.getElementById("seller").hidden = false;
				document.getElementById("seller_word").hidden = false;
			}
		})

		$("#password")
				.blur(
						function() { //驗證密碼
							let pwdrule = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[~!@#$%^&*()_+`\-={}\[\]:";'<>?,.\/]).{4,16}$/;
							;
							let result = pwdrule.test($("#password").val());
							console.log($("#password").val());
							if (result == false) {
								$("#pwdsure").html("格式不符或空白")
							} else {
								$("#pwdsure").html("成功")
							}

						})

		$("#idnumber").blur(function() {
			if (checkID(this.value)) {
				$("#sureidnumber").text("正確");
			} else {
				$("#sureidnumber").text("驗證錯誤");
			}
		})

		function checkID(id) { //驗證身分證字號
		tab = "ABCDEFGHJKLMNPQRSTUVXYWZIO"
		A1 = new Array(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2,
				2, 3, 3, 3, 3, 3, 3);
		A2 = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6, 7, 8,
				9, 0, 1, 2, 3, 4, 5);
		Mx = new Array(9, 8, 7, 6, 5, 4, 3, 2, 1, 1);

		if (id.length != 10)
			return false;
		i = tab.indexOf(id.charAt(0));
		if (i == -1)
			return false;
		sum = A1[i] + A2[i] * 9;

		for (i = 1; i < 10; i++) {
			v = parseInt(id.charAt(i));
			if (isNaN(v))
				return false;
			sum = sum + v * Mx[i];
		}
		if (sum % 10 != 0)
			return false;
		return true;
	}
		$("#submit").click(function() {

		});

		erTWZipcode({
			defaultCountyText : "請選擇",
			defaultDistrictText : "請選擇"
		});