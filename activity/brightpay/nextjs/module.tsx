// E Commerce
// Version 37

import React from 'react';

interface EcommerceProps {
    config?: any;
    version?: number;
}

export const EcommerceComponent: React.FC<EcommerceProps> = ({
    config,
    version = 37
}) => {
    const [data, setData] = React.useState(null);

    React.useEffect(() => {
        // Load data
    }, []);

    return (
        <div>
            <h1>E Commerce</h1>
            <p>Version {version}</p>
        </div>
    );
};

export default EcommerceComponent;
