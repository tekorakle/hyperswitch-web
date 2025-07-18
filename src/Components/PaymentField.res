open RecoilAtoms
open RecoilAtomTypes
open PaymentTypeContext

@react.component
let make = (
  ~setValue=?,
  ~value: RecoilAtomTypes.field,
  ~valueDropDown=?,
  ~setValueDropDown=?,
  ~dropDownFieldName=?,
  ~dropDownOptions=?,
  ~onChange,
  ~onBlur=?,
  ~rightIcon=React.null,
  ~fieldName="",
  ~name="",
  ~type_="text",
  ~paymentType: option<CardThemeType.mode>=?,
  ~maxLength=?,
  ~pattern=?,
  ~placeholder="",
  ~className="",
  ~inputRef,
  ~displayValue=?,
  ~setDisplayValue=?,
) => {
  let {config} = Recoil.useRecoilValueFromAtom(configAtom)
  let {themeObj} = Recoil.useRecoilValueFromAtom(configAtom)
  let {readOnly} = Recoil.useRecoilValueFromAtom(optionAtom)
  let {parentURL} = Recoil.useRecoilValueFromAtom(keys)
  let loggerState = Recoil.useRecoilValueFromAtom(loggerAtom)
  let isSpacedInnerLayout = config.appearance.innerLayout === Spaced
  let contextPaymentType = usePaymentType()
  let paymentType = paymentType->Option.getOr(contextPaymentType)

  let (inputFocused, setInputFocused) = React.useState(_ => false)

  let handleFocus = _ => {
    setInputFocused(_ => true)
    switch setValue {
    | Some(fn) =>
      fn(prev => {
        ...prev,
        isValid: None,
        errorString: "",
      })
    | None => ()
    }
    Utils.handleOnFocusPostMessage(~targetOrigin=parentURL)
  }

  let handleBlur = ev => {
    setInputFocused(_ => false)

    switch onBlur {
    | Some(fn) => fn(ev)
    | None => ()
    }
    Utils.handleOnBlurPostMessage(~targetOrigin=parentURL)
  }

  let backgroundClass = switch paymentType {
  | Payment
  | PaymentMethodsManagement =>
    themeObj.colorBackground
  | _ => "transparent"
  }
  let direction = if type_ == "password" || type_ == "tel" {
    "ltr"
  } else {
    ""
  }
  let focusClass = if inputFocused || value.value->String.length > 0 {
    `mb-7 pb-1 pt-2 ${themeObj.fontSizeXs} transition-all ease-in duration-75`
  } else {
    "transition-all ease-in duration-75"
  }
  let floatinglabelClass = inputFocused ? "Label--floating" : "Label--resting"
  let getClassName = initialLabel => {
    if value.value->String.length == 0 {
      `${initialLabel}--empty`
    } else {
      switch value.isValid {
      | Some(valid) => valid ? "" : `${initialLabel}--invalid`
      | None => ""
      }
    }
  }
  let labelClass = getClassName("Label")
  let inputClass = getClassName("Input")

  let inputClassStyles = isSpacedInnerLayout ? "Input" : "Input-Compressed"

  let flexDirectionBasedOnType = type_ === "tel" ? "flex-row" : "flex-col"

  // Wrap onChange to include logging
  let wrappedOnChange = ev => {
    // Log the input change using the name parameter
    if name->String.length > 0 {
      LoggerUtils.logInputChangeInfo(name, loggerState)
    }
    // Call the original onChange handler
    onChange(ev)
  }

  <div className="flex flex-col w-full">
    <RenderIf
      condition={name === "phone" &&
      fieldName->String.length > 0 &&
      config.appearance.labels == Above &&
      isSpacedInnerLayout}>
      <div
        className={`Label ${labelClass}`}
        style={
          fontWeight: themeObj.fontWeightNormal,
          fontSize: themeObj.fontSizeLg,
          marginBottom: "5px",
          opacity: "0.6",
        }
        ariaHidden=true>
        {React.string(fieldName)}
      </div>
    </RenderIf>
    <div className={`flex ${flexDirectionBasedOnType} w-full`} style={color: themeObj.colorText}>
      <RenderIf condition={type_ === "tel"}>
        <DropdownField
          appearance=config.appearance
          value={valueDropDown->Option.getOr("")}
          setValue={setValueDropDown->Option.getOr(_ => ())}
          fieldName={dropDownFieldName->Option.getOr("")}
          options={dropDownOptions->Option.getOr([])}
          width="w-40 mr-2"
          displayValue={displayValue->Option.getOr("")}
          setDisplayValue={setDisplayValue->Option.getOr(_ => ())}
          isDisplayValueVisible=true
        />
      </RenderIf>
      <RenderIf
        condition={name !== "phone" &&
        fieldName->String.length > 0 &&
        config.appearance.labels == Above &&
        isSpacedInnerLayout}>
        <div
          className={`Label ${labelClass}`}
          style={
            fontWeight: themeObj.fontWeightNormal,
            fontSize: themeObj.fontSizeLg,
            marginBottom: "5px",
            opacity: "0.6",
          }
          ariaHidden=true>
          {React.string(fieldName)}
        </div>
      </RenderIf>
      <div className="flex flex-row w-full" style={direction: direction}>
        <div className="relative w-full">
          <input
            style={
              background: backgroundClass,
              padding: themeObj.spacingUnit,
              width: "100%",
            }
            disabled=readOnly
            ref={inputRef->ReactDOM.Ref.domRef}
            type_
            name
            ?maxLength
            ?pattern
            className={`${inputClassStyles} ${inputClass} ${className} focus:outline-none transition-shadow ease-out duration-200`}
            placeholder={config.appearance.labels == Above || config.appearance.labels == Never
              ? placeholder
              : ""}
            value={value.value}
            autoComplete="on"
            onChange=wrappedOnChange
            onBlur=handleBlur
            onFocus=handleFocus
            ariaLabel={`Type to fill ${fieldName->String.length > 0 ? fieldName : name} input`}
          />
          <RenderIf condition={config.appearance.labels == Floating}>
            <div
              className={`Label ${floatinglabelClass} ${labelClass} absolute bottom-0 ml-3 ${focusClass}`}
              style={
                marginBottom: {
                  inputFocused || value.value->String.length > 0 ? "" : themeObj.spacingUnit
                },
                fontSize: {
                  inputFocused || value.value->String.length > 0 ? themeObj.fontSizeXs : ""
                },
                opacity: "0.6",
              }
              ariaHidden=true>
              {React.string(fieldName)}
            </div>
          </RenderIf>
        </div>
        <div className={`relative flex -ml-10  items-center`}> {rightIcon} </div>
      </div>
      <RenderIf condition={value.errorString->String.length > 0}>
        <div
          className="Error pt-1"
          style={
            color: themeObj.colorDangerText,
            fontSize: themeObj.fontSizeSm,
            alignSelf: "start",
            textAlign: "left",
          }
          ariaHidden=true>
          {React.string(value.errorString)}
        </div>
      </RenderIf>
    </div>
  </div>
}
