import React from 'react';
export default ({ result }) => (
  <a className="item" href={`/stocks/${result.id}`}>
    <div className="middle aligned content">
      <div className="header">{result.Name}</div>
      <div className="meta">{result.Symbol}</div>
    </div>
  </a>
);
