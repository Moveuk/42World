<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
			<form action="member/updateMember">
				<table>
					<tr>
						<td class="p-3">이메일</td>
						<td><input class="border border-gray-200 bg-gray-100 text-gray-600" type="text" value="{member.email}" readonly></td>
					</tr>
					<tr>
						<td class="p-3">비밀번호</td>
						<td><input class="border" type="text" value="" readonly></td>
					</tr>
					<tr>
						<td class="p-3">이름</td>
						<td><input class="border border-gray-200 bg-gray-100 text-gray-600" type="text" value="{member.name}" readonly></td>
					</tr>
					<tr>
						<td class="p-3">생년월일</td>
						<td><input class="border border-gray-200 bg-gray-100 text-gray-600" type="text" value="{member.birth}" readonly></td>
					</tr>
				</table>
				<div id="btns" class="text-center">
					<input class="border border-gray-400 pl-2 pr-2" type="submit" name="submit" id="submit" value="수정">
					<input class="border border-gray-400 pl-2 pr-2" type="reset" name="reset" id="reset" value="초기화">
				</div>
			</form>