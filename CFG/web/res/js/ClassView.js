// DoughnutChart.js and LineChart.js
// Student
// This chat is to demonstrate the positive and
// negative or static marks for total questions


// var stuRespData = JSON.parse("https://cfgtestdrive.firebaseio.com/Student%20Responses.json");
// var quesData = JSON.parse("https://cfgtestdrive.firebaseio.com/Question.json");
// var keyData = JSON.parse("https://cfgtestdrive.firebaseio.com/Keystome.json");

// var cid = 0;
// var sid = 0;
// var qid = 0;
// var mk = 0;

// var keyNegSum = [];

// for (var i = 0; i < stuRespData.length; i++) {
//     cid = stuRespData[i][0][0];
//     sid = stuRespData[i][0][1];

//     for (var j = 0; j < 2; j++) {
//         qid = data[i][j][2][0];
//         mk = data[i][j][2][1];

//         for (var g = 0; g < quesData.length; g++) {
//             if (g == qid && quesData[g][5] == "neg") {

//             } else if (g == qid && quesData[g][5] == "pos") {

//             }
//         }
//     }
// }


var chart1 = new CanvasJS.Chart("chartPie",
                                  {
                                      title: {
                                          text: "Positive Feedback Overall"
                                      },

                                      data: [{
                                          type: "pie",
                                          startAngle: 45,
                                          showInLegend: "true",
                                          legendText: "{label}",
                                          indexLabel: "{label} ({y})",
                                          yValueFormatString:"#,##0.#"%"",
                                          dataPoints: [
                                              { label: "Growth-Orientedness", y: 25 },
                                              { label: "Confidence", y: 6 },
                                              { label: "Strategic Thinking", y: 7 },
                                              { label: "Team Orientedness", y: 8 },
                                              { label: "Personal Productivity", y: 6 },
                                          ]
                                      }]
                                  });

// var dataPoints = [
//     { x : 1, y : 2 },
//                  ];

// var options =  {
//     animationEnabled: true,
//     theme: "light2",
//     title: {
//         text: "All students pre-post Feedback"
//     },
//     axisX: {
//         valueFormatString: "#",
//     },
//     axisY: {
//         title: "Total Score",
//         titleFontSize: 24,
//         includeZero: false
//     },
//     data: [{
//         type: "line",
//         yValueFormatString: "#",
//         dataPoints: dataPoints
//     }]
// };

// function addData(data) {
//     var cid = 0;
//     var sid = 0;
//     var qid = 0;
//     var mk = 0;
//     for (var i = 0; i < data.length; i++) {
//         for (var j = 0; j < 2; j++) {
//         // dataPoints.push({
//         //     x: data[i].totalScore,
//         //     y: data[i].units
//             // });
//             cid = data[i][0][0];
//             sid = data[i][0][1];
//             qid = data[i][j][2][0];
//             mk = data[i][j][2][1];

//             for
//         }
//     }
//     $("#chartLine").CanvasJSChart(options);
// }
// $.getJSON("https://cfgtestdrive.firebaseio.com/Student%20Responses.json", addData);

chart1.render();
// options.render();
