# Third-Party Script Inventory

This document provides an inventory of all third-party scripts used in Hyperswitch Web and justifications for their inclusion. These scripts are essential to provide a complete, secure, and high-quality payment experience for our users.

## Payment Processor Scripts

### Braintree

#### Scripts:

- `https://js.braintreegateway.com/web/3.88.4/js/paypal-checkout.min.js`
- `https://js.braintreegateway.com/web/3.88.4/js/client.min.js`

#### Justification:

Braintree scripts are necessary to process payments through the Braintree payment gateway. Braintree is a widely-used payment processor owned by PayPal that allows merchants to accept credit cards and other payment methods. These scripts provide:

- Secure credit card processing capabilities
- PayPal checkout integration
- Client-side validation and tokenization of payment information
- Enhanced security through direct communication with Braintree's servers

Without these scripts, payments through Braintree would not be possible, limiting payment options for merchants and potentially reducing conversion rates.

### PayPal SDK

#### Scripts:

- `https://www.paypal.com/sdk/js`
- `https://www.sandbox.paypal.com/sdk/js`

#### Justification:

PayPal is one of the most widely used digital payment platforms globally. Integration with PayPal's SDK is essential for:

- Enabling PayPal as a payment option
- Facilitating Express Checkout options
- Supporting international payments
- Providing a trusted payment option that many customers prefer

### Klarna

#### Scripts:

- `https://x.klarnacdn.net/kp/lib/v1/api.js`

#### Justification:

Klarna integration enables Buy Now, Pay Later (BNPL) functionality, which has become increasingly popular among consumers. This script is necessary for:

- Offering flexible payment options to customers
- Increasing conversion rates by providing alternative payment methods
- Supporting installment payments
- Expanding the range of payment options available to different market segments

### Google Pay

#### Scripts:

- `https://pay.google.com`
- `https://www.google.com/pay`

#### Justification:

Google Pay integration allows for fast, secure mobile payments for Android users. This script is essential for:

- Supporting mobile wallet payments
- Providing a streamlined checkout experience
- Reducing checkout friction on Android devices
- Enabling tokenized payments for enhanced security

### Apple Pay

#### Scripts:

- `https://applepay.cdn-apple.com/jsapi/v1/apple-pay-sdk.js`
- `https://apple.com/apple-pay`

#### Justification:

Apple Pay integration enables seamless payments for iOS users. This script is necessary for:

- Supporting mobile wallet payments on iOS devices
- Providing a streamlined checkout experience
- Leveraging Apple's secure enclave and biometric authentication
- Meeting customer expectations for modern payment options

### TrustPay

#### Scripts:

- `https://tpgw.trustpay.eu/js/v1.js`
- `https://test-tpgw.trustpay.eu/js/v1.js`

#### Justification:

TrustPay enables alternative payment methods, particularly for European markets. This integration is necessary for:

- Supporting region-specific payment methods
- Enabling bank transfers in European countries
- Expanding payment method coverage for international merchants
- Meeting local customer payment preferences

### Visa ClickToPay Checkout

#### Scripts:

- `https://sandbox.secure.checkout.visa.com`
- `https://secure.checkout.visa.com`

#### Justification:

Visa ClickToPay Checkout integration allows for secure and streamlined payments using Visa cards. This script is essential for:

- Supporting Visa card payments
- Providing a trusted and widely recognized payment option
- Enhancing security through Visa's payment network

### Mastercard ClickToPay

#### Scripts:

- `https://src.mastercard.com`
- `https://sandbox.src.mastercard.com`

#### Justification:

Mastercard ClickToPay integration enables secure and convenient payments for Mastercard users. This script is necessary for:

- Supporting Mastercard payments
- Providing a seamless checkout experience
- Enhancing security through Mastercard's payment network

### Samsung Pay

#### Scripts:

- `https://img.mpay.samsung.com/gsmpi/sdk/samsungpay_web_sdk.js`

#### Justification:

Samsung Pay integration allows for mobile payments on Samsung devices. This script is essential for:

- Supporting Samsung Pay as a payment option
- Providing a streamlined checkout experience for Samsung users
- Expanding payment options for Android users

### Plaid

#### Scripts:

- `https://cdn.plaid.com/link/v2/stable/link-initialize.js`

#### Justification:

Plaid integration enables secure bank account linking for ACH payments. This script is necessary for:

- Supporting direct bank transfers
- Providing a seamless user experience for account verification
- Enhancing security through Plaid's trusted platform

### Paze

#### Scripts:

- `https://sandbox.digitalwallet.earlywarning.com/web/resources/js/digitalwallet-sdk.js`
- `https://checkout.paze.com/web/resources/js/digitalwallet-sdk.js`

#### Justification:

Early Warning Services integration enables Paze and other digital wallet payments. This script is necessary for:

- Supporting real-time bank transfers
- Providing a trusted payment option for U.S. customers
- Expanding payment method coverage

## Monitoring and Error Tracking

### Sentry

#### Scripts:

- `https://browser.sentry-cdn.com`

#### Justification:

Sentry is used for real-time error tracking and monitoring. This integration is crucial for:

- Identifying and fixing issues quickly in production environments
- Monitoring application health and performance
- Capturing detailed error information to facilitate debugging
- Improving overall service quality and uptime
- Providing better customer support by understanding issues users may encounter

## Security Considerations

All directly included third-party scripts are:

1. Loaded with Subresource Integrity (SRI) checks to ensure the content hasn't been tampered with
2. Served over HTTPS to ensure secure transmission
3. Included from official, trusted sources
4. Regularly updated to incorporate security patches
5. Limited to only the functionality required for payment processing
6. Monitored for any security advisories or vulnerabilities

### NPM Package Dependencies

It's important to note that in addition to the directly included third-party scripts listed above, our project also relies on various NPM packages as dependencies. For these NPM packages:

- We do not control whether they internally use Subresource Integrity (SRI) for their own dependencies
- Their security is assessed through:
  - Regular dependency audits (`npm audit`)
  - Using pinned versions to prevent unexpected updates
  - Monitoring security advisories
  - Choosing packages with active maintenance and good security practices
  - Updating dependencies promptly when security patches are available

The security of our application depends on both the directly included scripts (which we can apply SRI to) and the NPM package ecosystem (where security is managed through different mechanisms).

## Conclusion

Each script included in our application serves a specific purpose in enabling a comprehensive payment solution. By providing multiple payment options through these integrations, we can offer a better user experience, increase conversion rates, and support a wider range of geographical markets. The security measures implemented around these scripts ensure that they do not pose unnecessary risks to our users or merchants.
