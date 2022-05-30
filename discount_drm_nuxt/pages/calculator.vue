<template>
  <!-- <div class="_agent_page">
    <div class="_agent_wrapper">
      <sidebar />
      <topbar /> -->
      <!-- <div class="_dashboard_main_wrapper" :class="getSideBarClosed ? '_dashboard_top_bar_wrapper_inactive':'_dashboard_top_bar_wrapper_active'"> -->
        <div class="_dashboard_main_wrap" >
            <!-- class="_dashboard_main_wrap" -->
          <!-- <script src="/js/chart-js.min.js"> </script>
          <script src="/js/jquery-1.12.3.min.js"> </script>
          <script src="/js/mortgage-payment-affordability-script.js"> </script> -->
          <main class="mortgage-calculator" id="mortgage-calculator">
            <!-- <h1 class="mortgage-calculator__header">Mortgage Calculator</h1> -->
            <div class="row">
              <div class="col-12">
                <div class="top-section">
                  <div class="mortgage-tabs">
                    <!-- <div id="initial-choice-home-price" class="mortgage-tab mortgage-tab--price">
                      <h4>Pre-Qualification</h4>
                      <p>By Payment</p>
                    </div> -->
                    <div id="initial-choice-income" class="mortgage-tab mortgage-tab--income">
                      <!-- <h4>Pre-Qualification</h4> -->
                      <p>By Income</p>
                    </div>
                    <div id="initial-choice-monthly-payment" class="mortgage-tab mortgage-tab--payment">
                      <!-- <h4>Pre-Qualification</h4> -->
                      <p>By Payement</p>
                    </div>
                  </div>
                  <a href="#" class="_approval_box">
                    <button v-on:click="showDrop = !showDrop" class="top-request-btn">Request Pre-Approval</button>
                    <div v-if="showDrop" class="_approval_drop">
                      <form class="_drop_from">
                        <div class="row">
                          <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                              <div class="_inpt_grp_people">
                                <label for="client-name" class="_form_drop_label">Client’s Name</label><br>
                                <input type="text" class="_form_drop_input" placeholder="">
                              </div>
                          </div>
                          <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                            <div class="_inpt_grp_people">
                              <label for="client-name" class="_form_drop_label">Client’s Phone</label><br>
                              <input type="number" class="_form_drop_input" placeholder="">
                            </div>
                          </div>
                          <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                              <div class="_inpt_grp_people">
                                <label for="client-name" class="_form_drop_label">Client’s Email</label><br>
                                <input type="email" class="_form_drop_input" placeholder="">
                              </div>
                          </div>
                          <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                              <div class="_inpt_grp_people">
                                <label for="client-name" class="_form_drop_label">Income</label><br>
                                <input v-model="calculator.annualIncome" type="text" class="_form_drop_input" placeholder="">
                              </div>
                          </div>
                           <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                              <div class="_inpt_grp_people">
                                <label for="client-name" class="_form_drop_label">Monthly Debts</label><br>
                                <input v-model="calculator.monthlyDebts" type="text" class="_form_drop_input" placeholder="">
                              </div>
                          </div>
                           <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                              <div class="_inpt_grp_people">
                                <label for="client-name" class="_form_drop_label">Pre-Qualification Amount</label><br>
                                <input type="text" class="_form_drop_input" placeholder="">
                              </div>
                          </div>
                        </div>
                        <button type="submit" class="_approval_btn">Send Client</button>
                      </form>
                    </div>
                  </a>
                </div>
                <div class="row">
                  <div class="col-12  js-from-home-price mb-5">
                    <div class="row">
                      <div class="mortgage-calculator__chart col-12 col-sm-6">
                        <canvas id="hPrice-monthly-pie-chart" height="200" width="330"></canvas>
                      </div>
                      <div class="mortgage-calculator__breakdown col-12 col-sm-6" id="hPrice-payment-breakdown">
                        <h4>Payment Breakdown</h4>
                        <ul class="mc-breakdown-fields">
                          <li>
                            <em>Principal and Interest</em>
                            <span id="hPrice-breakdown-principalAndInterest"></span>
                          </li>
                          <li>
                            <em>Private Mortgage Insurance</em>
                            <span id="hPrice-breakdown-convPrivateMortgageInsurance"></span>
                          </li>
                          <li>
                            <em>Property Tax</em>
                            <span id="hPrice-breakdown-propertyTax"></span>
                          </li>
                          <li>
                            <em>Homeowners Insurance</em>
                            <span id="hPrice-breakdown-monthlyHomeownersInsurance"></span>
                          </li>
                          <li>
                            <em>HOA/Other</em>
                            <span id="hPrice-breakdown-hoaAndOther"></span>
                          </li>
                        </ul>
                      </div>
                    </div>

                    <form class="mortgage-calculator-form">
                      <div class="row">
                        <input id="leadid_token" name="universal_leadid" type="hidden" value=""/>
                        <div class="col-6 col-sm-4 mb-3">
                          <label for="hPrice-loan-amount">Home Price:</label>
                          <input type="text" name="purchaseprice" id="hPrice-loan-amount" class="form-control hPrice-input" placeholder="$250,000" value="$250,000">
                        </div>
                        <div class="col-6 col-sm-4 mb-3">
                          <label for="hPrice-down-payment-amount">Down Payment:</label>
                          <div class="form-row">
                            <div class="col-8">
                              <input type="text" id="hPrice-down-payment-amount" class="form-control hPrice-input" placeholder="$50,000" value="$50,000">
                            </div>
                            <div class="col d-none d-sm-block">
                              <input type="text" id="hPrice-down-payment-percent" name="downpayment hPrice-input" class="form-control" placeholder="20%" value="20%">
                            </div>
                          </div>
                        </div>
                        <div class="col-6 col-sm-4 mb-3">
                          <label for="hPrice-loanTermInMonths">Loan Term (years):</label>
                          <div class="mc-toggle-buttons">
                            <input type="hidden" id="hPrice-loanTermInMonths" value="360">
                            <div data-value="30" data-months="360" class="mc-toggle-button mc-toggle-button--selected">30</div>
                            <div data-value="25" data-months="300" class="mc-toggle-button">25</div>
                            <div data-value="20" data-months="240" class="mc-toggle-button">20</div>
                            <div data-value="15" data-months="180" class="mc-toggle-button">15</div>
                          </div>
                        </div>
                        <div class="col-6 col-sm-4 mb-3">
                            <label for="hPrice-state">State:</label>
                            <select name='state' id="hPrice-state" class="form-control">
                              <option value=''>Choose Your State...</option>
                              <option value='AL'>Alabama</option>
                              <option value='AK'>Alaska</option>
                              <option value='AZ'>Arizona</option>
                              <option value='AR'>Arkansas</option>
                              <option value='CA'>California</option>
                              <option value='CO'>Colorado</option>
                              <option value='CT'>Connecticut</option>
                              <option value='DE'>Delaware</option>
                              <option value='DC'>Dist. of Columbia</option>
                              <option value='FL'>Florida</option>
                              <option value='GA'>Georgia</option>
                              <option value='HI'>Hawaii</option>
                              <option value='ID'>Idaho</option>
                              <option value='IL'>Illinois</option>
                              <option value='IN'>Indiana</option>
                              <option value='IA'>Iowa</option>
                              <option value='KS'>Kansas</option>
                              <option value='KY'>Kentucky</option>
                              <option value='LA'>Louisiana</option>
                              <option value='ME'>Maine</option>
                              <option value='MD'>Maryland</option>
                              <option value='MA'>Massachusetts</option>
                              <option value='MI'>Michigan</option>
                              <option value='MN'>Minnesota</option>
                              <option value='MS'>Mississippi</option>
                              <option value='MO'>Missouri</option>
                              <option value='MT'>Montana</option>
                              <option value='NE'>Nebraska</option>
                              <option value='NV'>Nevada</option>
                              <option value='NH'>New Hampshire</option>
                              <option value='NJ'>New Jersey</option>
                              <option value='NM'>New Mexico</option>
                              <option value='NY'>New York</option>
                              <option value='NC'>North Carolina</option>
                              <option value='ND'>North Dakota</option>
                              <option value='OH'>Ohio</option>
                              <option value='OK'>Oklahoma</option>
                              <option value='OR'>Oregon</option>
                              <option value='PA'>Pennsylvania</option>
                              <option value='RI'>Rhode Island</option>
                              <option value='SC'>South Carolina</option>
                              <option value='SD'>South Dakota</option>
                              <option value='TN'>Tennessee</option>
                              <option value='TX'>Texas</option>
                              <option value='UT'>Utah</option>
                              <option value='VT'>Vermont</option>
                              <option value='VA'>Virginia</option>
                              <option value='WA'>Washington</option>
                              <option value='WV'>West Virginia</option>
                              <option value='WI'>Wisconsin</option>
                              <option value='WY'>Wyoming</option>
                            </select>
                        </div>
                        <div class="col-6 col-sm-4 mb-3">
                          <label for="hPrice-interest-rate">Interest Rate:</label>
                          <input type="text" id="hPrice-interest-rate" name="mortgagerate" class="form-control" value="4.25%">
                        </div>
                        <div class="col-6 col-sm-4 mb-3" data-by="/yr">
                          <label for="hPrice-property-tax">Property Tax:</label>
                          <div class="input-group">
                              <input type="text" id="hPrice-property-tax" class="form-control" placeholder="$0" value="$0">
                              <div class="input-group-append">
                                <div class="input-group-text d-none d-sm-flex">month</div>
                                <div class="input-group-text d-sm-none d-flex">mo</div>
                              </div>
                          </div>
                        </div>
                        <div class="col-6 col-sm-4 mb-3" data-by="/yr">
                          <label for="hPrice-home-insurance">Home Insurance:</label>
                          <div class="input-group">
                            <input type="text" id="hPrice-home-insurance" class="form-control" placeholder="$600" value="$600">
                            <div class="input-group-append">
                              <div class="input-group-text d-none d-sm-flex">year</div>
                              <div class="input-group-text d-sm-none d-flex">yr</div>
                            </div>
                          </div>
                        </div>
                        <div class="col-6 col-sm-4 mb-3" data-by="/mo">
                          <label for="hPrice-hoa">HOA Dues:</label>
                          <div class="input-group">
                            <input type="text" id="hPrice-hoa" class="form-control" placeholder="$0" value="$0">
                            <div class="input-group-append">
                              <div class="input-group-text d-none d-sm-flex">month</div>
                              <div class="input-group-text d-sm-none d-flex">mo</div>
                            </div>
                          </div>
                        </div>


                      </div>
                    </form>
                  </div>



                  <div class="col-12  js-from-income">
                    <div class="row">
                      <div class="col-12 ">
                        <p class="mortgage-calculator__result">
                          You can afford: <strong id="income-output-home-price"></strong><br/>
                          Monthly Payment: <strong id="income-output-monthly-payment"></strong>
                        </p>
                      </div>
                    </div>

                    <form class="mortgage-calculator-form">
                        <div class="row">
                          <input id="leadid_token" name="universal_leadid" type="hidden" value=""/>
                          <div class="col-6 col-sm-4 mb-3">
                            <label for="income-income">Annual Income:</label>
                            <input  v-model="calculator.annualIncome" type="text" id="income-income" class="form-control" placeholder="$70,000">
                          </div>

                          <div class="col-6 col-sm-4 mb-3">
                            <div class="form-row">
                              <div class="col-8">
                                <label for="income-monthly-debts">Monthly Debts: <div class="tooltip-wrapper"><span class="tooltip-trigger"><i class="fas fa-question-circle"></i></span><div class="tooltip">Minimum monthly payments on debt like car loans, student loans, and credit cards.</div></div></label>
                                <input v-model="calculator.monthlyDebts" type="text" id="income-monthly-debts" class="form-control" placeholder="$250">
                              </div>
                              <div class="col d-none d-sm-block">
                                <label for="income-debt-to-income">DTI: <div class="tooltip-wrapper"><span class="tooltip-trigger"><i class="fas fa-question-circle"></i></span><div class="tooltip">Lenders can approve a debt-to-income ratio of 43% or more. Many buyers aim for a 36% DTI to be conservative.</div></div></label>
                                <!-- <input type="text" id="income-debt-to-income" class="form-control disabled" placeholder="36%" value="50%" disabled> -->
                                <select name='income-debt-to-income' id="income-debt-to-income" tabindex='2' class="form-control">
                                  <!-- <option value='36'>36%</option> -->
                                  <option value='43'>43%</option>
                                  <option value='45'>45%</option>
                                  <option value='50'>50%</option>
                                  <option value='50' selected>50%</option>
                                  <option value='55'>55%</option>
                                  <option value='60'>60%</option>
                                </select>
                              </div>
                            </div>
                          </div>

                          <div class="col-6 col-sm-4 mb-3">
                            <label for="income-loanTermInMonths">Loan Term (years):</label>
                            <div class="mc-toggle-buttons">
                                <input type="hidden" id="income-loanTermInMonths" value="360">
                                <div data-value="30" data-months="360" class="mc-toggle-button mc-toggle-button--selected">30</div>
                                <div data-value="25" data-months="300" class="mc-toggle-button">25</div>
                                <div data-value="20" data-months="240" class="mc-toggle-button">20</div>
                                <div data-value="15" data-months="180" class="mc-toggle-button">15</div>
                            </div>
                          </div>

                          <div class="col-6 col-sm-4 mb-3">
                              <label for="income-state">State</label>
                              <select name='state' id="income-state" tabindex='3' class="form-control">
                                <option value=''>Choose Your State...</option>
                                <option value='AL'>Alabama</option>
                                <option value='AK'>Alaska</option>
                                <option value='AZ'>Arizona</option>
                                <option value='AR'>Arkansas</option>
                                <option value='CA'>California</option>
                                <option value='CO'>Colorado</option>
                                <option value='CT'>Connecticut</option>
                                <option value='DE'>Delaware</option>
                                <option value='DC'>Dist. of Columbia</option>
                                <option value='FL'>Florida</option>
                                <option value='GA'>Georgia</option>
                                <option value='HI'>Hawaii</option>
                                <option value='ID'>Idaho</option>
                                <option value='IL'>Illinois</option>
                                <option value='IN'>Indiana</option>
                                <option value='IA'>Iowa</option>
                                <option value='KS'>Kansas</option>
                                <option value='KY'>Kentucky</option>
                                <option value='LA'>Louisiana</option>
                                <option value='ME'>Maine</option>
                                <option value='MD'>Maryland</option>
                                <option value='MA'>Massachusetts</option>
                                <option value='MI'>Michigan</option>
                                <option value='MN'>Minnesota</option>
                                <option value='MS'>Mississippi</option>
                                <option value='MO'>Missouri</option>
                                <option value='MT'>Montana</option>
                                <option value='NE'>Nebraska</option>
                                <option value='NV'>Nevada</option>
                                <option value='NH'>New Hampshire</option>
                                <option value='NJ'>New Jersey</option>
                                <option value='NM'>New Mexico</option>
                                <option value='NY'>New York</option>
                                <option value='NC'>North Carolina</option>
                                <option value='ND'>North Dakota</option>
                                <option value='OH'>Ohio</option>
                                <option value='OK'>Oklahoma</option>
                                <option value='OR'>Oregon</option>
                                <option value='PA'>Pennsylvania</option>
                                <option value='RI'>Rhode Island</option>
                                <option value='SC'>South Carolina</option>
                                <option value='SD'>South Dakota</option>
                                <option value='TN'>Tennessee</option>
                                <option value='TX'>Texas</option>
                                <option value='UT'>Utah</option>
                                <option value='VT'>Vermont</option>
                                <option value='VA'>Virginia</option>
                                <option value='WA'>Washington</option>
                                <option value='WV'>West Virginia</option>
                                <option value='WI'>Wisconsin</option>
                                <option value='WY'>Wyoming</option>
                              </select>
                          </div>

                          <div class="col-6 col-sm-4 mb-3">
                            <label for="income-interest-rate">Interest Rate:</label>
                            <input type="text" id="income-interest-rate"  name="mortgagerate" class="form-control" value="4.25%">
                          </div>

                          <div class="col-6 col-sm-4 mb-3">
                            <label for="income-down-payment-amount">Down Payment:</label>
                            <div class="form-row">
                              <div class="col-8">
                                <input type="text" id="income-down-payment-amount" class="form-control" placeholder="$67,200" value="$67,200">
                              </div>
                              <div class="col d-none d-sm-block">
                                <input type="text" id="income-down-payment-percent" name="downpayment" class="form-control" placeholder="20%" value="20%">
                              </div>
                            </div>
                          </div>

                          <div class="col-6 col-sm-4 mb-3" data-by="/yr">
                            <label for="income-property-tax">Property Tax:</label>
                            <div class="input-group">
                              <input type="text" id="income-property-tax" class="form-control" placeholder="0%" value="0%">
                              <div class="input-group-append">
                                <div class="input-group-text d-none d-sm-flex">year</div>
                                <div class="input-group-text d-sm-none d-flex">yr</div>
                              </div>
                            </div>
                          </div>
                          <div class="col-6 col-sm-4 mb-3" data-by="/yr">
                            <label for="income-home-insurance">Home Insurance:</label>
                            <div class="input-group">
                              <input type="text" id="income-home-insurance" class="form-control" placeholder="$600" value="$600">
                              <div class="input-group-append">
                                <div class="input-group-text d-none d-sm-flex">year</div>
                                <div class="input-group-text d-sm-none d-flex">yr</div>
                              </div>
                            </div>
                          </div>
                          <div class="col-6 col-sm-4 mb-3" data-by="/mo">
                            <label for="income-hoa">HOA Dues:</label>
                            <div class="input-group">
                              <input type="text" id="income-hoa" class="form-control" placeholder="$0" value="$0">
                              <div class="input-group-append">
                                <div class="input-group-text d-none d-sm-flex">month</div>
                                <div class="input-group-text d-sm-none d-flex">mo</div>
                              </div>
                            </div>
                          </div>
                          <div class="col-6 col-sm-4 mb-3" data-by="/mo">
                            <label for="monthly-mi">Monthly MI:</label>
                            <div class="input-group">
                              <input type="text" id="monthly-mi" class="form-control" placeholder="$0" value="$0">
                              <div class="input-group-append">
                                <div class="input-group-text d-none d-sm-flex">month</div>
                                <div class="input-group-text d-sm-none d-flex">mo</div>
                              </div>
                            </div>
                          </div>


                      </div>
                    </form>
                  </div>



                  <div class="col-12 js-from-monthly-payment mb-5">
                    <div class="row">
                      <div class="col-12">
                        <p class="mortgage-calculator__result">You can afford: <strong id="mPay-output-home-price"></strong></p>
                      </div>
                    </div>

                    <form class="mortgage-calculator-form">
                        <div class="row">

                          <input id="leadid_token" name="universal_leadid" type="hidden" value=""/>
                          <div class="col-6 col-sm-4 mb-3">
                            <label for="mPay-monthly-payment">Desired Monthly Payment:</label>
                            <input type="text" id="mPay-monthly-payment" class="form-control" placeholder="$1,500" value="$1,500">
                          </div>
                          <div class="col-6 col-sm-4 mb-3">
                            <label for="mPay-down-payment-amount">Down Payment:</label>
                            <div class="form-row">
                              <div class="col-8">
                                <input type="text" id="mPay-down-payment-amount" class="form-control" placeholder="$57,745" value="$57,745">
                              </div>
                              <div class="col d-none d-sm-block">
                                <input type="text" id="mPay-down-payment-percent" name="downpayment" class="form-control" placeholder="20%" value="20%">
                              </div>
                            </div>
                          </div>
                          <div class="col-6 col-sm-4 mb-3">
                            <label for="mPay-loanTermInMonths">Loan Term (years):</label>
                            <div class="mc-toggle-buttons">
                              <input type="hidden" id="mPay-loanTermInMonths" value="360">
                              <div data-value="30" data-months="360" class="mc-toggle-button mc-toggle-button--selected">30</div>
                              <div data-value="25" data-months="300" class="mc-toggle-button">25</div>
                              <div data-value="20" data-months="240" class="mc-toggle-button">20</div>
                              <div data-value="15" data-months="180" class="mc-toggle-button">15</div>
                            </div>
                          </div>
                          <div class="col-6 col-sm-4 mb-3">
                              <label for="mPay-state">State:</label>
                              <select name='state' id="mPay-state" tabindex='3' class="form-control">
                                <option value=''>Choose Your State...</option>
                                <option value='AL'>Alabama</option>
                                <option value='AK'>Alaska</option>
                                <option value='AZ'>Arizona</option>
                                <option value='AR'>Arkansas</option>
                                <option value='CA'>California</option>
                                <option value='CO'>Colorado</option>
                                <option value='CT'>Connecticut</option>
                                <option value='DE'>Delaware</option>
                                <option value='DC'>Dist. of Columbia</option>
                                <option value='FL'>Florida</option>
                                <option value='GA'>Georgia</option>
                                <option value='HI'>Hawaii</option>
                                <option value='ID'>Idaho</option>
                                <option value='IL'>Illinois</option>
                                <option value='IN'>Indiana</option>
                                <option value='IA'>Iowa</option>
                                <option value='KS'>Kansas</option>
                                <option value='KY'>Kentucky</option>
                                <option value='LA'>Louisiana</option>
                                <option value='ME'>Maine</option>
                                <option value='MD'>Maryland</option>
                                <option value='MA'>Massachusetts</option>
                                <option value='MI'>Michigan</option>
                                <option value='MN'>Minnesota</option>
                                <option value='MS'>Mississippi</option>
                                <option value='MO'>Missouri</option>
                                <option value='MT'>Montana</option>
                                <option value='NE'>Nebraska</option>
                                <option value='NV'>Nevada</option>
                                <option value='NH'>New Hampshire</option>
                                <option value='NJ'>New Jersey</option>
                                <option value='NM'>New Mexico</option>
                                <option value='NY'>New York</option>
                                <option value='NC'>North Carolina</option>
                                <option value='ND'>North Dakota</option>
                                <option value='OH'>Ohio</option>
                                <option value='OK'>Oklahoma</option>
                                <option value='OR'>Oregon</option>
                                <option value='PA'>Pennsylvania</option>
                                <option value='RI'>Rhode Island</option>
                                <option value='SC'>South Carolina</option>
                                <option value='SD'>South Dakota</option>
                                <option value='TN'>Tennessee</option>
                                <option value='TX'>Texas</option>
                                <option value='UT'>Utah</option>
                                <option value='VT'>Vermont</option>
                                <option value='VA'>Virginia</option>
                                <option value='WA'>Washington</option>
                                <option value='WV'>West Virginia</option>
                                <option value='WI'>Wisconsin</option>
                                <option value='WY'>Wyoming</option>
                              </select>
                          </div>
                          <div class="col-6 col-sm-4 mb-3">
                            <label for="mPay-interest-rate">Interest Rate:</label>
                            <input type="text" id="mPay-interest-rate" name="mortgagerate" class="form-control" value="4.25%">
                          </div>
                          <div class="col-6 col-sm-4 mb-3" data-by="/yr">
                            <label for="mPay-property-tax">Property Tax:</label>
                            <div class="input-group">
                              <input type="text" id="mPay-property-tax" class="form-control" placeholder="$0" value="$0">
                              <div class="input-group-append">
                                <div class="input-group-text d-none d-sm-flex">year</div>
                                <div class="input-group-text d-sm-none d-flex">yr</div>
                              </div>
                            </div>
                          </div>
                          <div class="col-6 col-sm-4 mb-3" data-by="/yr">
                            <label for="mPay-home-insurance">Home Insurance:</label>
                            <div class="input-group">
                              <input type="text" id="mPay-home-insurance" class="form-control" placeholder="$600" value="$600">
                              <div class="input-group-append">
                                <div class="input-group-text d-none d-sm-flex">year</div>
                                <div class="input-group-text d-sm-none d-flex">yr</div>
                              </div>
                            </div>
                          </div>
                          <div class="col-6 col-sm-4 mb-3" data-by="/mo">
                            <label for="mPay-hoa">HOA Dues:</label>
                            <div class="input-group">
                              <input type="text" id="mPay-hoa" class="form-control" placeholder="$0" value="$0">
                              <div class="input-group-append">
                                <div class="input-group-text d-none d-sm-flex">month</div>
                                <div class="input-group-text d-sm-none d-flex">mo</div>
                              </div>
                            </div>
                          </div>

                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </main>
        </div>
      <!-- </div> -->
    <!-- </div>
  </div> -->
</template>

<script>
// import sidebar from '~/components/sidebar.vue';
// import topbar from "../components/topbar.vue";
import { mapGetters } from "vuex";
export default {
   middleware:"auth",
      data(){
        return{
          showDrop:false,
          calculator:{
            annualIncome:70000,
            monthlyDebts:250
          }
        }
      },
    //  components: { sidebar, topbar },
     computed:{
      ...mapGetters({
          getSideBarClosed: 'sidebar/getSideBarClosed',
          authUser:'getAuthUser'
        }),
    },
     methods:{
       refresh(){
         console.log("hi ")
          setTimeout(function() {
           window.location = '/calculator'
        }, 1000);
       }
    },
    mounted(){

    },
    created(){
            this.$store.commit("leftSidebar/setsidebarSelected", this.$route.name);

      //  this.refresh()
      // this.$forceUpdate();
    },
     head() {
        return {
          script:[
            { type: 'text/javascript', src: '/js/chart-js.min.js' },
            { type: 'text/javascript', src: '/js/jquery-1.12.3.min.js' },
            { type: 'text/javascript', src: '/js/mortgage-payment-affordability-script.js' },
          ]
        }
    }
}
</script>
<style scoped src="~/static/css/style.css"></style>

