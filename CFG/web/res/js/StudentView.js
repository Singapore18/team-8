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
                                                  { y: 198, label: "Growth-Orientedness"},
                                                  { y: 201, label: "Confidence"},
                                                  { y: 202, label: "Strategic Thinking"},
                                                  { y: 236, label: "Great Britain"},
                                                  { y: 395, label: "Soviet Union"},
                                                  { y: 957, label: "USA"}
                                              ]
                                          },
                                          {
                                              type: "bar",
                                              dataPoints: [
                                                  { y: 166, label: "Italy"},
                                                  { y: 144, label: "China"},
                                                  { y: 223, label: "France"},
                                                  { y: 272, label: "Great Britain"},
                                                  { y: 319, label: "Soviet Union"},
                                                  { y: 759, label: "USA"}
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
                                                {  y: 53, indexLabel: "Potivite" },
                                                {  y: 35, indexLabel: "Negative" },
                                                {  y: 12, indexLabel: "Static" }
                                            ]
                                        }
                                    ]
                                });

chart1.render();
chart2.render();
