import { render } from "@testing-library/react";
import React from "react";
import AppliedJobs from "../components/ApplicantPageComponents/Jobs/AppliedJobs";

describe("AppliedJobs", () => {
  it("should render the title", () => {
    const { getByText } = render(<AppliedJobs />);
    const title = getByText("Applied Jobs");
    assert(title);
  });

  it("should render the job cards", () => {
    const { getByTestId } = render(<AppliedJobs />);
    const jobCard = getByTestId("job-card");
    assert(jobCard);
  });

  it("should render the company information", () => {
    const { getByTestId } = render(<AppliedJobs />);
    const companyInfo = getByTestId("company-info");
    assert(companyInfo);
  });

  it("should render the job title", () => {
    const { getByTestId } = render(<AppliedJobs />);
    const jobTitle = getByTestId("job-title");
    assert(jobTitle);
  });

  it("should render the job description", () => {
    const { getByTestId } = render(<AppliedJobs />);
    const jobDescription = getByTestId("job-description");
    assert(jobDescription);
  });

  it("should render the salary", () => {
    const { getByTestId } = render(<AppliedJobs />);
    const salary = getByTestId("salary");
    assert(salary);
  });

  it("should render the apply button", () => {
    const { getByTestId } = render(<AppliedJobs />);
    const applyButton = getByTestId("apply-button");
    assert(applyButton);
  });
});
