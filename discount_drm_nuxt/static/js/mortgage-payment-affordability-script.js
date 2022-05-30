
function addCommas(nStr) {
    nStr += '';
    x = nStr.split('.');
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
      x1 = x1.replace(rgx, '$1' + ',' + '$2');
    }
    return x1 + x2;
}
String.prototype.replaceAll = function(search, replacement) {
    var target = this;
    return target.replace(new RegExp(search, 'g'), replacement);
};
    var debounce = function(callback, delay) {
      var debounceTimeout = null;
      return function() {
        var context = this;
        var args = arguments;
        if (debounceTimeout) {
          clearTimeout(debounceTimeout);
        }
        debounceTimeout = setTimeout(function() {
          callback.apply(context, args);
        }, delay);
      };
    };
jQuery(document).ready(function($){

    // Global Variable

    var changed_property_tax = false;

    // Helper func
    $("input:text").focus(function() { $(this).select(); } );
    var disableAndDisplayLoading = function(){
      $("form.calculator-input-box input").attr( "disabled", "disabled" );
    }
    var enableAndHideLoading = function(){
      $("form.calculator-input-box input:not(.disabled)").removeAttr("disabled" );
    }
    var homePriceFromMonthlyPayDownPay = function(monthlyPayment,monthlyIntRate,loanTerm,monPropertyTax,downPayment,privateMortgageInsurance){
      return ((Math.pow((monthlyIntRate+1),loanTerm)-1)*monthlyPayment+(downPayment*Math.pow((monthlyIntRate+1),loanTerm)-downPayment)*privateMortgageInsurance+downPayment*monthlyIntRate*Math.pow((monthlyIntRate+1),loanTerm))/((Math.pow((monthlyIntRate+1),loanTerm)-1)*monPropertyTax+(Math.pow((monthlyIntRate+1),loanTerm)-1)*privateMortgageInsurance+monthlyIntRate*Math.pow((monthlyIntRate+1),loanTerm));
    }
    var homePriceFromMonthlyPay = function(monthlyPayment,monthlyIntRate,loanTerm,monPropertyTax,downPayPer,privateMortgageInsurance){
      return (Math.pow((monthlyIntRate+1),loanTerm)-1)*monthlyPayment/((Math.pow((monthlyIntRate+1),loanTerm)-1)*monPropertyTax+((1-downPayPer)*Math.pow((monthlyIntRate+1),loanTerm)+downPayPer-1)*privateMortgageInsurance+(1-downPayPer)*monthlyIntRate*Math.pow((monthlyIntRate+1),loanTerm));
    }

    var PMIPercent = function(downPayPer){
      if( downPayPer < 0.05 ){
        return 0.0130;
      } else if ( downPayPer < 0.10 ) {
        return 0.0068;
      } else if ( downPayPer < 0.15 ) {
        return 0.0051;
      } else if ( downPayPer < 0.20 ) {
        return 0.0036;
      } else {
        return 0;
      }
    }
    var monthlyPayFromPrincipal = function(monthlyIntRate, loanTerm, principal) {
      return monthlyIntRate * principal * Math.pow((1 + monthlyIntRate), loanTerm) / (Math.pow((1 + monthlyIntRate), loanTerm) - 1);
    }
    var numInput = function(input){return Number(input.replace(/[^0-9\.]+/g,""));}
    var numToCurrency = function(number){return "$" + number.toFixed(0).replace(/\B(?=(\d{3})+(?!\d))/g, ",");}
    var numToPercent = function(number){return parseFloat(number.toFixed(3)) + "%";}


    function maskNum(x) {
      try {
        return x.toLocaleString('en-US', {useGrouping:'true', maximumFractionDigits:0 });
      }
      catch (error){
        console.log( "Error: "+ error)
      }
    }

    function trackClickEvt( category, label ){
      if (typeof(ga) !== "undefined") {
        ga('send', 'event', category, 'click', label);
      }
    }

    // Taxes by State:
    var stateTaxRates = { 'AK':1.04, 'AL':0.33, 'AR':0.52, 'AZ':0.72, 'CA':0.74,
    'CO':0.6, 'CT':1.63, 'DC':0.46, 'DE':0.43, 'FL':0.97, 'GA':0.83, 'HI':0.26,
    'IA':1.29, 'ID':0.69, 'IN':0.85, 'IL':1.73, 'KS':1.29, 'KY':0.72, 'LA':0.18,
    'MA':1.04, 'MD':0.87, 'ME':1.09, 'MI':1.62, 'MN':1.05, 'MO':0.91, 'MS':0.52,
    'MT':0.83, 'NE':1.76, 'NC':0.78, 'ND':1.42, 'NH':1.86, 'NJ':1.89, 'NM':0.55,
    'NV':0.84, 'NY':1.23, 'OH':1.36, 'OK':0.74, 'OR':0.87, 'PA':1.35, 'RI':1.35,
    'SC': 0.5, 'SD':1.28, 'TN':0.68, 'TX':1.81, 'UT':0.6, 'VA':0.74, 'VT':1.59,
    'WA':0.92, 'WV':0.49, 'WI':1.76, 'WY':0.58 };

    //
    // "Switch-to" functions
    //
    var switchHomePrice = function(){
      $("#initial-choice-home-price").addClass("selected-choice");
      $("#initial-choice-income").removeClass("selected-choice");
      $("#initial-choice-monthly-payment").removeClass("selected-choice");
      $(".js-from-home-price").show();
      $(".js-from-income").hide();
      $(".js-from-monthly-payment").hide();
      init_hpChart();
      calculateHomePrice();
    }
    var switchIncome = function(){
      $("#initial-choice-home-price").removeClass("selected-choice");
      $("#initial-choice-income").addClass("selected-choice");
      $("#initial-choice-monthly-payment").removeClass("selected-choice");
      $(".js-from-home-price").hide();
      $(".js-from-income").show();
      $(".js-from-monthly-payment").hide();
      calculateIncome();
    }
    var switchMonthlyPayment = function(){
      $("#initial-choice-home-price").removeClass("selected-choice");
      $("#initial-choice-income").removeClass("selected-choice");
      $("#initial-choice-monthly-payment").addClass("selected-choice");
      $(".js-from-home-price").hide();
      $(".js-from-income").hide();
      $(".js-from-monthly-payment").show();
      calculateMonthlyPay();
    }
    //
    // Initial choices
    //
    $("#initial-choice-home-price").on('click',function(){
      switchHomePrice();
      trackClickEvt('Mortgage Calculator', 'Tab: By Home Price');
    });
    $("#initial-choice-income").on('click',function(){
      switchIncome();
      trackClickEvt('Mortgage Calculator', 'Tab: By Income');
    });
    $("#initial-choice-monthly-payment").on('click',function(){
      switchMonthlyPayment();
      trackClickEvt('Mortgage Calculator', 'Tab: By Monthly Payment');
    });

    //  Switch Functions
    $(".switch-choice-from-home-price").on('click',function(){
      switchHomePrice();
    });
    $(".switch-choice-from-income").on('click',function(){
      switchIncome();
    });
    $(".switch-choice-from-monthly-payment").on('click',function(){
      switchMonthlyPayment();
    });


    // Switchers for the 3 calculators
    $(".mc-toggle-button").on("click", function(){
      var toggleBtnSet = $(this).parent();
      var loanTermInp = toggleBtnSet.find("input");
      loanTermInp.val($(this).attr("data-months"));
      var loanTerm = parseInt($(this).attr("data-value"));
      // console.log(this,toggleBtnSet)

      if (!$(this).hasClass('mc-toggle-button--selected')) {
        // toggleBtnSet.children("div").toggleClass("mc-toggle-button--selected");
        toggleBtnSet.children("div").removeClass("mc-toggle-button--selected");
        $(this).addClass('mc-toggle-button--selected')

        if ( loanTermInp.is("#hPrice-loanTermInMonths")){
          $("#hPrice-interest-rate").val(numToPercent((loanTerm === 15) ? intRate15 : intRate30));
          calculateHomePrice();
        }
        else if ( loanTermInp.is("#income-loanTermInMonths")){
          $("#income-interest-rate").val(numToPercent((loanTerm === 15) ? intRate15 : intRate30));
          calculateIncome();
        }
        else if ( loanTermInp.is("#mPay-loanTermInMonths")){
          $("#mPay-interest-rate").val(numToPercent((loanTerm === 15) ? intRate15 : intRate30));
          calculateMonthlyPay();
        }
      }
    });

    // Select the user's State each State dropdown
    var userState = "AZ";
    $("#hPrice-state").val(userState);
    $("#income-state").val(userState);
    $("#mPay-state").val(userState);

    // Default the Interest Rate to 30 Values coming from the API
    var intRate15 = 3.063;
    var intRate30 = 3.063;
    $("#hPrice-interest-rate").val(numToPercent(intRate30));
    $("#income-interest-rate").val(numToPercent(intRate30));
    $("#mPay-interest-rate").val(numToPercent(intRate30));

    /*--------Home Price------------*/


    // First Option displaying
    var loanAmount = numInput($("#hPrice-loan-amount").val());
    var monthlyIntRate = numInput($("#hPrice-interest-rate").val()) / 1200;
    var loanTerm = numInput($("#hPrice-loanTermInMonths").val());
    var downPayment = numInput($("#hPrice-down-payment-amount").val());
    var principalAmount = loanAmount - downPayment;
    var principalAndInterest = monthlyPayFromPrincipal(monthlyIntRate,loanTerm,principalAmount);
    var monPropertyTax = loanAmount * stateTaxRates[userState] / 100 / 12;
    var monHomeInsure = numInput($("#hPrice-home-insurance").val()) / 12;
    var pmiPayment = principalAmount * PMIPercent(downPayment/loanAmount)/12;
    var hoa = numInput($("#hPrice-hoa").val());
    var monthlyPayment = pmiPayment + monPropertyTax + monHomeInsure + principalAndInterest + hoa;

    // Setup Inputs
    $("#hPrice-property-tax").val( numToCurrency((stateTaxRates[userState] * loanAmount) / 1200));

    // Payment Breakdown Values
    $("#hPrice-breakdown-principalAndInterest").html(numToCurrency(principalAndInterest))
    $("#hPrice-breakdown-convPrivateMortgageInsurance").html(numToCurrency(pmiPayment));
    $("#hPrice-breakdown-propertyTax").html(numToCurrency(monPropertyTax));
    $("#hPrice-breakdown-monthlyHomeownersInsurance").html(numToCurrency(monHomeInsure));
    $("#hPrice-breakdown-hoaAndOther").html(numToCurrency(hoa));


    Chart.pluginService.register({
      beforeDraw: function(chart) {
        var width = chart.chart.width,
            height = chart.chart.height,
            ctx = chart.chart.ctx;

        ctx.restore();
        ctx.font = 0.065* height + "px sans-serif";
        ctx.textBaseline = "middle";
        ctx.fillStyle = '#324960';

        var text = 'Your Monthly';
        textX = Math.round((width - ctx.measureText(text).width) / 2);
        textY = height * 0.30;
        ctx.fillText(text, textX, textY);

        var text = 'Estimated Payment';
        textX = Math.round((width - ctx.measureText(text).width) / 2);
        textY = height * 0.40;
        ctx.fillText(text, textX, textY);

        ctx.font = "bold " +  0.19 * height + "px 'Open Sans', sans-serif";
        var paytext = "$" + maskNum(monthlyPayment);
        textX = Math.round((width - ctx.measureText(paytext).width) / 2);
        textY = height * 0.60;
        ctx.fillText(paytext, textX, textY);

        ctx.save();
      }
    });

    var ctx = $('#hPrice-monthly-pie-chart');

    var options = {
        cutoutPercentage: 78,
        rotation: 0,
        legend: {
            display: false,
        },
        tooltips: {
            callbacks: {
                label:function(tooltipItem, chart){
                    var index = tooltipItem.index;
                    var text = chart.labels[index];
                    var value = chart.datasets[0].data[index];
                    return  text + ": $" + maskNum(value);
                }
            }
        }
    };

    var hpChart = new Chart(ctx, {
      type: 'doughnut',
      data: {},
      options: options
    });
    function init_hpChart(){
        hpChart.update();
    }

    // Home Price Calc
    var calculateHomePrice = function(){
      disableAndDisplayLoading();

      loanAmount = numInput($("#hPrice-loan-amount").val());
      monthlyIntRate = numInput($("#hPrice-interest-rate").val()) / 1200;
      loanTerm = numInput($("#hPrice-loanTermInMonths").val());
      downPayment = numInput($("#hPrice-down-payment-amount").val());
      principalAmount = loanAmount - downPayment;
      principalAndInterest = monthlyPayFromPrincipal(monthlyIntRate,loanTerm,principalAmount);
      if (!changed_property_tax) {
        monPropertyTax = loanAmount * stateTaxRates[userState] / 100 / 12;
      } else {
        monPropertyTax = numInput($("#hPrice-property-tax").val());
      }
      monHomeInsure = numInput($("#hPrice-home-insurance").val()) / 12;
      pmiPayment = principalAmount * PMIPercent(downPayment/loanAmount)/12;
      hoa = numInput($("#hPrice-hoa").val());
      monthlyPayment = pmiPayment + monPropertyTax + monHomeInsure + principalAndInterest + hoa;

      //  Results
      $("#hPrice-breakdown-principalAndInterest").html(numToCurrency(principalAndInterest))
      $("#hPrice-breakdown-convPrivateMortgageInsurance").html(numToCurrency(pmiPayment));
      $("#hPrice-state").val(userState);
      if (!changed_property_tax) {
        $("#hPrice-property-tax").val(numToCurrency(monPropertyTax));
      }
      $("#hPrice-breakdown-propertyTax").html(numToCurrency(monPropertyTax));
      $("#hPrice-breakdown-monthlyHomeownersInsurance").html(numToCurrency(monHomeInsure));
      $("#hPrice-breakdown-hoaAndOther").html(numToCurrency(hoa));


      var updatedData = {
        datasets: [{
          data: [
            Math.round(principalAndInterest),
            Math.round(pmiPayment),
            Math.round(monPropertyTax),
            Math.round(monHomeInsure),
            Math.round(hoa)
          ],
          backgroundColor: [
            "#F1295F",
            "#F0E128",
            "#29F1A9",
            "#2990F1",
            "#9028F0"
          ]
        }],
        labels: [
          'Principal & Interest',
          'PMI',
          'Property Tax',
          'Home Insurance',
          'HOA/Other'
        ]
      }

      // Color Payment Breakdown legends
      for(var i = 0; i < updatedData.datasets[0].data.length; i++){
          $(".mc-breakdown-fields li:nth-child("+(i+1)+")").css("color", updatedData.datasets[0].backgroundColor[i]);
      }

      hpChart.data = updatedData;
      hpChart.update();

      // Show Done
      enableAndHideLoading();
    }

    //
    // Inputs Updates
    //
    $("#hPrice-state").on("change", function(){
      changed_property_tax = false;
      $("#hPrice-property-tax").val( numToCurrency((stateTaxRates[this.value] * loanAmount) / 1200));
      userState = this.value;
      calculateHomePrice();
    });
    $("#hPrice-loan-amount").on('change',function(){
      loanAmount = numInput(this.value);
      this.value = numToCurrency(loanAmount);
      downPayPer = numInput($("#hPrice-down-payment-percent").val());
      $("#hPrice-down-payment-amount").val(numToCurrency((loanAmount * downPayPer)/100));
      calculateHomePrice();
    });
    $("#hPrice-interest-rate").on('change',function(){
      var loanTerm = numInput($("#hPrice-loanTermInMonths").val()) / 12;
      if (this.value === '' || this.value === '0') {
        this.value = numToPercent((loanTerm === 15) ? intRate15 : intRate30);
      } else {
        this.value = numToPercent(numInput(this.value));
      }
      calculateHomePrice();
    });
    $("#hPrice-down-payment-amount").on('change',function(){
      var downPayment = numInput(this.value);
      this.value = numToCurrency(downPayment);
      var loanAmount = numInput($("#hPrice-loan-amount").val());
      var downPayPer = (downPayment / loanAmount) * 100;
      $("#hPrice-down-payment-percent").val(numToPercent(downPayPer));
      calculateHomePrice();
    });
    $("#hPrice-down-payment-percent").on('change',function(){
      var downPayPer = numInput(this.value);
      this.value = numToPercent(downPayPer);
      var loanAmount = numInput($("#hPrice-loan-amount").val());
      var downPayment = (downPayPer * loanAmount) / 100;
      $("#hPrice-down-payment-amount").val(numToCurrency(downPayment));
      calculateHomePrice();
    });
    $("#hPrice-property-tax").on('keyup', function(){
      changed_property_tax = true;
      debounce(function(){
        this.value = this.value;
      }, 500);
    });
    $("#hPrice-property-tax").on('blur', function(){
        this.value = numToCurrency(numInput(this.value));
    });
    $("#hPrice-property-tax").on('change',function(){
      if ( ! changed_property_tax ) {
        this.value = numToCurrency((stateTaxRates[userState] * loanAmount) / 1200);
      }
      calculateHomePrice();
    });
    $("#hPrice-home-insurance").on('change',function(){
      this.value = numToCurrency(numInput(this.value));
      calculateHomePrice();
    });
    $("#hPrice-hoa").on('change',function(){
      this.value = numToCurrency(numInput(this.value));
      console.log(numToCurrency(numInput(this.value)))
      calculateHomePrice();
    });

    /*---------Income--------------*/
    var calculateIncome = function(){
      // Show that js is working
      disableAndDisplayLoading();
      var income = numInput($("#income-income").val());
      var debtToIncome = $("#income-debt-to-income").val() / 100;
      var monthlyDebts = numInput($("#income-monthly-debts").val());
      var monthlyMi = numInput($("#monthly-mi").val());
      monthlyPayment = ((income / 12) * debtToIncome) - monthlyDebts;
      var hoa = numInput($("#income-hoa").val());
      monthlyPayment -= hoa;
      var monHomeInsure = numInput($("#income-home-insurance").val()) / 12;
      monthlyPayment -= monHomeInsure
      var monthlyIntRate = numInput($("#income-interest-rate").val()) / 1200;
      var loanTerm = numInput($("#income-loanTermInMonths").val());
      // If the user interacted with the Property Tax input, use that value
      if (!changed_property_tax) {
        monPropertyTax = stateTaxRates[userState] / 1200;
      } else {
        monPropertyTax = numInput($("#income-property-tax").val()) / 1200;
      }
      var downPayPer = numInput($("#income-down-payment-percent").val()) / 100;
      var PMI = PMIPercent(downPayPer);
      var loanAmount = homePriceFromMonthlyPay(monthlyPayment,monthlyIntRate,loanTerm,monPropertyTax,downPayPer,PMI/12);
      var downPayment = downPayPer * loanAmount;
      var monPropertyTaxPayment = loanAmount * monPropertyTax;
      var principalAmount = loanAmount * (1 - downPayPer);
      var principalAndInterest = monthlyPayFromPrincipal(monthlyIntRate,loanTerm,principalAmount);
      var pmiPayment = principalAmount * PMI/12;
      //
      // Output Results
      //
      $("#income-down-payment-amount").val(numToCurrency(downPayment));
      $("#income-state").val(userState);
      if (!changed_property_tax) {
        $("#income-property-tax").val(numToPercent(stateTaxRates[userState]));
      }
      $("#income-output-home-price").html('' + numToCurrency(loanAmount));
      $("#income-output-home-price_input").val(numToCurrency(loanAmount));
      $("#income-output-monthly-payment").html('' + numToCurrency(pmiPayment + monPropertyTaxPayment + monHomeInsure + principalAndInterest + hoa + monthlyMi))
      // Show done
      enableAndHideLoading();
    }



     //
    // Inputs Updates
    $("#income-income").on('change',function(){
      var income = numInput($("#income-income").val());
      this.value = numToCurrency(income);
      var debtToIncome = $("#income-debt-to-income").val() / 100;
      var monthlyDebts = numInput($("#income-monthly-debts").val());
      monthlyPayment = ((income / 12) * debtToIncome) - monthlyDebts;
      var hoa = numInput($("#income-hoa").val());
      monthlyPayment -= hoa;
      var monHomeInsure = numInput($("#income-home-insurance").val()) / 12;
      monthlyPayment -= monHomeInsure
      var monthlyIntRate = numInput($("#income-interest-rate").val()) / 1200;
      var loanTerm = numInput($("#income-loanTermInMonths").val());
      var monPropertyTax = numInput($("#income-property-tax").val()) / 1200;
      var downPayPer = numInput($("#income-down-payment-percent").val()) / 100;
      var PMI = PMIPercent(downPayPer);
      var loanAmount = homePriceFromMonthlyPay(monthlyPayment,monthlyIntRate,loanTerm,monPropertyTax,downPayPer,PMI/12);
      var downPayment = loanAmount * downPayPer;
      $("#income-down-payment-amount").val(numToCurrency(downPayment));
      calculateIncome();
    });
    $("#income-monthly-debts").on('change',function(){
      this.value = numToCurrency(numInput(this.value));
      var downPayPer = numInput($("#income-down-payment-percent").val()) / 100;
      calculateIncome();
    });
    $("#income-debt-to-income").on('change',function(){

      calculateIncome();
    });
    $("#income-interest-rate").on('change',function(){
      var loanTerm = numInput($("#income-loanTermInMonths").val()) / 12;
      if (this.value === '' || this.value === '0') {
        this.value = numToPercent((loanTerm === 15) ? intRate15 : intRate30);
      } else {
        this.value = numToPercent(numInput(this.value));
      }
      calculateIncome();
    });
    $("#income-down-payment-amount").on('change',function(){
      var downPayment = numInput(this.value);
      this.value = numToCurrency(downPayment);
      var income = numInput($("#income-income").val());
      var debtToIncome = $("#income-debt-to-income").val() / 100;
      var monthlyDebts = numInput($("#income-monthly-debts").val());
      monthlyPayment = ((income / 12) * debtToIncome) - monthlyDebts;
      var hoa = numInput($("#income-hoa").val());
      monthlyPayment -= hoa;
      var monHomeInsure = numInput($("#income-home-insurance").val()) / 12;
      monthlyPayment -= monHomeInsure
      var monthlyIntRate = numInput($("#income-interest-rate").val()) / 1200;
      var loanTerm = numInput($("#income-loanTermInMonths").val());
      var downPayment = numInput($("#income-down-payment-amount").val());
      var monPropertyTax = numInput($("#income-property-tax").val()) / 1200;
      var downPayPer = 0.20;
      do{
        calcPMI = PMIPercent(downPayPer);
        var loanAmount = homePriceFromMonthlyPayDownPay(monthlyPayment,monthlyIntRate,loanTerm,monPropertyTax,downPayment,calcPMI/12);
        var downPayPer = (downPayment / loanAmount);
      }while(calcPMI < PMIPercent(downPayPer));
      downPayPer *= 100;
      $("#income-down-payment-percent").val(numToPercent(downPayPer));
      calculateIncome();
    });
    $("#income-down-payment-percent").on('change',function(){
      var downPayPer = numInput(this.value);
      this.value = numToPercent(downPayPer);
      downPayPer = downPayPer / 100;
      var income = numInput($("#income-income").val());
      var debtToIncome = $("#income-debt-to-income").val() / 100;
      var monthlyDebts = numInput($("#income-monthly-debts").val());
      monthlyPayment = ((income / 12) * debtToIncome) - monthlyDebts;
      var hoa = numInput($("#income-hoa").val());
      monthlyPayment -= hoa;
      var monHomeInsure = numInput($("#income-home-insurance").val()) / 12;
      monthlyPayment -= monHomeInsure
      var monthlyIntRate = numInput($("#income-interest-rate").val()) / 1200;
      var loanTerm = numInput($("#income-loanTermInMonths").val());
      var monPropertyTax = numInput($("#income-property-tax").val()) / 1200;
      var PMI = PMIPercent(downPayPer);
      var loanAmount = homePriceFromMonthlyPay(monthlyPayment,monthlyIntRate,loanTerm,monPropertyTax,downPayPer,PMI/12);
      var downPayment = (downPayPer * loanAmount);
      $("#income-down-payment-amount").val(numToCurrency(downPayment));
      calculateIncome();
    });

    $("#income-home-insurance").on('change',function(){
      this.value = numToCurrency(numInput(this.value));
      calculateIncome();
    });
    $("#income-hoa").on('change',function(){
      this.value = numToCurrency(numInput(this.value));
      calculateIncome();
    });
    $("#income-state").on("change", function(){
      changed_property_tax = false;
      $("#income-property-tax").val( numToPercent(stateTaxRates[this.value]));
      userState = this.value;
      calculateIncome();
    });
    $("#income-property-tax").on('keyup', function(){
      changed_property_tax = true;
      debounce(function(){
        this.value = this.value;
      }, 500);
    });
    $("#income-property-tax").on('blur', function(){
        this.value = numToPercent(numInput(this.value));
    });
    $("#income-property-tax").on('change',function(){
      if ( ! changed_property_tax ) {
        this.value = stateTaxRates[userState] / 1200;
      }
      calculateIncome();
    });



    /*-----Monthly Payment--------------*/
    var calculateMonthlyPay = function(){
      // Show that js is working
      disableAndDisplayLoading();
      var monthlyPayment = numInput($("#mPay-monthly-payment").val());
      var hoa = numInput($("#mPay-hoa").val());
      monthlyPayment -= hoa;
      var monHomeInsure = numInput($("#mPay-home-insurance").val()) / 12;
      monthlyPayment -= monHomeInsure;
      var monthlyIntRate = numInput($("#mPay-interest-rate").val()) / 1200;
      var loanTerm = numInput($("#mPay-loanTermInMonths").val());
      // If the user interacted with the Property Tax input, use that value
      if (!changed_property_tax) {
        monPropertyTax = stateTaxRates[userState] / 1200;
      } else {
        monPropertyTax = numInput($("#income-property-tax").val()) / 1200;
      }
      var downPayPer = numInput($("#mPay-down-payment-percent").val()) / 100;
      var PMI = PMIPercent(downPayPer);
      var loanAmount = homePriceFromMonthlyPay(monthlyPayment,monthlyIntRate,loanTerm,monPropertyTax,downPayPer,PMI/12);
      var downPayment = downPayPer * loanAmount;
      var principalAmount = loanAmount * (1 - downPayPer);
      var principalAndInterest = monthlyPayFromPrincipal(monthlyIntRate,loanTerm,principalAmount);
      var pmiPayment = principalAmount * PMI/12;

      //  Results
      $("#mPay-down-payment-amount").val(numToCurrency(downPayment));
      $("#mPay-state").val(userState);
      if (!changed_property_tax) {
        $("#mPay-property-tax").val(numToPercent(stateTaxRates[userState]));
      }
      $("#mPay-output-home-price").html('' + numToCurrency(loanAmount));
      $("#mPay-output-home-price_input").val(numToCurrency(loanAmount));

      enableAndHideLoading();
    }

    // Input Updates
    $("#mPay-monthly-payment").on('change',function(){
      monthlyPayment = numInput(this.value);
      this.value = numToCurrency(monthlyPayment);
      var hoa = numInput($("#mPay-hoa").val());
      monthlyPayment -= hoa;
      var monHomeInsure = numInput($("#mPay-home-insurance").val()) / 12;
      monthlyPayment -= monHomeInsure
      var monthlyIntRate = numInput($("#mPay-interest-rate").val()) / 1200;
      var loanTerm = numInput($("#mPay-loanTermInMonths").val());
      var monPropertyTax = numInput($("#mPay-property-tax").val()) / 1200;
      var downPayPer = numInput($("#mPay-down-payment-percent").val()) / 100;
      var PMI = PMIPercent(downPayPer);
      var loanAmount = homePriceFromMonthlyPay(monthlyPayment,monthlyIntRate,loanTerm,monPropertyTax,downPayPer,PMI/12);
      var downPayment = loanAmount * downPayPer;
      $("#mPay-down-payment-amount").val(numToCurrency(downPayment));
      calculateMonthlyPay();
    });
    $("#mPay-interest-rate").on('change',function(){
      var loanTerm = numInput($("#mPay-loanTermInMonths").val()) / 12;
      if (this.value === '' || this.value === '0') {
        this.value = numToPercent((loanTerm === 15) ? intRate15 : intRate30);
      } else {
        this.value = numToPercent(numInput(this.value));
      }
      calculateMonthlyPay();
    });
    $("#mPay-down-payment-amount").on('change',function(){
      var downPayment = numInput(this.value);
      this.value = numToCurrency(downPayment);
      var monthlyPayment = numInput($("#mPay-monthly-payment").val());
      var hoa = numInput($("#mPay-hoa").val());
      monthlyPayment -= hoa;
      var monHomeInsure = numInput($("#mPay-home-insurance").val()) / 12;
      monthlyPayment -= monHomeInsure;
      var monthlyIntRate = numInput($("#mPay-interest-rate").val()) / 1200;
      var loanTerm = numInput($("#mPay-loanTermInMonths").val());
      var monPropertyTax = numInput($("#mPay-property-tax").val()) / 1200;
      var downPayPer = 0.20;
      do{
        calcPMI = PMIPercent(downPayPer);
        var loanAmount = homePriceFromMonthlyPayDownPay(monthlyPayment,monthlyIntRate,loanTerm,monPropertyTax,downPayment,calcPMI/12);
        var downPayPer = (downPayment / loanAmount);
      }while(calcPMI < PMIPercent(downPayPer));
      downPayPer *= 100;
      $("#mPay-down-payment-percent").val(numToPercent(downPayPer));
      calculateMonthlyPay();
    });
    $("#mPay-down-payment-percent").on('change',function(){
      var downPayPer = numInput(this.value);
      this.value = numToPercent(downPayPer);
      downPayPer = downPayPer / 100;
      var monthlyPayment = numInput($("#mPay-monthly-payment").val());
      var hoa = numInput($("#mPay-hoa").val());
      monthlyPayment -= hoa;
      var monHomeInsure = numInput($("#mPay-home-insurance").val()) / 12;
      monthlyPayment -= monHomeInsure
      var monthlyIntRate = numInput($("#mPay-interest-rate").val()) / 1200;
      var loanTerm = numInput($("#mPay-loanTermInMonths").val());
      var monPropertyTax = numInput($("#mPay-property-tax").val()) / 1200;
      var PMI = PMIPercent(downPayPer);
      var loanAmount = homePriceFromMonthlyPay(monthlyPayment,monthlyIntRate,loanTerm,monPropertyTax,downPayPer,PMI/12);
      var downPayment = (downPayPer * loanAmount);
      $("#mPay-down-payment-amount").val(numToCurrency(downPayment));
      calculateMonthlyPay();
    });
    $("#mPay-home-insurance").on('change',function(){
      this.value = numToCurrency(numInput(this.value));
      calculateMonthlyPay();
    });
    $("#mPay-hoa").on('change',function(){
      this.value = numToCurrency(numInput(this.value));
      calculateMonthlyPay();
    });
    $("#mPay-state").on("change", function(){
      changed_property_tax = false;
      $("#mPay-property-tax").val( numToPercent(stateTaxRates[this.value]));
      userState = this.value;
      calculateMonthlyPay();
    });
    $("#mPay-property-tax").on('keyup', function(){
      changed_property_tax = true;
      debounce(function(){
        this.value = this.value;
      }, 500);
    });
    $("#mPay-property-tax").on('blur', function(){
        this.value = numToPercent(numInput(this.value));
    });
    $("#mPay-property-tax").on('change',function(){
      if ( ! changed_property_tax ) {
        this.value = stateTaxRates[userState] / 1200;
      }
      calculateMonthlyPay();
    });



    // Initialize data
    // switchHomePrice();
    switchIncome();

    // Tooltip trigger
    $(".tooltip").hide();
    $(".tooltip-trigger").hover(
      function(){
        $(this).next(".tooltip").fadeIn(250);
      },
      function(){
        $(this).next(".tooltip").fadeOut(250);
      });

  });


