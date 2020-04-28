/** INTERFACE for Fetch result */
export interface FetchResult{
    status: number;
    data: object | string;
}

/**
 * Fetch function performs XMLHttpRequest 
 * @param {string} url -> url address
 * @param {object} metaData -> config object for fetch
 * @param {function} Call -> {SHOULD NOT ENTERED} fetch funtion
 * @param {string} env -> {SHOULD NOT ENTERED} APPLICATION envirment
 */
export async function Fetch (url:string, metaData:object, Call:any=fetch, env: string = process.env.NODE_ENV):Promise<FetchResult>{
    
    // define fail result object
    let failResult: FetchResult = {
        status: 0,
        data: 'fail to fetch address'
    };

    try{
        let response = await Call(url,metaData); // call api
        let Json = await response.json(); // transform it to json 
        
        // in production should not log the respponse
        if(env !== 'production'){
            console.log('resposne',Json);
        }
        
        // 
        return {
            status: response.status,
            data : Json
        }
    }
    catch(error){
        console.error('error',error, error.response);
        return failResult;
    }
}