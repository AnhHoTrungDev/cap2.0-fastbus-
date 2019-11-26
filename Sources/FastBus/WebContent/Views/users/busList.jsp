<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <title>Fastbus</title>
    <!-- link css -->
    <%@ include file="common/topbootstrap.jsp" %>
  </head>
  <body>
    <!--::header part start::-->
    <%@ include file="common/menu.jsp" %>
    <!-- Header part end-->
	  <section>
      <div class="container my-5">
        <div class="row">
          <h4 class="text-primary m-3"><strong>Hà Nội - Đà Nẵng</strong></h4>
          <table class="table">
            <thead class="">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Nhà xe</th>
                <th scope="col">Nơi đi</th>
                <th scope="col">Nơi đến</th>
                <th scope="col">Đặt xe</th>
                <th scope="col">Thông tin nhà xe</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <form action="">
                  <th>Quốc Lê1</th>
                  <td>
                    <div class="form-group">
                      <input
                        type="text"
                        name="startPlace"
                        readonly
                        class="form-control-plaintext"
                        value="Đà Nẵng"
                      />
                    </div>
                  </td>
                  <td>
                    <div class="form-group">
                      <input
                        type="text"
                        name="endPlace"
                        readonly
                        class="form-control-plaintext"
                        value="Nhà Quốc"
                      />
                    </div>
                  </td>
                  <td>
                    <button
                      class="btn btn-outline-primary"
                      name="search"
                      value="Tìm Kiếm"
                    >
                      Đặt Xe
                    </button>
                  </td>
                </form>
                <td>
                  <a href="#" class="btn btn-outline-primary"
                    >Thông tin nhà xe</a
                  >
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </section>

    <!-- footer part start-->
    <%@ include file="common/footer.jsp" %>
    <!-- footer part end-->

    <!-- Link jquery -->
    <%@ include file="common/botbootstrap.jsp" %>
  </body>
</html>
