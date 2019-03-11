local Escher = require "escher"

local date = "20181110T120221Z"

local escher = Escher:new({
    vendorKey = "EMS",
    algoPrefix = "EMS",
    hashAlgo = "SHA256",
    credentialScope = "eu/some-service/ems_request",
    authHeaderName = "X-Ems-Auth",
    dateHeaderName = "X-Ems-Date",
    date = date,
    apiSecret = "v3ry53cr3t",
    accessKeyId = "some-service_suite_v1"
})

local request = {
    method = "GET",
    url = "/first",
    headers = {
        { "Host", "example.com" },
        { "X-Ems-Date", date }
    }
}

local signature = escher:generateHeader(request, {})

print(signature)
