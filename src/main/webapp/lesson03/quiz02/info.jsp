<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <% 
 
//아이유 노래 리스트 
 List<Map<String, Object>> musicList = new ArrayList<>();

 Map<String, Object> musicInfo = new HashMap<>();
 musicInfo.put("id", 1);
 musicInfo.put("title", "팔레트");
 musicInfo.put("album", "Palette");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
 musicInfo.put("time", 217);
 musicInfo.put("composer", "아이유");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 2);
 musicInfo.put("title", "좋은날");
 musicInfo.put("album", "Real");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
 musicInfo.put("time", 233);
 musicInfo.put("composer", "이민수");
 musicInfo.put("lyricist", "김이나");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 3);
 musicInfo.put("title", "밤편지");
 musicInfo.put("album", "palette");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
 musicInfo.put("time", 253);
 musicInfo.put("composer", "제휘,김희원");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 4);
 musicInfo.put("title", "삐삐");
 musicInfo.put("album", "삐삐");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
 musicInfo.put("time", 194);
 musicInfo.put("composer", "이종훈");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 5);
 musicInfo.put("title", "스물셋");
 musicInfo.put("album", "CHAT-SHIRE");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
 musicInfo.put("time", 194);
 musicInfo.put("composer", "아이유,이종훈,이채규");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 6);
 musicInfo.put("title", "Blueming");
 musicInfo.put("album", "Love poem");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
 musicInfo.put("time", 217);
 musicInfo.put("composer", "아이유,이종훈,이채규");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);
 
 %>      


<section class="content">
	<h4><b>곡 정보</b></h4>
	<div class="d-flex border border-success p-3">
	<% // 검색이 뭘로 될지 모른다... a는 유일한 값(id)을 가지고 와야한다.
	// 상세 정보를 보여줄 target map 세팅
	Map<String, Object> target = null;
	
	// 1. 목록에서 클릭하고 들어온 경우 (id 값)
	if (request.getParameter("id") != null) {
		int paramId = Integer.valueOf(request.getParameter("id"));
		for (Map<String, Object> music: musicList) {
			if (paramId == (int)music.get("id")) {
				target = music;
				break;
			}
		}
	}
	
	
	// 2. 상단에서 검색한 경우 (search 값)
	if (request.getParameter("title") != null) {
		String paramSearch = request.getParameter("title");
		for (Map<String, Object> music: musicList) {
			if (paramSearch.equals(music.get("title"))) {
				target = music;
				break;
			}
		}
	}
	
	
	//out.print(target);
		
	
	
	
	
	
	
	 String title = request.getParameter("title");	
	 String id = request.getParameter("id");
	 String key = title == null? "id" : "title"; 
		
	 for (Map<String, Object> song: musicList) {
		 boolean isSameId =  key.equals("id") && song.get(key) == Integer.valueOf(id);
		 boolean isSameTitle = key.equals("title") && song.get(key).equals(title);
		 if (isSameId || isSameTitle) {
		 %>
		<div>
			<img src=<%= song.get("thumbnail") %> alt="사진" width="200px">
		</div>
		<div class="ml-3">
			<div class="display-3"><%= song.get("title") %></div>
			<div class="text-success fw-bold"><b><%= song.get("singer") %></b></div>
			<table class="songInfoText text-secondary text-start"> <%-- div로 가로로 두개를 붙여서 만드는 것도 가능하다. --%>
				<tr>
					<td>앨범</td>
					<td class="text-secondary"><%= song.get("album") %></td>
				</tr>
				<tr>
					<td>재생시간</td>
					<td><%= (int)song.get("time")/ 60 %> : <%= (int)song.get("time") % 60 %></td>
				</tr>
				<tr>
					<td>작곡가</td>
					<td><%= song.get("composer") %></td>
				</tr>
				<tr>
					<td>작사가</td>
					<td><%= song.get("lyricist") %></td>
				</tr>
			</table>
		</div>
		<%
			break;
			}
		}
		%>
	</div>
	<div class="mt-3">
		<h3>가사</h3>
		<hr>
		<span>가사정보 없음</span>
	</div>
</section>
<%-- <%
	} else {	// target이 없는 경우
%>
		정보없음
<%
	}
%> --%>