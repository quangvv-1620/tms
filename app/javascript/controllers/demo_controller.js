import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.initCalendar()
  }

  demo() {
    console.log("this is demo...")
  }

  initCalendar() {
    // $('#calendar').daterangepicker()
    $('#calendar').daterangepicker();
    $('#calendar').on('apply.daterangepicker', function(ev, picker) {
      console.log(picker.startDate.format('YYYY-MM-DD'));
      console.log(picker.endDate.format('YYYY-MM-DD'));
    });
    // $('input[name="datetimes"]').daterangepicker({
    //   timePicker: true,
    //   startDate: moment().startOf('hour'),
    //   endDate: moment().startOf('hour').add(32, 'hour'),
    //   locale: {
    //     format: 'M/DD hh:mm A'
    //   }
    // });
  }
}
