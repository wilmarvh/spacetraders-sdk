//
// ContractsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ContractsAPI {

    /**
     Accept Contract
     
     - parameter contractId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func acceptContract(contractId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AcceptContract200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return acceptContractWithRequestBuilder(contractId: contractId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Accept Contract
     - POST /my/contracts/{contractId}/accept
     - Accept a contract.
     - BASIC:
       - type: http
       - name: AgentToken
     - parameter contractId: (path)  
     - returns: RequestBuilder<AcceptContract200Response> 
     */
    open class func acceptContractWithRequestBuilder(contractId: String) -> RequestBuilder<AcceptContract200Response> {
        var localVariablePath = "/my/contracts/{contractId}/accept"
        let contractIdPreEscape = "\(APIHelper.mapValueToPathItem(contractId))"
        let contractIdPostEscape = contractIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contractId}", with: contractIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AcceptContract200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Deliver Contract
     
     - parameter contractId: (path) The ID of the contract 
     - parameter deliverContractRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deliverContract(contractId: String, deliverContractRequest: DeliverContractRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: DeliverContract200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return deliverContractWithRequestBuilder(contractId: contractId, deliverContractRequest: deliverContractRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Deliver Contract
     - POST /my/contracts/{contractId}/deliver
     - Deliver cargo on a given contract.
     - BASIC:
       - type: http
       - name: AgentToken
     - parameter contractId: (path) The ID of the contract 
     - parameter deliverContractRequest: (body)  (optional)
     - returns: RequestBuilder<DeliverContract200Response> 
     */
    open class func deliverContractWithRequestBuilder(contractId: String, deliverContractRequest: DeliverContractRequest? = nil) -> RequestBuilder<DeliverContract200Response> {
        var localVariablePath = "/my/contracts/{contractId}/deliver"
        let contractIdPreEscape = "\(APIHelper.mapValueToPathItem(contractId))"
        let contractIdPostEscape = contractIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contractId}", with: contractIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deliverContractRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DeliverContract200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Fulfill Contract
     
     - parameter contractId: (path) The ID of the contract 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func fulfillContract(contractId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: FulfillContract200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return fulfillContractWithRequestBuilder(contractId: contractId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Fulfill Contract
     - POST /my/contracts/{contractId}/fulfill
     - Fulfill a contract
     - BASIC:
       - type: http
       - name: AgentToken
     - parameter contractId: (path) The ID of the contract 
     - returns: RequestBuilder<FulfillContract200Response> 
     */
    open class func fulfillContractWithRequestBuilder(contractId: String) -> RequestBuilder<FulfillContract200Response> {
        var localVariablePath = "/my/contracts/{contractId}/fulfill"
        let contractIdPreEscape = "\(APIHelper.mapValueToPathItem(contractId))"
        let contractIdPostEscape = contractIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contractId}", with: contractIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FulfillContract200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Contract
     
     - parameter contractId: (path) The contract ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getContract(contractId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetContract200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getContractWithRequestBuilder(contractId: contractId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Contract
     - GET /my/contracts/{contractId}
     - Get the details of a contract by ID.
     - BASIC:
       - type: http
       - name: AgentToken
     - parameter contractId: (path) The contract ID 
     - returns: RequestBuilder<GetContract200Response> 
     */
    open class func getContractWithRequestBuilder(contractId: String) -> RequestBuilder<GetContract200Response> {
        var localVariablePath = "/my/contracts/{contractId}"
        let contractIdPreEscape = "\(APIHelper.mapValueToPathItem(contractId))"
        let contractIdPostEscape = contractIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contractId}", with: contractIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetContract200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     List Contracts
     
     - parameter page: (query) What entry offset to request (optional)
     - parameter limit: (query) How many entries to return per page (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getContracts(page: Int? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetContracts200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getContractsWithRequestBuilder(page: page, limit: limit).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Contracts
     - GET /my/contracts
     - List all of your contracts.
     - BASIC:
       - type: http
       - name: AgentToken
     - parameter page: (query) What entry offset to request (optional)
     - parameter limit: (query) How many entries to return per page (optional)
     - returns: RequestBuilder<GetContracts200Response> 
     */
    open class func getContractsWithRequestBuilder(page: Int? = nil, limit: Int? = nil) -> RequestBuilder<GetContracts200Response> {
        let localVariablePath = "/my/contracts"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetContracts200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
