let localeStrings: LocaleStringTypes.localeStrings = {
  locale: "ar",
  localeDirection: "rtl",
  cardNumberLabel: `رقم البطاقة`,
  inValidCardErrorText: `رقم البطاقة غير صالحة`,
  inValidExpiryErrorText: `تاريخ انتهاء البطاقة غير صالح.`,
  inCompleteCVCErrorText: `رمز أمان بطاقتك غير مكتمل`,
  inCompleteExpiryErrorText: `تاريخ انتهاء صلاحية بطاقتك غير مكتمل`,
  enterValidCardNumberErrorText: `الرجاء إدخال رقم بطاقة صالح.`,
  pastExpiryErrorText: `انقضت سنة انتهاء صلاحية بطاقتك`,
  poweredBy: `مدعوم من هيبيرسويتش`,
  validThruText: `صالحة من خلال`,
  sortCodeText: `الكود البنكى`,
  accountNumberText: `رقم حساب`,
  cvcTextLabel: `رمز الحماية`,
  emailLabel: `البريد الإلكتروني`,
  ibanEmptyText: `لا يمكن أن يكون رقم IBAN فارغًا`,
  emailEmptyText: `لا يمكن أن يكون البريد الإلكتروني فارغًا`,
  emailInvalidText: `عنوان البريد الإلكتروني غير صالح`,
  fullNameLabel: `الاسم الكامل`,
  line1Label: `العنوان سطر 1`,
  line1Placeholder: `.عنوان الشارع`,
  line1EmptyText: `لا يمكن أن يكون سطر العنوان 1 فارغًا`,
  line2Label: `سطر العنوان 2`,
  line2Placeholder: `مناسب ، رقم الوحدة ، إلخ`,
  line2EmptyText: `لا يمكن أن يكون سطر العنوان 2 فارغًا`,
  postalCodeLabel: `رمز بريدي`,
  postalCodeEmptyText: `لا يمكن أن يكون الرمز البريدي فارغًا`,
  postalCodeInvalidText: `الرمز البريدي غير صالح`,
  stateLabel: `ولاية`,
  stateEmptyText: `لا يمكن أن تكون الحالة فارغة`,
  cityLabel: `مدينة`,
  cityEmptyText: `لا يمكن أن تكون المدينة فارغة`,
  fullNamePlaceholder: `الاسم الأول والاسم الأخير`,
  countryLabel: `دولة`,
  currencyLabel: `عملة`,
  bankLabel: `حدد البنك`,
  redirectText: `بعد تقديم طلبك ، ستتم إعادة توجيهك لإكمال عملية الشراء بشكل آمن.`,
  bankDetailsText: `بعد إرسال هذه التفاصيل ، ستحصل على معلومات الحساب المصرفي لإجراء الدفع. يُرجى التأكد من تدوين ذلك.`,
  orPayUsing: `أو الدفع باستخدام`,
  addNewCard: `أضف بطاقة جديدة`,
  useExisitingSavedCards: `استخدم البطاقات المحفوظة الموجودة`,
  saveCardDetails: `حفظ تفاصيل البطاقة`,
  addBankAccount: `إضافة حساب مصرفي`,
  achBankDebitTerms: str =>
    `من خلال تقديم رقم حسابك وتأكيد هذا الدفع ، فإنك تفوض ${str} و Hyperswitch ، مزود خدمة الدفع ، لإرسال تعليمات إلى البنك الذي تتعامل معه للخصم من حسابك والبنك الخاص بك للخصم من حسابك وفقًا لهذه التعليمات. يحق لك استرداد الأموال من البنك الذي تتعامل معه بموجب شروط وأحكام اتفاقيتك مع البنك الذي تتعامل معه. يجب المطالبة باسترداد الأموال في غضون 8 أسابيع بدءًا من تاريخ الخصم من حسابك.`,
  sepaDebitTerms: str =>
    `من خلال تقديم معلومات الدفع الخاصة بك وتأكيد هذا النموذج، فإنك تفوض (أ) ${str}، الدائن و/أو مقدمي خدمات الدفع لدينا لإرسال تعليمات إلى بنكك لسحب المبلغ من حسابك و(ب) بنكك لسحب المبلغ من حسابك وفقًا لتعليمات ${str}. كجزء من حقوقك، يحق لك استرداد من بنكك وفقًا للشروط والأحكام في اتفاقيتك مع بنكك. يجب تقديم طلب الاسترداد خلال 8 أسابيع من تاريخ خصم المبلغ من حسابك. حقوقك موضحة في بيان يمكنك الحصول عليه من بنكك.`,
  becsDebitTerms: `من خلال تقديم تفاصيل حسابك المصرفي وتأكيد هذه الدفعة ، فإنك توافق على طلب الخصم المباشر هذا واتفاقية خدمة طلب الخصم المباشر وتفوض Hyperswitch Payments Australia Pty Ltd ACN 160180343 رقم معرف مستخدم الخصم المباشر 507156 ("Hyperswitch") للخصم من حسابك حساب من خلال نظام المقاصة الإلكترونية المجمعة (BECS) نيابة عن Hyperswitch Payment Widget ("التاجر") لأي مبالغ يرسلها التاجر لك بشكل منفصل. أنت تقر بأنك إما صاحب حساب أو مفوض بالتوقيع على الحساب المذكور أعلاه.`,
  cardTerms: str =>
    `من خلال تقديم معلومات بطاقتك ، فإنك تسمح لـ ${str} بشحن بطاقتك للمدفوعات المستقبلية وفقًا لشروطها.`,
  payNowButton: `ادفع الآن`,
  cardNumberEmptyText: `لا يمكن أن يكون رقم البطاقة فارغاً`,
  cardExpiryDateEmptyText: `لا يمكن أن يكون تاريخ انتهاء البطاقة فارغاً`,
  cvcNumberEmptyText: `لا يمكن أن يكون رقم التحقق من البطاقة (CVC) فارغًا`,
  enterFieldsText: `الرجاء إدخال كافة الحقول`,
  enterValidDetailsText: `الرجاء إدخال تفاصيل صالحة`,
  selectPaymentMethodText: `الرجاء تحديد طريقة الدفع والمحاولة مرة أخرى`,
  card: `بطاقة`,
  surchargeMsgAmount: (currency, str) => <>
    {React.string(`سيتم تطبيق مبلغ إضافي من${Utils.nbsp}`)}
    <strong> {React.string(`${currency} ${str}`)} </strong>
    {React.string(`${Utils.nbsp}على هذه المعاملة`)}
  </>,
  shortSurchargeMessage: (currency, amount) => <>
    {React.string(`الرسوم :${Utils.nbsp}`)}
    <strong> {React.string(`${currency} ${amount}`)} </strong>
  </>,
  surchargeMsgAmountForCard: (currency, str) => <>
    {React.string(`سيتم تطبيق مبلغ إضافي يصل إلى${Utils.nbsp}`)}
    <strong> {React.string(`${currency} ${str}`)} </strong>
    {React.string(`${Utils.nbsp}على هذه المعاملة`)}
  </>,
  surchargeMsgAmountForOneClickWallets: `رسوم إضافية قابلة للتطبيق`,
  billingNameLabel: `اسم الفواتير`,
  billingNamePlaceholder: `الاسم الأول والاسم الأخير`,
  cardHolderName: `إسم صاحب البطاقة`,
  on: `على`,
  \"and": `و`,
  nameEmptyText: str => `يرجى تقديم الخاص بك ${str}`,
  completeNameEmptyText: str => `يرجى تقديم كامل الخاص بك ${str}`,
  billingDetailsText: `تفاصيل الفاتورة`,
  socialSecurityNumberLabel: `رقم الضمان الاجتماعي`,
  saveWalletDetails: `سيتم حفظ تفاصيل المحفظة عند الاختيار`,
  morePaymentMethods: `المزيد من طرق الدفع`,
  useExistingPaymentMethods: `استخدم طرق الدفع المحفوظة`,
  cardNickname: `الاسم علي الكارت`,
  nicknamePlaceholder: `اسم البطاقة (اختياري)`,
  cardExpiredText: `انتهت صلاحية هذه البطاقة`,
  cardHeader: `معلومات البطاقة`,
  cardBrandConfiguredErrorText: str => `${str} غير مدعوم في الوقت الحالي.`,
  currencyNetwork: `شبكات العملات`,
  expiryPlaceholder: `MM / YY`,
  dateOfBirth: `تاريخ الميلاد`,
  vpaIdLabel: `معرف VPA`,
  vpaIdEmptyText: `لا يمكن أن يكون معرف Vpa فارغًا`,
  vpaIdInvalidText: `معرف Vpa غير صالح`,
  dateofBirthRequiredText: `تاريخ الميلاد مطلوب`,
  dateOfBirthInvalidText: `يجب أن يكون العمر أكبر من أو يساوي 18 عامًا`,
  dateOfBirthPlaceholderText: `أدخل تاريخ الميلاد`,
  formFundsInfoText: `سيتم إضافة الأموال إلى هذا الحساب`,
  formFundsCreditInfoText: pmLabel =>
    `ستتم إضافة أموالك في ${pmLabel} المحدد.`,
  formEditText: `تعديل`,
  formSaveText: `حفظ`,
  formSubmitText: `إرسال`,
  formSubmittingText: `جاري الإرسال`,
  formSubheaderBillingDetailsText: `أدخل عنوان الفوترة الخاص بك`,
  formSubheaderCardText: `تفاصيل بطاقتك`,
  formSubheaderAccountText: pmLabel => ` ${pmLabel} الخاصة بك`,
  formHeaderReviewText: `مراجعة`,
  formHeaderReviewTabLayoutText: pmLabel => `راجع تفاصيل ${pmLabel} الخاصة بك`,
  formHeaderBankText: bankTransferType => `أدخل تفاصيل البنك ${bankTransferType}`,
  formHeaderWalletText: walletTransferType =>
    `أدخل تفاصيل المحفظة ${walletTransferType}`,
  formHeaderEnterCardText: `أدخل تفاصيل البطاقة`,
  formHeaderSelectBankText: `اختر طريقة البنك`,
  formHeaderSelectWalletText: `اختر محفظة`,
  formHeaderSelectAccountText: `اختر حسابًا للدفع`,
  formFieldACHRoutingNumberLabel: `رقم التوجيه`,
  formFieldSepaIbanLabel: `رقم الحساب المصرفي الدولي (IBAN)`,
  formFieldSepaBicLabel: `رمز تعريف البنك (اختياري)`,
  formFieldPixIdLabel: `معرف Pix`,
  formFieldBankAccountNumberLabel: `رقم الحساب البنكي`,
  formFieldPhoneNumberLabel: `رقم الهاتف`,
  formFieldCountryCodeLabel: `رمز البلد (اختياري)`,
  formFieldBankNameLabel: `اسم البنك (اختياري)`,
  formFieldBankCityLabel: `مدينة البنك (اختياري)`,
  formFieldCardHoldernamePlaceholder: `اسمك`,
  formFieldBankNamePlaceholder: `اسم البنك`,
  formFieldBankCityPlaceholder: `مدينة البنك`,
  formFieldEmailPlaceholder: `بريدك الإلكتروني`,
  formFieldPhoneNumberPlaceholder: `هاتفك`,
  formFieldInvalidRoutingNumber: `رقم التوجيه غير صالح.`,
  infoCardRefId: `معرف المرجع`,
  infoCardErrCode: `رمز الخطأ`,
  infoCardErrMsg: `رسالة الخطأ`,
  infoCardErrReason: `السبب`,
  linkRedirectionText: seconds =>
    `إعادة التوجيه خلال ${seconds->Int.toString} ثوان ...`,
  linkExpiryInfo: expiry => `تنتهي صلاحية الرابط في: ${expiry}`,
  payoutFromText: merchant => `الدفع من ${merchant}`,
  payoutStatusFailedMessage: `فشل في معالجة الدفع. يرجى التحقق مع مزود الخدمة للحصول على المزيد من التفاصيل.`,
  payoutStatusPendingMessage: `يجب معالجة الدفع الخاص بك في غضون 2-3 أيام عمل.`,
  payoutStatusSuccessMessage: `تم الدفع بنجاح. تم إيداع الأموال في طريقة الدفع المختارة.`,
  payoutStatusFailedText: `فشل الدفع`,
  payoutStatusPendingText: `جاري معالجة الدفع`,
  payoutStatusSuccessText: `الدفع ناجح`,
  pixCNPJInvalidText: `CNPJ الخاص بـ Pix غير صحيح`,
  pixCNPJEmptyText: `لا يمكن أن يكون CNPJ الخاص بـ Pix فارغًا`,
  pixCNPJLabel: `CNPJ الخاص بـ Pix`,
  pixCNPJPlaceholder: `أدخل CNPJ الخاص بـ Pix`,
  pixCPFInvalidText: `CPF الخاص بـ Pix غير صحيح`,
  pixCPFEmptyText: `لا يمكن أن يكون CPF الخاص بـ Pix فارغًا`,
  pixCPFLabel: `CPF الخاص بـ Pix`,
  pixCPFPlaceholder: `أدخل CPF الخاص بـ Pix`,
  pixKeyEmptyText: `مفتاح Pix لا يمكن أن يكون فارغًا`,
  pixKeyPlaceholder: `أدخل مفتاح Pix`,
  pixKeyLabel: `مفتاح Pix`,
  destinationBankAccountIdEmptyText: `لا يمكن أن يكون معرف الحساب المصرفي للوجهة فارغاً`,
  sourceBankAccountIdEmptyText: `لا يمكن أن يكون معرف الحساب المصرفي المصدر فارغاً`,
  invalidCardHolderNameError: `اسم حامل البطاقة لا يمكن أن يحتوي على أرقام`,
  invalidNickNameError: `لا يمكن أن يحتوي الاسم المستعار على أكثر من رقمين`,
  expiry: `انتهاء الصلاحية`,
  payment_methods_afterpay_clearpay: `آفتر باي`,
  payment_methods_google_pay: `جوجل باي`,
  payment_methods_apple_pay: `آبل باي`,
  payment_methods_samsung_pay: "Samsung Pay",
  payment_methods_mb_way: `Mb Way`,
  payment_methods_mobile_pay: `موبايل باي`,
  payment_methods_ali_pay: `علي باي`,
  payment_methods_ali_pay_hk: `علي باي هونغ كونغ`,
  payment_methods_we_chat_pay: `وي تشات باي`,
  payment_methods_duit_now: `DuitNow`,
  payment_methods_revolut_pay: `ريفولت باي`,
  payment_methods_affirm: `أفيرم`,
  payment_methods_crypto_currency: `العملات الرقمية`,
  payment_methods_card: `بطاقة`,
  payment_methods_klarna: `كلارنا`,
  payment_methods_sofort: `سوفورت`,
  payment_methods_ach_transfer: `تحويل ACH`,
  payment_methods_bacs_transfer: `تحويل BACS`,
  payment_methods_sepa_bank_transfer: `تحويل SEPA`,
  payment_methods_instant_bank_transfer: `تحويل بنكي فوري`,
  payment_methods_instant_bank_transfer_finland: `تحويل فوري فنلندا`,
  payment_methods_instant_bank_transfer_poland: `تحويل فوري بولندا`,
  payment_methods_sepa_debit: `خصم SEPA`,
  payment_methods_giropay: `GiroPay`,
  payment_methods_eps: `EPS`,
  payment_methods_walley: `واللي`,
  payment_methods_pay_bright: `Pay Bright`,
  payment_methods_ach_debit: `خصم ACH`,
  payment_methods_bacs_debit: `خصم BACS`,
  payment_methods_becs_debit: `خصم BECS`,
  payment_methods_blik: `Blik`,
  payment_methods_trustly: `Trustly`,
  payment_methods_bancontact_card: `بطاقة Bancontact`,
  payment_methods_online_banking_czech_republic: `خدمات مصرفية عبر الإنترنت التشيك`,
  payment_methods_online_banking_slovakia: `خدمات مصرفية عبر الإنترنت سلوفاكيا`,
  payment_methods_online_banking_finland: `خدمات مصرفية عبر الإنترنت فنلندا`,
  payment_methods_online_banking_poland: `خدمات مصرفية عبر الإنترنت بولندا`,
  payment_methods_ideal: `iDEAL`,
  payment_methods_ban_connect: `Ban Connect`,
  payment_methods_ach_bank_debit: `خصم مباشر ACH`,
  payment_methods_przelewy24: `Przelewy24`,
  payment_methods_interac: `Interac`,
  payment_methods_twint: `Twint`,
  payment_methods_vipps: `Vipps`,
  payment_methods_dana: `Dana`,
  payment_methods_go_pay: `Go Pay`,
  payment_methods_kakao_pay: `Kakao Pay`,
  payment_methods_gcash: `GCash`,
  payment_methods_momo: `Momo`,
  payment_methods_touch_n_go: `Touch N Go`,
  payment_methods_bizum: `Bizum`,
  payment_methods_classic: `نقدًا / قسيمة`,
  payment_methods_online_banking_fpx: `خدمات مصرفية FPX`,
  payment_methods_online_banking_thailand: `خدمات مصرفية تايلاند`,
  payment_methods_alma: `Alma`,
  payment_methods_atome: `Atome`,
  payment_methods_multibanco_transfer: `Multibanco`,
  payment_methods_card_redirect: `بطاقة`,
  payment_methods_open_banking_uk: `ادفع عبر البنك`,
  payment_methods_open_banking_pis: `الخدمات المصرفية المفتوحة`,
  payment_methods_evoucher: `قسيمة إلكترونية`,
  payment_methods_pix_transfer: `Pix`,
  payment_methods_boleto: `Boleto`,
  payment_methods_paypal: `باي بال`,
  payment_methods_local_bank_transfer_transfer: `Union Pay`,
  payment_methods_mifinity: `Mifinity`,
  payment_methods_upi_collect: `UPI Collect`,
  payment_methods_eft: `EFT`,
}
