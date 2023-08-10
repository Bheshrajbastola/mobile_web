import React from "react";
import { render } from "@testing-library/react";
import SeekerJob from "../components/ApplicantPageComponents/Home/SeekerJob";

describe("SeekerJob", () => {
  it("should render the title", () => {
    const { getByText } = render(<SeekerJob />);
    const title = getByText("Featured Job Circulators");
    assert(title);
  });

  it("should render the job cards", () => {
    const { getByTestId } = render(<SeekerJob />);
    const jobCard = getByTestId("job-card");
    assert(jobCard);
  });

  it("should render the company information", () => {
    const { getByTestId } = render(<SeekerJob />);
    const companyInfo = getByTestId("company-info");
    assert(companyInfo);
  });

  it("should render the job title", () => {
    const { getByTestId } = render(<SeekerJob />);
    const jobTitle = getByTestId("job-title");
    assert(jobTitle);
  });

  it("should render the job description", () => {
    const { getByTestId } = render(<SeekerJob />);
    const jobDescription = getByTestId("job-description");
    assert(jobDescription);
  });

  it("should render the salary", () => {
    const { getByTestId } = render(<SeekerJob />);
    const salary = getByTestId("salary");
    assert(salary);
  });

  it("should render the apply button", () => {
    const { getByTestId } = render(<SeekerJob />);
    const applyButton = getByTestId("apply-button");
    assert(applyButton);
  });
});
