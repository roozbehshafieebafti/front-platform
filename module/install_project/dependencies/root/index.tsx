import React from 'react';

const Root:React.FC = () =>{
    return (
        <div id="root-main-div" style={styles}>
            <div>
                <p>This is Front Platform</p>
                <p style={{fontSize: 16,textAlign: 'center'}}>Produced By: roozbeh shafiee bafti</p>
            </div>
        </div>
    );
}

const styles:object ={
    position: 'absolute',
    bottom: 0,
    right: 0,
    top: 0,
    left: 0,
    backgroundColor: 'black',
    color: 'white',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    fontSize: 40
}

export default Root;