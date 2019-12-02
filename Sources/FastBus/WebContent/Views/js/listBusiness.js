    function chilTable(arrayTrips){

      let contentTable;
      if(arrayTrips){
        contentTable = arrayTrips.map((item)=>
          `<tr id="a" class="text-center">
          <td class="text-center"><input type="time" value="${item.startTime}" 
          class="form-control-plaintext text-center w-100" readonly ></td>
          <td class="text-center">${item.totalTime} Tiếng</td>
          <td>${new Intl.NumberFormat('it-IT',
          { style: 'currency',
           currency: 'VND' }).format(Number(parseInt(item.price)))}</td>

          <td class="text-center"><a href="${window.location.origin+"/FastBus/SeatBookingServlet"+"?idTrip="+item.idTrip}" id="${item.idTrip}">Đặt vé</a></td>
          </tr>
          `
          ).join("");
      }

      let header =`<tr class="chilTable" style="display: none">
      <td colspan="7">
      <div class="w-75 mx-auto">
      <table class="table table-bordered">
      <thead>
      <th scope="col" class="text-center">Giờ Xe Chạy</th>
      <th scope="col" class="text-center">Thời gian xe chạy dự kiến</th>
      <th scope="col" class="text-center">Giá Tiền</th>
      <th scope="col" class="text-center">Đặt Xe</th>
      </thead>
      <tbody>
      ${contentTable}
      </tbody>
      </table>
      </div>
      </td>
      </tr>`;
      return header;
    }