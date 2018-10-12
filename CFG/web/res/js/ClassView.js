// DoughnutChart.js and LineChart.js
// Student
// This chat is to demonstrate the positive and
// negative or static marks for total questions

var chart1 = new CanvasJS.Chart("chartPie",
                                  {
                                      title: {
                                          text: "Feedback of the class"
                                      },

                                      data: [{
                                          type: "pie",
                                          startAngle: 45,
                                          showInLegend: "true",
                                          legendText: "{label}",
                                          indexLabel: "{label} ({y})",
                                          yValueFormatString:"#,##0.#"%"",
                                          dataPoints: [
                                              { label: "Growth-Orientedness", y: 36 },
                                              { label: "Confidence", y: 31 },
                                              { label: "Strategic Thinking", y: 7 },
                                              { label: "Team Orientedness", y: 7 },
                                              { label: "Personal Productivity", y: 6 },
                                          ]
                                      }]
                                  });

var dataPoints = [];

var options =  {
    animationEnabled: true,
    theme: "light2",
    title: {
        text: "All students pre-post Feedback"
    },
    axisX: {
        valueFormatString: "#",
    },
    axisY: {
        title: "Total Score",
        titleFontSize: 24,
        includeZero: false
    },
    data: [{
        type: "line",
        yValueFormatString: "#",
        dataPoints: dataPoints
    }]
};

function addData(data) {
    for (var i = 0; i < data.length; i++) {
        dataPoints.push({
            x: data[i].totalScore,
            y: data[i].units
        });
    }
    $("#chartLine").CanvasJSChart(options);
}
$.getJSON("json name", addData);

chart1.render();
options.render();
