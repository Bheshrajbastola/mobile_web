import { render, screen } from "@testing-library/react";
import userEvent from "@testing-library/user-event";
import React from "react";
import { BrowserRouter as Router } from "react-router-dom";
import Login from "../components/Common/Auth/Login";


describe('Login', () => {
  test('should render login page with username and password correctly', () => {
    render(<Router><Login /></Router>);
    const pElem = screen.getByText("Don't Have an account?", { exact: false });
    expect(pElem).toBeInTheDocument();
  });

  test('should render login link', () => {
    render(<Router><Login /></Router>);
    const linkElement = screen.getByRole('link', { name: 'Register' });
    expect(linkElement).toBeInTheDocument();
  });

  test('should render username and password text', () => {
    render(<Router><Login /></Router>);
    const usernameLabel = screen.getByText('Username');
    expect(usernameLabel).toBeInTheDocument();
    const passwordLabel = screen.getByText('Password');
    expect(passwordLabel).toBeInTheDocument();
  });



  test('should have login button', () => {
    render(<Router><Login /></Router>);
    const submitBtn = screen.getByRole('button', { name: 'Login' });
    expect(submitBtn).toBeInTheDocument();
  });

  test('should insert username in the input', async () => {
    render(<Router><Login /></Router>);
    const usernameInput = screen.getByPlaceholderText('Username');
    await userEvent.type(usernameInput, 'bhesh');
    expect(usernameInput).toHaveValue('bhesh');
  });

  // correct order of tapping => input ==> submit button ==> link
  test('should tab the elements in a correct order', () => {
    render(<Router><Login /></Router>);

    // find input, button and link
    const firstInputElem = screen.getByTestId('username-input');
    const secondInputElem = screen.getByTestId('password-input');
    const btnElem = screen.getByRole('button', { name: 'Login' });
    const linkElem = screen.getByRole('link', { name: 'Register' });

    userEvent.tab();
    expect(firstInputElem).toHaveFocus();

    userEvent.tab();
    expect(secondInputElem).toHaveFocus();

    userEvent.tab();
    expect(btnElem).toHaveFocus();

    userEvent.tab();
    expect(linkElem).toHaveFocus();
  });
});

