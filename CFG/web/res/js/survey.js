Survey.defaultBootstrapCss.navigationButton = "btn btn-green";
Survey.defaultBootstrapCss.rating.item = "btn btn-default my-rating";
Survey.StylesManager.applyTheme("bootstrap");

var json = { pages: [
    {questions: [
        { type: "matrix", name: "Quality", title: "Please mark the following",
          columns: [{ value: 1, text: "1" },
                    { value: 2, text: "2" },
                    { value: 3, text: "3" },
                    { value: 4, text: "4" },
                    { value: 5, text: "5" },
                    { value: 6, text: "6" },
                    { value: 7, text: "7" }],
          rows: [{ value: "affordable", text: "Product is affordable" },
                 { value: "does what it claims", text: "Product does what it claims" },
                 { value: "better then others", text: "Product is better than other products on the market" },
                 { value: "easy to use", text: "Product is easy to use" }]},

    ]}
] };

window.survey = new Survey.Model(json);

survey.onComplete.add(function(result) {
    document.querySelector('#surveyResult').innerHTML = "result: " + JSON.stringify(result.data);
});

$("#surveyElement").Survey({
    model: survey
});
