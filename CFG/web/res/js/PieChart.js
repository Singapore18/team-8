// PieChar.js
// This chart is to show how many students feedback
// positive and negative
window.onload = function() {

    var options = {
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
    };
    $("#chartContainer").CanvasJSChart(options);
}