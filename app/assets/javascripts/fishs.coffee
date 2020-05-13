<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"></script>
  <script>
    var ctx = document.getElementById("onGraph");
    var onGraph = new Chart(ctx, {
        type: 'bar', // チャートのタイプ
        data: { // チャートの内容
          labels: [@fish.day],
          datasets: [{
          data: [@fish.number],
          backgroundColor: 'rgba(255, 99, 132, 0.2)',
          borderWidth: 1
          }]
        },
            });
        </script>