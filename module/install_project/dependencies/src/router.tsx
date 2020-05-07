// node libraries
import React from 'react';
import {BrowserRouter, Route} from 'react-router-dom';
// components
import Root from './containers/root';


/**
 * Router Container
 */
function Router() {
    return (
        <BrowserRouter>
            <Route path="/" exact render={Root}/>
        </BrowserRouter>
    );
}

export default Router;
