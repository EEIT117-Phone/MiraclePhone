<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>客服專區</title>
<link href="<c:url value='/css/contact.css' />" rel="stylesheet">
<script src="<c:url value='/js/contact.js' />"></script>
</head>

<body>
	<main role="main">
		<form:form servletRelativeAction="/contact/customer" method="GET"
			modelAttribute="customerVo">

			<div class="server-main">
				<div class="col-4">
					<div class="list-group" id="list-tab" role="tablist">
						<a class="list-group-item list-group-item-action active"
							id="list-home-list" data-toggle="list" href="#list-home"
							role="tab" aria-controls="home">客服留言</a> <a
							class="list-group-item list-group-item-action"
							id="list-profile-list" data-toggle="list" href="#list-profile"
							role="tab" aria-controls="profile">常見問題</a> <a
							class="list-group-item list-group-item-action"
							id="list-settings-list" data-toggle="list" href="#list-settings"
							role="tab" aria-controls="settings">會員權益聲明</a>
					</div>
				</div>
				<div class="row">
					<div class="col-8">
						<div class="tab-content" id="nav-tabContent">
							<div class="tab-pane fade show active" id="list-home"
								role="tabpanel" aria-labelledby="list-home-list">

								<!-- Customer Msg Start -->
								<ul class="nav nav-tabs" id="myTab" role="tablist">
									<li class="nav-item" role="presentation"><a
										class="nav-link active" id="home-tab" data-toggle="tab"
										href="#home" role="tab" aria-controls="home"
										aria-selected="true">客服留言</a></li>
									<li class="nav-item" role="presentation"><a
										class="nav-link" id="profile-tab" data-toggle="tab"
										href="#profile" role="tab" aria-controls="profile"
										aria-selected="false">問答紀錄</a></li>
								</ul>
								<div class="tab-content" id="myTabContent">
									<div class="tab-pane fade show active" id="home"
										role="tabpanel" aria-labelledby="home-tab">
										<br> <b>問題類別: </b>
										<br>
										<br>
										<div>
											<select id="question" name="selectq1"
												onchange="changequestion(this.selectedIndex)" class="bot"></select>
											<select id="question-sector" name="selectq2" class="bot"></select>
										</div>
										
										<div>
				<!-- Customer Msg End -->

											<br>

											<div>
												<b>問題內容: </b><br> <br>
												
												<textarea id="textarea-ckeck" name="question" placeholder="請輸入內容(限500字)" maxlength="500" cols="85" rows="15" class="textarea"></textarea>
												<br>
											</div>
											<br>
											<div>
												<form>
													<button type="submit" class="btn btn-primary" id="btn">送出</button>
												</form>
												<br>
												<br>
											</div>
										</div>
									</div>

									<div class="tab-pane fade" id="profile" role="tabpanel"
										aria-labelledby="profile-tab">
										<table class="table table-hover">
											<thead>
												<tr>
													<th scope="col">#</th>
													<th scope="col">歷史紀錄</th>
													<th scope="col">日期</th>
													<th scope="col">問題</th>
													<th scope="col">回答</th>
												</tr>
												
											</thead>
											<tbody id="profile-tab-table-tbody">
											</tbody>
										</table>
									</div>
								</div>
							</div>
							
							<div class="tab-pane fade" id="list-profile" role="tabpanel"
								aria-labelledby="list-profile-list" >
								
								
			<!-- Customer Q&A Start -->
								<div class="accordion" id="accordionExample">
									<b>常見問題</b>
									<hr>
									<div class="card">
										<div class="card-header" id="headingOne">
											<h2 class="mb-0">
												<button class="btn btn-link btn-block text-left"
													type="button" data-toggle="collapse"
													data-target="#collapseOne" aria-expanded="true"
													aria-controls="collapseOne">訂單紀錄</button>
											</h2>
										</div>

										<div id="collapseOne" class="collapse show"
											aria-labelledby="headingOne" data-parent="#accordionExample">
											<div class="card-body">
												<b>是否訂購成功</b><br>
												訂單成立後，系統會發送『訂單確認』電子郵件給您，確認訂單詳細資料，包括訂購明細和收件資訊。<br> <br>
												<b>如何追蹤訂單進度</b><br> 有關商品的出貨進度，可在『會員專區>訂單歷史紀錄』中查詢。
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingTwo">
											<h2 class="mb-0">
												<button class="btn btn-link btn-block text-left collapsed"
													type="button" data-toggle="collapse"
													data-target="#collapseTwo" aria-expanded="false"
													aria-controls="collapseTwo">客戶隱私權</button>
											</h2>
										</div>
										<div id="collapseTwo" class="collapse"
											aria-labelledby="headingTwo" data-parent="#accordionExample">
											<div class="card-body">
												<b>客戶帳號、密碼與安全</b><br><br>
												一、如客戶透過本網站註冊為會員，會員帳號為信箱帳號，必須詳實填寫。客戶註冊時必須填寫確實之個人資料，若發現有不實登錄時，本公司得暫停或終止您的客戶資格，若有違反中華民國相關法律，亦將依法追究。
												<br><br>
												二、客戶應該妥善保管密碼，不可以將密碼洩露或提供給他人知道或使用；以同一個客戶帳號和密碼使用本服務所進行的所有行為，都將被認為是該客戶本人的行為，應由該客戶依法負責。
												<br><br>
												三、客戶如果發現或懷疑有第三人使用其客戶帳號或密碼，應該立即通知本公司，本公司於知悉後將立即暫停該帳號所生交易之處理及後續利用。但客戶於通知前依法應負之法律上責任並不因此通知而免除。
												<br><br>
												<b>客戶交易</b><br><br>
												一、商品交易頁面呈現之商品名稱、價格、內容、規格、型號及其他相關資訊，皆為您與本公司締結契約之一部分。
												<br><br>
												二、您同意依據本公司所提供之確認商品數量及價格機制進行下單。本公司對於下單內容，得於下單後二個工作日內附正當理由拒絕，但客戶已付款者，視為契約成立。
												<br><br>
												三、依據消費者保護法第19條第1、2、3項規定：「Ⅰ．通訊交易或訪問交易之消費者，得於收受商品或接受服務後七日內，以退回商品或書面通知方式解除契約，無須說明理由及負擔任何費用或對價。Ⅱ．但通訊交易有合理例外情事者，不在此限。Ⅲ．前項但書合理例外情事，由行政院定之。」因此契約成立並於您收受商品後，除非政府另有公告優先適用其他法令，原則上您享有前述消費者保護法第19條第1項解除契約之權利，如有退貨需求，請參閱本公司網站我的帳戶內購物小幫手中之「退貨/退款程序說明」。
												<br><br>
												四、請注意如您是透過銷售奇機網站之服務所產生之交易行為，買賣或其他合約均僅存在您與各該商家兩造之間。各該商家將就其商品、服務或其他交易標的物之品質、內容、運送、保證事項與瑕疵擔保責任等，向您事先詳細闡釋與說明並履行。您因前述買賣、服務或其他交易行為所產生之爭執，應向各該商家尋求救濟或解決之道。本公司僅提供momo摩天商城之平台供您與商家間進行交易，本公司並非交易之當事人，故絕不介入您與商家間的任何買賣、服務或其他交易行為，對於您所獲得的商品、服務或其他交易標的物亦不負任何擔保責任
												<br><br>
												<b>客戶隱私權保障</b><br><br>
												一、隱私權聲明政策:
												關於您註冊或使用本服務時所提供之個人資料，本公司將依「客戶隱私權政策 」為利用與保護。
												<br><br>
												二、資料記錄有效性:
												客戶使用本服務時，其使用過程中所有的資料記錄，以本服務資料庫所記錄之資料為準，如有任何糾紛，以本服務資料庫所記錄之電子資料為認定標準，但客戶如能提出其他資料並證明為真實者則不在此限。
												<br><br>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingThree">
											<h2 class="mb-0">
												<button class="btn btn-link btn-block text-left collapsed"
													type="button" data-toggle="collapse"
													data-target="#collapseThree" aria-expanded="false"
													aria-controls="collapseThree">折價券注意事項</button>
											</h2>
										</div>
										<div id="collapseThree" class="collapse"
											aria-labelledby="headingThree"
											data-parent="#accordionExample">
											<div class="card-body">
												<b>我的折價劵</b><br> 進入『我的帳戶>我的折價劵』，可以查詢折價劵或輸入折價劵號。<br>
												<br> <b>如何使用折價劵</b><br>
												在結帳時，點選使用折價券或填入折價券折扣碼，就可以享有優惠喔！<br> <br> <b>折價劵使用規則</b><br>
												1. 每次線上結帳，只能使用一張折價券，門市及櫃點使用則以另行公告為主。<br> 2.
												使用折價券折抵後，每項商品金額不可為零。<br> 3.
												若結帳商品標註為「不適用折價券」，則該商品不能使用折價券進行折抵。<br> 4.
												折價券僅能使用一次且不找零，一經使用無法恢復。<br> 5.
												使用折價券的訂單如取消或退貨，折價券將自動失效不會歸還。<br> 6.
												折價券有使用效期，逾期後則無法使用，且無法恢復。<br> 7.
												折價券不可折抵運費。，務必依退貨退款頁面，填寫正確的退款帳號資料。商店確認商品退貨完成後，
												我們將於7~10個工作天內，退款至您的指定帳號中。<br>
											</div>
										</div>
									</div>
								</div>
				<!-- Customer Q&A End -->
							
							
							</div>
							<div class="tab-pane fade" id="list-settings" role="tabpanel"
								aria-labelledby="list-settings-list">


								<b>會員權益聲明</b>
								<hr>
								親愛的會員您好，非常感謝您使用本商店的服務（以下稱本服務），本商店將根據以下之會員服務條款(以下簡稱本條款)，提供會員便利的交易。為了保障您的權益，請務必詳讀本條款，在您註冊成為本商店會員、或開始使用本服務時，即視為您已經閱讀、瞭解並同意接受本條款及「隱私權保護政策」之所有內容，並視為您已確認詳閱並同意個人資料保護告知暨同意事項。<br>

								如您不同意本條款之全部或部分內容，請勿註冊，並請立即停止使用本服務。本條款之具體約定內容如後：<br>
								<hr>

								<b>一、會員資料</b><br> <br>
								01._在您使用本服務之前，必須提供正確個人資料，並加入成為本商店會員，無須支付任何費用；在加入完成後，使用本服務及參加與本服務相關之活動。如個人資料有異動，請務必即時更新，以保障您的權益。如因會員未正確更新個人資料，致未能收到本公司寄發之會員權益、消費優惠、活動內容等相關資訊，或變更、終止會員權益、消費優惠、活動內容之通知，會員同意在此情形下，視為會員已經收到該等資訊或通知。<br>

								02._隱私權保護聲明：會員之個人資料受到本商店隱私權條款之保護與規範。<br>
								<hr>

								<b>二、服務內容的變更</b><br> <br>
								會員同意本商店得隨時調整、變更、修改或終止本服務及本條款，於本商店公告後生效，不再另行個別通知。<br>

								會員因參與本商店活動及使用本商店服務，而與本商店所發生之權利義務關係，均以本條款最新修訂之版本為準。<br>
								<hr>

								<b>三、商店個人資料保護告知及暨同意事項：</b><br> <br>
								為提供會員最完善的服務，並保護會員個人資料，本商店謹此依個人資料保護法(下稱個資法)規定，告知您如下事項：<br>

								(一)蒐集之目的、個人資料類別、利用期間、地區、對象及方式<br>
								為提供會員有關本商店各項消費優惠、商品、服務、活動及最新資訊，並有效管理會員資料、進行服務與調查、滿意度及消費統計分析調查(下稱蒐集目的)，本商店將於上開蒐集目的消失前，在完成上開蒐集目的之必要地區內，蒐集、處理、利用您填載於本商店會員申請之個人資料、消費與交易資料，或日後經您同意而提供之其他個人資料。在上開蒐集目的範圍內，本商店可能會將您全部或部分個人資料，提供予合作廠商。(合作廠商包括但不限提供本服務之91APP)。<br>

								例：當會員使用本服務進行線上消費，本公司需透過宅配貨運等合作廠商，方能完成貨品或相關贈品之配送，故當會員完成線上交易，即表示會員同意並授權本公司得將會員提供之個人資料(如收件人姓名、配送地址、電話…等)提供予宅配及貨運合作廠商，以利完成貨品或相關贈品之配送。<br>

								(二)注意事項：<br>
								您同意以電子文件作為行使個資法書面同意之方式。如您不同意提供個人資料，或要求刪除或停止蒐集、處理您的個人資料，您瞭解本商店可能因此無法進行網路會員資格審核及相關處理作業，或提供您完善的網路服務，尚請見諒。<br>

								<hr>
								<b>四、換貨說明</b><br> <br> <b>台灣地區：</b>

								收到商品後可享有7天免費鑑賞期(含例假日)，鑑賞期係供您參考、觀賞、品鑑比較，如需要辦理退/換貨，請於到貨後7天內登錄「我的帳戶」頁面申請「退/換貨」，我們將盡速為您處理。<br>
								<br> <b>退貨方式：</b><br>
								自收到商品日起，退貨方式建議採用「面交」，以保證機身無任何損毀，面交當下請確認商品有無損毀，否則一概不負任何責任。<br>
								<br> <b>退貨注意事項：</b><br> 退貨的商品必須回復原狀，亦即必須回復至您收到商品時的原始狀態
								( 包含機台本身、附件、內外包裝、活動贈品等 )，若您已取得紙本發票，請於退貨時一併退還。<br>
								請您以送貨廠商使用之包裝紙箱將退貨商品包裝妥當，若原紙箱已遺失，請另使用其他紙箱包覆於商品原廠包裝之外，切勿直接於原廠包裝上黏貼紙張或書寫文字，若原廠包裝損毀將無法退貨或須將損壞費用於退款中扣抵。<br>
								當您申請退貨後，請主動向貨運人員索取單據，並保留至退貨完成，以利日後查詢。<br>
								如連續退貨3次或6個月內退貨達5次，官網將限制下單3個月，主要是希望門市人員能協助您挑選到適合的商品，以免您花費太長的時間確買不到適合您的商品。<br>
								<br> <b>下列情形可能影響您的退貨權限：</b><br>
								在不影響您檢查商品情形下，您將商品包裝毀損、封條移除、貼膠移除或標籤拆除等情形，在您收到商品之前，已提供您檢查商品之機會。<br>
								其他逾越檢查之必要或可歸責於您之事由，致商品有毀損、滅失或變更者。<br> <br> <b>海外地區：</b><br>
								海外購物收到商品後如發現有瑕疵或破損或是配件短缺的狀況，需要辦理退貨，請於到貨後7天內登錄「我的帳戶」頁面申請「退貨」，我們將盡速為您處理。<br>
								收到商品後可享有7天免費鑑賞期(含例假日)，鑑賞期係供您參考、觀賞、品鑑比較，如需辦理退貨，請於到貨後7天內登錄「我的帳戶」頁面申請「退貨」，我們將盡速為您處理。<br>
								退貨請自行寄回台灣，並且需要自行付擔運費，退貨的商品必須必須回復原狀，亦即必須回復至您收到商品時的原始狀態 (
								包含機台本身、附件、內外包裝、活動贈品等 )
								請您以送貨廠商使用之包裝紙箱將退貨商品包裝妥當，若原紙箱已遺失，請另使用其他紙箱包覆於商品原廠包裝之外，切勿直接於原廠包裝上黏貼紙張或書寫文字，若原廠包裝損毀將無法退貨或須將損壞費用於退款中扣抵。<br>
								因海外連繫較為困難，因此退貨申請後請7天內請與客服連繫，逾期將不予退貨。<br>

							</div>

							<div class="tab-pane fade" id="list-messages" role="tabpanel"
								aria-labelledby="list-messages-list"></div>
						</div>
					</div>
				</div>
			</div>
		</form:form>

		<hr>
		<br>
	</main>
</body>

</html>