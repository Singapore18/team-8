// BarChart.js and PieChar.js
// Class
// This BarChart is used to the demonstrate each student
// attitude changes in total questions

var chart1 = new CanvasJS.Chart("chartBar",
                                  {
                                      title:{
                                          text: "Each student attitude changes via categoires"
                                      },
                                      data: [
                                          {
                                              type: "bar",
                                              dataPoints: [
                                                  { y: 12, label: "Growth-Orientedness"},
                                                  { y: 9, label: "Confidence"},
                                                  { y: 2, label: "Strategic Thinking"},
                                                  { y: 23, label: "Team Orientedness"},
                                                  { y: 16, label: "Personal Productivity"}
                                              ]
                                          },
                                          {
                                              type: "bar",
                                              dataPoints: [
                                                  { y: 3, label: "Growth-Orientedness"},
                                                  { y: 7, label: "Confidence"},
                                                  { y: 23, label: "Strategic Thinking"},
                                                  { y: 22, label: "Team Orientedness"},
                                                  { y: 19, label: "Personal Productivity"}
                                              ]
                                          }]
                                  });

var chart2 = new CanvasJS.Chart("chartDoughnut",
                                {
                                    title:{
                                        text: "Each student attitude changes"
                                    },
                                    data: [
                                        {
                                            type: "doughnut",
                                            dataPoints: [
                                                {  y: 53, indexLabel: "Increased" },
                                                {  y: 35, indexLabel: "Decreased" },
                                                {  y: 12, indexLabel: "Static" }
                                            ]
                                        }
                                    ]
                                });

chart1.render();
chart2.render();
