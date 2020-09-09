<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
    <title>管理員專區</title>
    <link href="<c:url value='css/customerService.css' />" rel="stylesheet">
</head>

<body><script id="__bs_script__">//<![CDATA[
    document.write("<script async src='/browser-sync/browser-sync-client.js?v=2.26.7'><\/script>".replace("HOST", location.hostname));
//]]></script>

<main role="main" style="float: unset;">
	<div class="server-main" style="font-family: monospace; font-size: 16px;">

			<div class="row">
				<div class="col-4">
					<div class="list-group" id="list-tab" role="tablist">
						<a class="list-group-item list-group-item-action active"
							id="list-home-list" data-toggle="list" href="#list-home"
							role="tab" aria-controls="home">賣家相關</a> <a
							class="list-group-item list-group-item-action"
							id="list-profile-list" data-toggle="list" href="#list-profile"
							role="tab" aria-controls="profile">配送問題</a> <a
							class="list-group-item list-group-item-action"
							id="list-messages-list" data-toggle="list" href="#list-messages"
							role="tab" aria-controls="messages">會員相關</a> <a
							class="list-group-item list-group-item-action"
							id="list-settings-list" data-toggle="list" href="#list-settings"
							role="tab" aria-controls="settings">發票載具</a> <a
							class="list-group-item list-group-item-action" id="list-set-list"
							data-toggle="list" href="#list-set" role="tab"
							aria-controls="set">退貨及退款</a>
					</div>
				</div>

				<div class="col-8">
					<div class="tab-content" id="nav-tabContent1">
						<div class="tab-content" id="nav-tabContent2">

							<!--page1-->
							<div class="tab-pane fade show active" id="list-home"
								role="tabpanel" aria-labelledby="list-home-list">

								<nav>
									<div class="nav nav-tabs" id="nav-tab" role="tablist">
										<a class="nav-link active" id="nav-home-tab" data-toggle="tab"
											href="#nav-home" role="tab" aria-controls="nav-home"
											aria-selected="true">賣家評價</a> <a class="nav-link"
											id="nav-profile-tab" data-toggle="tab" href="#nav-profile"
											role="tab" aria-controls="nav-profile" aria-selected="false">商品付款方式</a>
										<a class="nav-link" id="nav-contact-tab" data-toggle="tab"
											href="#nav-contact" role="tab" aria-controls="nav-contact"
											aria-selected="false">商品規格疑問</a>
									</div>
								</nav>
								<div class="tab-content" id="nav-tabContent">
									<!--page1-1-->
									<div class="tab-pane fade show active" id="nav-home"
										role="tabpanel" aria-labelledby="nav-home-tab">
										<br> <br>

										<div class="accordion" id="accordionExample">
											<div class="card">
												<div class="card-header" id="headingOne">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left"
															type="button" data-toggle="collapse"
															data-target="#collapseOne" aria-expanded="true"
															aria-controls="collapseOne">#1</button>
													</h2>
												</div>

												<div id="collapseOne" class="collapse show"
													aria-labelledby="headingOne"
													data-parent="#accordionExample">
													<div class="card-body">
														123Anim pariatur cliche reprehenderit, enim eiusmod high
														life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingTwo">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseTwo" aria-expanded="false"
															aria-controls="collapseTwo">#2</button>
													</h2>
												</div>
												<div id="collapseTwo" class="collapse"
													aria-labelledby="headingTwo"
													data-parent="#accordionExample">
													<div class="card-body">
														456Anim pariatur cliche reprehenderit, enim eiusmod high
														life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingThree">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseThree" aria-expanded="false"
															aria-controls="collapseThree">#3</button>
													</h2>
												</div>
												<div id="collapseThree" class="collapse"
													aria-labelledby="headingThree"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
										</div>

									</div>
									<!--page1-2-->
									<div class="tab-pane fade" id="nav-profile" role="tabpanel"
										aria-labelledby="nav-profile-tab">
										<br> <br>

										<div class="accordion" id="accordionExample">
											<div class="card">
												<div class="card-header" id="headingOne">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left"
															type="button" data-toggle="collapse"
															data-target="#collapseOne" aria-expanded="true"
															aria-controls="collapseOne">#1</button>
													</h2>
												</div>

												<div id="collapseOne" class="collapse show"
													aria-labelledby="headingOne"
													data-parent="#accordionExample">
													<div class="card-body">
														12Anim pariatur cliche reprehenderit, enim eiusmod high
														life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingTwo">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseTwo" aria-expanded="false"
															aria-controls="collapseTwo">#2</button>
													</h2>
												</div>
												<div id="collapseTwo" class="collapse"
													aria-labelledby="headingTwo"
													data-parent="#accordionExample">
													<div class="card-body">
														456Anim pariatur cliche reprehenderit, enim eiusmod high
														life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingThree">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseThree" aria-expanded="false"
															aria-controls="collapseThree">#3</button>
													</h2>
												</div>
												<div id="collapseThree" class="collapse"
													aria-labelledby="headingThree"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
										</div>

									</div>
									<!--page1-3-->
									<div class="tab-pane fade" id="nav-contact" role="tabpanel"
										aria-labelledby="nav-contact-tab">
										<br> <br>

										<div class="accordion" id="accordionExample">
											<div class="card">
												<div class="card-header" id="headingOne">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left"
															type="button" data-toggle="collapse"
															data-target="#collapseOne" aria-expanded="true"
															aria-controls="collapseOne">#1</button>
													</h2>
												</div>

												<div id="collapseOne" class="collapse show"
													aria-labelledby="headingOne"
													data-parent="#accordionExample">
													<div class="card-body">
														789Anim pariatur cliche reprehenderit, enim eiusmod high
														life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingTwo">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseTwo" aria-expanded="false"
															aria-controls="collapseTwo">#2</button>
													</h2>
												</div>
												<div id="collapseTwo" class="collapse"
													aria-labelledby="headingTwo"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingThree">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseThree" aria-expanded="false"
															aria-controls="collapseThree">#3</button>
													</h2>
												</div>
												<div id="collapseThree" class="collapse"
													aria-labelledby="headingThree"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>

							<!--page2-->
							<div class="tab-pane fade" id="list-profile" role="tabpanel"
								aria-labelledby="list-profile-list">

								<nav>
									<div class="nav nav-tabs" id="nav-tab2" role="tablist">
										<a class="nav-link active" id="nav-home-tab2"
											data-toggle="tab" href="#nav-home2" role="tab"
											aria-controls="nav-home2" aria-selected="true">配送時長</a> <a
											class="nav-link" id="nav-profile-tab2" data-toggle="tab"
											href="#nav-profile2" role="tab" aria-controls="nav-profile2"
											aria-selected="false">配送方式</a> <a class="nav-link"
											id="nav-contact-tab2" data-toggle="tab" href="#nav-contact2"
											role="tab" aria-controls="nav-contact2" aria-selected="false">其他</a>
									</div>
								</nav>
								<div class="tab-content" id="nav-tabContent">
									<!--page2-1-->
									<div class="tab-pane fade show active" id="nav-home2"
										role="tabpanel" aria-labelledby="nav-home-tab2">
										<br> <br>

										<div class="accordion" id="accordionExample">
											<div class="card">
												<div class="card-header" id="headingOne">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left"
															type="button" data-toggle="collapse"
															data-target="#collapseOne" aria-expanded="true"
															aria-controls="collapseOne">#1</button>
													</h2>
												</div>

												<div id="collapseOne" class="collapse show"
													aria-labelledby="headingOne"
													data-parent="#accordionExample">
													<div class="card-body">
														111Anim pariatur cliche reprehenderit, enim eiusmod high
														life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingTwo">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseTwo" aria-expanded="false"
															aria-controls="collapseTwo">#2</button>
													</h2>
												</div>
												<div id="collapseTwo" class="collapse"
													aria-labelledby="headingTwo"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingThree">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseThree" aria-expanded="false"
															aria-controls="collapseThree">#3</button>
													</h2>
												</div>
												<div id="collapseThree" class="collapse"
													aria-labelledby="headingThree"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
										</div>

									</div>
									<!--page2-2-->
									<div class="tab-pane fade" id="nav-profile2" role="tabpanel"
										aria-labelledby="nav-profile-tab2">
										<br> <br>

										<div class="accordion" id="accordionExample">
											<div class="card">
												<div class="card-header" id="headingOne">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left"
															type="button" data-toggle="collapse"
															data-target="#collapseOne" aria-expanded="true"
															aria-controls="collapseOne">#1</button>
													</h2>
												</div>

												<div id="collapseOne" class="collapse show"
													aria-labelledby="headingOne"
													data-parent="#accordionExample">
													<div class="card-body">
														555Anim pariatur cliche reprehenderit, enim eiusmod high
														life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingTwo">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseTwo" aria-expanded="false"
															aria-controls="collapseTwo">#2</button>
													</h2>
												</div>
												<div id="collapseTwo" class="collapse"
													aria-labelledby="headingTwo"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingThree">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseThree" aria-expanded="false"
															aria-controls="collapseThree">#3</button>
													</h2>
												</div>
												<div id="collapseThree" class="collapse"
													aria-labelledby="headingThree"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
										</div>

									</div>
									<!--page2-3-->
									<div class="tab-pane fade" id="nav-contact2" role="tabpanel"
										aria-labelledby="nav-contact-tab2">
										<br> <br>

										<div class="accordion" id="accordionExample">
											<div class="card">
												<div class="card-header" id="headingOne">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left"
															type="button" data-toggle="collapse"
															data-target="#collapseOne" aria-expanded="true"
															aria-controls="collapseOne">#1</button>
													</h2>
												</div>

												<div id="collapseOne" class="collapse show"
													aria-labelledby="headingOne"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingTwo">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseTwo" aria-expanded="false"
															aria-controls="collapseTwo">#2</button>
													</h2>
												</div>
												<div id="collapseTwo" class="collapse"
													aria-labelledby="headingTwo"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingThree">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseThree" aria-expanded="false"
															aria-controls="collapseThree">#3</button>
													</h2>
												</div>
												<div id="collapseThree" class="collapse"
													aria-labelledby="headingThree"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>


							<!--page3-->
							<div class="tab-pane fade" id="list-messages" role="tabpanel"
								aria-labelledby="list-messages-list">

								<nav>
									<div class="nav nav-tabs" id="nav-tab3" role="tablist">
										<a class="nav-link active" id="nav-home-tab3"
											data-toggle="tab" href="#nav-home3" role="tab"
											aria-controls="nav-home3" aria-selected="true">修改會員資料</a> <a
											class="nav-link" id="nav-profile-tab3" data-toggle="tab"
											href="#nav-profile3" role="tab" aria-controls="nav-profile3"
											aria-selected="false">海外會員</a> <a class="nav-link"
											id="nav-contact-tab3" data-toggle="tab" href="#nav-contact3"
											role="tab" aria-controls="nav-contact3" aria-selected="false">取消註冊</a>
									</div>
								</nav>
								<div class="tab-content" id="nav-tabContent">
									<!--page3-1-->
									<div class="tab-pane fade show active" id="nav-home3"
										role="tabpanel" aria-labelledby="nav-home-tab3">
										<br> <br>

										<div class="accordion" id="accordionExample">
											<div class="card">
												<div class="card-header" id="headingOne">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left"
															type="button" data-toggle="collapse"
															data-target="#collapseOne" aria-expanded="true"
															aria-controls="collapseOne">#1</button>
													</h2>
												</div>

												<div id="collapseOne" class="collapse show"
													aria-labelledby="headingOne"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingTwo">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseTwo" aria-expanded="false"
															aria-controls="collapseTwo">#2</button>
													</h2>
												</div>
												<div id="collapseTwo" class="collapse"
													aria-labelledby="headingTwo"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingThree">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseThree" aria-expanded="false"
															aria-controls="collapseThree">#3</button>
													</h2>
												</div>
												<div id="collapseThree" class="collapse"
													aria-labelledby="headingThree"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
										</div>

									</div>
									<!--page3-2-->
									<div class="tab-pane fade" id="nav-profile3" role="tabpanel"
										aria-labelledby="nav-profile-tab3">
										<br> <br>

										<div class="accordion" id="accordionExample">
											<div class="card">
												<div class="card-header" id="headingOne">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left"
															type="button" data-toggle="collapse"
															data-target="#collapseOne" aria-expanded="true"
															aria-controls="collapseOne">#1</button>
													</h2>
												</div>

												<div id="collapseOne" class="collapse show"
													aria-labelledby="headingOne"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingTwo">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseTwo" aria-expanded="false"
															aria-controls="collapseTwo">#2</button>
													</h2>
												</div>
												<div id="collapseTwo" class="collapse"
													aria-labelledby="headingTwo"
													data-parent="#accordionExample">
													<div class="card-body">
														777Anim pariatur cliche reprehenderit, enim eiusmod high
														life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingThree">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseThree" aria-expanded="false"
															aria-controls="collapseThree">#3</button>
													</h2>
												</div>
												<div id="collapseThree" class="collapse"
													aria-labelledby="headingThree"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
										</div>


									</div>
									<!--page3-3-->
									<div class="tab-pane fade" id="nav-contact3" role="tabpanel"
										aria-labelledby="nav-contact-tab3">
										<br> <br>

										<div class="accordion" id="accordionExample">
											<div class="card">
												<div class="card-header" id="headingOne">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left"
															type="button" data-toggle="collapse"
															data-target="#collapseOne" aria-expanded="true"
															aria-controls="collapseOne">#1</button>
													</h2>
												</div>

												<div id="collapseOne" class="collapse show"
													aria-labelledby="headingOne"
													data-parent="#accordionExample">
													<div class="card-body">
														999Anim pariatur cliche reprehenderit, enim eiusmod high
														life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingTwo">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseTwo" aria-expanded="false"
															aria-controls="collapseTwo">#2</button>
													</h2>
												</div>
												<div id="collapseTwo" class="collapse"
													aria-labelledby="headingTwo"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingThree">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseThree" aria-expanded="false"
															aria-controls="collapseThree">#3</button>
													</h2>
												</div>
												<div id="collapseThree" class="collapse"
													aria-labelledby="headingThree"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
										</div>

									</div>
								</div>

							</div>
							<!--page4-->
							<div class="tab-pane fade" id="list-settings" role="tabpanel"
								aria-labelledby="list-settings-list">

								<nav>
									<div class="nav nav-tabs" id="nav-tab4" role="tablist">
										<a class="nav-link active" id="nav-home-tab4"
											data-toggle="tab" href="#nav-home4" role="tab"
											aria-controls="nav-home4" aria-selected="true">發票及載具問題</a>
									</div>
								</nav>
								<div class="tab-content" id="nav-tabContent">
									<!--page4-1-->
									<div class="tab-pane fade show active" id="nav-home4"
										role="tabpanel" aria-labelledby="nav-home-tab4">
										<br> <br>

										<div class="accordion" id="accordionExample">
											<div class="card">
												<div class="card-header" id="headingOne">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left"
															type="button" data-toggle="collapse"
															data-target="#collapseOne" aria-expanded="true"
															aria-controls="collapseOne">#1</button>
													</h2>
												</div>

												<div id="collapseOne" class="collapse show"
													aria-labelledby="headingOne"
													data-parent="#accordionExample">
													<div class="card-body">
														999Anim pariatur cliche reprehenderit, enim eiusmod high
														life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingTwo">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseTwo" aria-expanded="false"
															aria-controls="collapseTwo">#2</button>
													</h2>
												</div>
												<div id="collapseTwo" class="collapse"
													aria-labelledby="headingTwo"
													data-parent="#accordionExample">
													<div class="card-body">
														666Anim pariatur cliche reprehenderit, enim eiusmod high
														life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingThree">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseThree" aria-expanded="false"
															aria-controls="collapseThree">#3</button>
													</h2>
												</div>
												<div id="collapseThree" class="collapse"
													aria-labelledby="headingThree"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
										</div>

									</div>
								</div>

							</div>
							<!--page5-->
							<div class="tab-pane fade" id="list-set" role="tabpanel"
								aria-labelledby="list-set-list">

								<nav>
									<div class="nav nav-tabs" id="nav-tab5" role="tablist">
										<a class="nav-link active" id="nav-home-tab5"
											data-toggle="tab" href="#nav-home5" role="tab"
											aria-controls="nav-home5" aria-selected="true">退貨進度查詢</a> <a
											class="nav-link" id="nav-profile-tab5" data-toggle="tab"
											href="#nav-profile5" role="tab" aria-controls="nav-profile5"
											aria-selected="false">退貨相關問題</a> <a class="nav-link"
											id="nav-contact-tab5" data-toggle="tab" href="#nav-contact5"
											role="tab" aria-controls="nav-contact5" aria-selected="false">維修保固相關問題</a>
									</div>
								</nav>
								<div class="tab-content" id="nav-tabContent">
									<!--page5-1-->
									<div class="tab-pane fade show active" id="nav-home5"
										role="tabpanel" aria-labelledby="nav-home-tab5">
										<br> <br>

										<div class="accordion" id="accordionExample">
											<div class="card">
												<div class="card-header" id="headingOne">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left"
															type="button" data-toggle="collapse"
															data-target="#collapseOne" aria-expanded="true"
															aria-controls="collapseOne">#1</button>
													</h2>
												</div>

												<div id="collapseOne" class="collapse show"
													aria-labelledby="headingOne"
													data-parent="#accordionExample">
													<div class="card-body">
														999Anim pariatur cliche reprehenderit, enim eiusmod high
														life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingTwo">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseTwo" aria-expanded="false"
															aria-controls="collapseTwo">#2</button>
													</h2>
												</div>
												<div id="collapseTwo" class="collapse"
													aria-labelledby="headingTwo"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingThree">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseThree" aria-expanded="false"
															aria-controls="collapseThree">#3</button>
													</h2>
												</div>
												<div id="collapseThree" class="collapse"
													aria-labelledby="headingThree"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
										</div>

									</div>
									<!--page5-2-->
									<div class="tab-pane fade" id="nav-profile5" role="tabpanel"
										aria-labelledby="nav-profile-tab5">
										<br> <br>

										<div class="accordion" id="accordionExample">
											<div class="card">
												<div class="card-header" id="headingOne">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left"
															type="button" data-toggle="collapse"
															data-target="#collapseOne" aria-expanded="true"
															aria-controls="collapseOne">#1</button>
													</h2>
												</div>

												<div id="collapseOne" class="collapse show"
													aria-labelledby="headingOne"
													data-parent="#accordionExample">
													<div class="card-body">
														999Anim pariatur cliche reprehenderit, enim eiusmod high
														life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingTwo">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseTwo" aria-expanded="false"
															aria-controls="collapseTwo">#2</button>
													</h2>
												</div>
												<div id="collapseTwo" class="collapse"
													aria-labelledby="headingTwo"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingThree">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseThree" aria-expanded="false"
															aria-controls="collapseThree">#3</button>
													</h2>
												</div>
												<div id="collapseThree" class="collapse"
													aria-labelledby="headingThree"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
										</div>

									</div>
									<!--page5-3-->
									<div class="tab-pane fade" id="nav-contact5" role="tabpanel"
										aria-labelledby="nav-contact-tab5">
										<br> <br>

										<div class="accordion" id="accordionExample">
											<div class="card">
												<div class="card-header" id="headingOne">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left"
															type="button" data-toggle="collapse"
															data-target="#collapseOne" aria-expanded="true"
															aria-controls="collapseOne">#1</button>
													</h2>
												</div>

												<div id="collapseOne" class="collapse show"
													aria-labelledby="headingOne"
													data-parent="#accordionExample">
													<div class="card-body">
														999Anim pariatur cliche reprehenderit, enim eiusmod high
														life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingTwo">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseTwo" aria-expanded="false"
															aria-controls="collapseTwo">#2</button>
													</h2>
												</div>
												<div id="collapseTwo" class="collapse"
													aria-labelledby="headingTwo"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="headingThree">
													<h2 class="mb-0">
														<button class="btn btn-link btn-block text-left collapsed"
															type="button" data-toggle="collapse"
															data-target="#collapseThree" aria-expanded="false"
															aria-controls="collapseThree">#3</button>
													</h2>
												</div>
												<div id="collapseThree" class="collapse"
													aria-labelledby="headingThree"
													data-parent="#accordionExample">
													<div class="card-body">
														Anim pariatur cliche reprehenderit, enim eiusmod high life
														accusamus terry richardson ad squid. 3 wolf moon officia
														aute, non cupidatat skateboard dolor brunch. Food truck
														quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.
														<hr>
														<textarea name="comments" cols="68" rows="13"
															style="border-radius: 5px;"></textarea>
														<br>
														<form>
															<button type="submit" class="btn btn-outline-danger"
																style="margin-left: 45%;">送出</button>
															<br>
														</form>
													</div>
												</div>
											</div>
										</div>

									</div>
								</div>

							</div>

						</div>
					</div>
				</div>

			</div>
</body>
</html>