<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
						<div class="left">
							<div class="leftContent">
								<p class="photoTitle">Photo</p>
								<ul class="photoFolders">
									<li>
										<img src="/resources/img/open.png">
										<a href="#photoFolder1">기본 사진첩</a>
									</li>
								</ul>
								<ul class="photoFolders">
									<li>
										<img src="/resources/img/close.png">
										<a href="#photoFolder2">자유 사진첩</a>
									</li>
								</ul>
								<ul class="photoFolders">
									<li>
										<img src="/resources/img/close.png">
										<a href="#photoFolder3">풍경 사진첩</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="right">
							<div class="rightContent">
								<div id="photoFolder1" class="photo_content">
									<div class="photoForm">
										<div class="photoTitle">
											<input type="text" name="photoTitleInput" id="photoTitleInput" value="사진타이틀입니다" readonly>
										</div>
										<div class="img">
											<img src="/resources/img/dotoriimg1.png">
										</div>
										<div class="photoFooter">
											<a href="#">수정</a>
											|
											<a href="#">이동</a>
											|
											<a href="#">삭제</a>
										</div>
										<div class="comment">
											<div class="commentForm">
												<span>댓글</span>
												<input type="text" name="commentInput" placeholder="댓글을 작성해주세요" id="commentInput" name="commentInput">
												<input type="button" onclick="comentSubmit()" name="commentSubmit" id="commentSubmit" value="확인">
											</div>
											<div class="commentList">
												<ul>
													<li>
														도도리 귀여워요~
														<a href="#">&nbsp;&nbsp;홍길동</a>
													</li>
													<li>
														퍼가요~♡
														<a href="#">&nbsp;&nbsp;뽀로로</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="photoForm">
										<div class="photoTitle">
											<input type="text" name="photoTitleInput" id="photoTitleInput" value="사진타이틀입니다" readonly>
										</div>
										<div class="img">
											<img src="/resources/img/dotoriimg2.png">
										</div>
										<div class="photoFooter">
											<a href="#">수정</a>
											|
											<a href="#">이동</a>
											|
											<a href="#">삭제</a>
										</div>
										<div class="comment">
											<div class="commentForm">
												<span>댓글</span>
												<input type="text" name="commentInput" placeholder="댓글을 작성해주세요" id="commentInput" name="commentInput">
												<input type="button" onclick="comentSubmit()" name="commentSubmit" id="commentSubmit" value="확인">
											</div>
											<div class="commentList">
												<ul>
													<li>
														도도리 귀여워요~
														<a href="#">&nbsp;&nbsp;홍길동</a>
													</li>
													<li>
														퍼가요~♡
														<a href="#">&nbsp;&nbsp;뽀로로</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div id="photoFolder2" class="photo_content">
									<div class="photoForm">
										<div class="photoTitle">
											<input type="text" name="photoTitleInput" id="photoTitleInput" value="사진타이틀입니다" readonly>
										</div>
										<div class="img">
											<img src="/resources/img/dotoriimg2.png">
										</div>
										<div class="photoFooter">
											<a href="#">수정</a>
											|
											<a href="#">이동</a>
											|
											<a href="#">삭제</a>
										</div>
										<div class="comment">
											<div class="commentForm">
												<span>댓글</span>
												<input type="text" name="commentInput" placeholder="댓글을 작성해주세요" id="commentInput" name="commentInput">
												<input type="button" onclick="comentSubmit()" name="commentSubmit" id="commentSubmit" value="확인">
											</div>
											<div class="commentList">
												<ul>
													<li>
														도도리 귀여워요~
														<a href="#">&nbsp;&nbsp;홍길동</a>
													</li>
													<li>
														퍼가요~♡
														<a href="#">&nbsp;&nbsp;뽀로로</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div id="photoFolder3" class="photo_content">
									<div class="photoForm">
										<img src="/resources/img/friend.png">
									</div>
								</div>
							</div>
						</div>