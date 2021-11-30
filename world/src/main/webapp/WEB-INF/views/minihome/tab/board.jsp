<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
						<div class="left">
							<div class="leftContent">
								<p class="boardTitle">Board</p>
								<ul class="boardFolders">
									<li>
										<img src="/resources/img/open.png">
										<a href="#boardFolder1">
											<span>기본게시판폴더</span>
										</a>
									</li>
								</ul>
								<ul class="boardFolders">
									<li>
										<img src="/resources/img/close.png">
										<a href="#boardFolder2">
											<span>커피</span>
										</a>
									</li>
								</ul>
								<ul class="boardFolders">
									<li>
										<img src="/resources/img/close.png">
										<a href="#boardFolder3">
											<span>시계</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="right">
							<div class="rightContent">
								<div class="top">
									<div id="boardFolder1" class="board_content">
										<input type="text" value="기본 게시판" name="kind" id="kind" readonly>
										<input type="button" value="글쓰기" name="addBoard" onclick="writingBoard()">
										<div class="middleTable">
											<table>
												<tr>
													<th>제목</th>
													<th>작성자</th>
													<th>작성일</th>
													<th>조회</th>
												</tr>
												<tr>
													<td>
														<a href="#" name="">일기장</a>
													</td>
													<td>피효정</td>
													<td>2021.10.13</td>
													<td>0</td>
												</tr>
												<tr>
													<td>
														<a href="#">가계부</a>
													</td>
													<td>피효정</td>
													<td>2021.10.13</td>
													<td>0</td>
												</tr>
											</table>
										</div>
										<div class="middleTableAtag">
											<div class="AtagTop">
												<div class="AtagTitle">
													<input type="text" value="" name="title" id="title">
												</div>
												<div class="AtagButton">
													<button class="boardButton" onclick="">수정</button>
													<button class="boardButton" onclick="">이동</button>
													<button class="boardButton" onclick="">삭제</button>
												</div>
											</div>
											<div class="content">
												<div class="information">
													<input type="button" value="" name="name" id="name" onclick="goMinihome()">
													<div class="informationRight">
														<input type="text" value="" name="date" id="date">
														<input type="text" value="조회수:" name="cnt" id="cnt">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div id="boardFolder2" class="board_content">
										<input type="text" value="" name="kind" id="kind">
										<input type="button" value="글쓰기" name="addBoard" onclick="addBoardForm()">
										<div class="middleTable">
											<table>
												<tr>
													<th>제목</th>
													<th>작성자</th>
													<th>작성일</th>
													<th>조회</th>
												</tr>
												<tr>
													<td>
														<a href="#" name="">라떼</a>
													</td>
													<td>피효정</td>
													<td>2021.10.13</td>
													<td>0</td>
												</tr>
												<tr>
													<td>
														<a href="#">아메리카노</a>
													</td>
													<td>피효정</td>
													<td>2021.10.13</td>
													<td>0</td>
												</tr>
												<tr>
													<td>
														<a href="#">에스프레소</a>
													</td>
													<td>피효정</td>
													<td>2021.10.13</td>
													<td>0</td>
												</tr>
											</table>
										</div>
										<div class="middleTableAtag">
											<div class="AtagTop">
												<div class="AtagTitle">
													<input type="text" value="" name="title" id="title" readonly>
												</div>
												<div class="AtagButton">
													<button class="boardButton" onclick="">수정</button>
													<button class="boardButton" onclick="">이동</button>
													<button class="boardButton" onclick="">삭제</button>
												</div>
											</div>
											<div class="content">
												<div class="information">
													<input type="button" value="" name="name" id="name" onclick="goMinihome()">
													<div class="informationRight">
														<input type="text" value="" name="date" id="date">
														<input type="text" value="조회수:" name="cnt" id="cnt">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div id="boardFolder3" class="board_content">
										<input type="text" value="" name="kind" id="kind">
										<input type="button" value="글쓰기" name="addBoard" onclick="addBoardForm()">
										<div class="middleTable">
											<table>
												<tr>
													<th>제목</th>
													<th>작성자</th>
													<th>작성일</th>
													<th>조회</th>
												</tr>
												<tr>
													<td>
														<a href="#" name="">스와치</a>
													</td>
													<td>피효정</td>
													<td>2021.10.13</td>
													<td>0</td>
												</tr>
												<tr>
													<td>
														<a href="#">오메가</a>
													</td>
													<td>피효정</td>
													<td>2021.10.13</td>
													<td>0</td>
												</tr>
												<tr>
													<td>
														<a href="#">애플워치</a>
													</td>
													<td>피효정</td>
													<td>2021.10.13</td>
													<td>0</td>
												</tr>
											</table>
										</div>
										<div class="middleTableAtag">
											<div class="AtagTop">
												<div class="AtagTitle">
													<input type="text" value="" name="title" id="title">
												</div>
												<div class="AtagButton">
													<button class="boardButton" onclick="">수정</button>
													<button class="boardButton" onclick="">이동</button>
													<button class="boardButton" onclick="">삭제</button>
												</div>
											</div>
											<div class="content">
												<div class="information">
													<input type="button" value="" name="name" id="name" onclick="goMinihome()">
													<div class="informationRight">
														<input type="text" value="" name="date" id="date">
														<input type="text" value="조회수:" name="cnt" id="cnt">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>