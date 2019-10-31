import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Index from "../packs/Index";

export default (
  <Router>
    <Switch>
      <Route path="/" exact component={Index} />
    </Switch>
  </Router>
);
