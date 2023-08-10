import { render } from "@testing-library/react";
import React from "react";
import RegistrationForm from "../components/Common/Auth/Register/RegistrationForm";

describe("RegistrationForm", () => {
  it("should find the submit button", () => {
    const { getByText } = render(<RegistrationForm />);
    const button = getByText("Submit");
    assert(button);
  });

  it("should find the placeholder text for the first name input", () => {
    const { getByPlaceholderText } = render(<RegistrationForm />);
    const placeholder = getByPlaceholderText("First Name");
    assert(placeholder);
  });

  it("should find the placeholder text for the last name input", () => {
    const { getByPlaceholderText } = render(<RegistrationForm />);
    const placeholder = getByPlaceholderText("Last Name");
    assert(placeholder);
  });
});
