<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html>

<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  <title>게시판</title>
</head>

<body>
  <div class="container">
    <header>
      <h1> 게시판</h1>
    </header>
    <hr>

    <div>

      <style type="text/css">
        li {
          list-style: none;
          display: inline;
          padding: 6px;
        }

      </style>
      <ul>

        </li>
      </ul>
    </div>

    <section id="container">
      <form role="form" method="get">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>번호</th>
              <th>운동부위(세트)</th>
              <th>작성자</th>
              <th>작성일</th>
              <th>조회수</th> 	
            </tr>
          </thead>

          <tbody>
            <tr>
              <td>10</td>
              <td>
                <a href="">테스트</a>
              </td>
              <td>vkshsk</td>
              <td>2023-11-22</td>
              <td>21</td>
            </tr>

            <tr>
              <td>9</td>
              <td>
                <a href="">테스트</a>
              </td>
              <td>vkshsk</td>
              <td>2023-11-22</td>
              <td>121</td>
            </tr>

            <tr>
              <td>8</td>
              <td>
                <a href="">테스트</a>
              </td>
              <td>vkshsk</td>
              <td>2023-11-16</td>
              <td>251</td>
            </tr>

            <tr>
              <td>7</td>
              <td>
                <a href="">테스트</a>
              </td>
              <td>rangmal</td>
              <td>2021-11-16</td>
              <td>251</td>
            </tr>

            <tr>
              <td>6</td>
              <td>
                <a href="">테스트</a>
              </td>
              <td>rangmal</td>
              <td>2021-11-16</td>
              <td>251</td>
            </tr>

            <tr>
              <td>5</td>
              <td>
                <a href="">테스트</a>
              </td>
              <td>rangmal</td>
              <td>2021-11-16</td>
              <td>251</td>
            </tr>

            <tr>
              <td>4</td>
              <td>
                <a href="">테스트</a>
              </td>
              <td>rangmal</td>
              <td>2021-11-16</td>
              <td>251</td>
            </tr>

            <tr>
              <td>3</td>
              <td>
                <a href="">테스트</a>
              </td>
              <td>2</td>
              <td>2021-11-16</td>
              <td>251</td>
            </tr>

            <tr>
              <td>1</td>
              <td>
                <a href="">테스트</a>
              </td>
              <td>우영</td>
              <td>2021-11-15</td>
              <td>251</td>
            </tr>

            <tr>
              <td>0</td>
              <td>
                <a href="">테스트</a>
              </td>
              <td>우영</td>
              <td>2021-11-11</td>
              <td>251</td>
            </tr>

          </tbody>
        </table>
        <div class="search row">
          <div class="col-xs-2 col-sm-2">
            <select name="searchType" class="form-control">
              <option value="t">제목</option>
              <option value="c">내용</option>
              <option value="w">작성자</option>
              <option value="tc">제목+내용</option>
            </select>
          </div>

          <div class="col-xs-9 col-sm-9">
            <div class="input-group">
              <input type="text" name="keyword" id="keywordInput" value="" class="form-control">
              <span class="input-group-btn">
                <button id="searchBtn" type="button" class="btn btn-default">검색</button>
                
              </span>
            </div>
          </div>

          <script>
            $(function() {
              $('#searchBtn').click(function() {
                self.location = "list" + '?page=1&perPageNum=10' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
              });
            });
          </script>

        </div>
			<div class="container">          
          <ul class="pagination">
          	
                    <li class="page-item"><a class="page-link" href="#">이전</a></li>                               
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                    <li class="page-item"><a class="page-link" href="#">6</a></li>
                    <li class="page-item"><a class="page-link" href="#">7</a></li>
                    <li class="page-item"><a class="page-link" href="#">8</a></li>
                    <li class="page-item"><a class="page-link" href="#">9</a></li>
                    <li class="page-item"><a class="page-link" href="#">10</a></li>                                               
                    <li class="page-item"><a class="page-link" href="#">다음</a></li>
                    
         			<button type="button" class="btn btn-default">글쓰기</button>	
     
          </ul>
			</div>
			
            </ul>
        </div>
      </form>
    </section>
  </div>

</body>

</html>