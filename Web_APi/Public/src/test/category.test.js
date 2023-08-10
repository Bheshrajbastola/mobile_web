import React from "react";
import { render } from "@testing-library/react";
import Categories from "./Categories";

describe("Categories", () => {
  it("should render the title", () => {
    const { getByText } = render(<Categories />);
    const title = getByText("Categories");
    assert(title);
  });

  it("should render the card", () => {
    const { getByTestId } = render(<Categories />);
    const card = getByTestId("cardTest");
    assert(card);
  });

  it("should render the image", () => {
    const { getByAltText } = render(<Categories />);
    const image = getByAltText("srh");
    assert(image);
  });

  it("should render the title of the category", () => {
    const { getByText } = render(<Categories />);
    const title = getByText("Software Engineering");
    assert(title);
  });

  it("should render the number of jobs available", () => {
    const { getByText } = render(<Categories />);
    const jobs = getByText("1000 Jobs Available");
    assert(jobs);
  });

  it("should render the explore now button", () => {
    const { getByText } = render(<Categories />);
    const button = getByText("Explore Now");
    assert(button);
  });
});
