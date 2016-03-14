i=0

while [[ i -lt 100 ]]; do
let i++

read -p "DomainName: " domain
read -p "AuthCode: " authCode

echo "
{
    \"DomainName\": \"$domain\",
    \"IdnLangCode\": \"eng\",
    \"DurationInYears\": 1,
    \"AuthCode\": \"$authCode\",
    \"AutoRenew\": true,
    \"AdminContact\": {
         \"FirstName\": \"\",
         \"LastName\": \"\",
         \"ContactType\": \"\",
         \"OrganizationName\": \"\",
         \"AddressLine1\": \"\",
         \"AddressLine2\": \"\",
         \"City\": \"\",
         \"State\": \"WI\",
         \"CountryCode\": \"US\",
         \"ZipCode\": \"\",
         \"PhoneNumber\": \"\",
         \"Email\": \"\",
         \"Fax\": \"\",
         \"ExtraParams\": []
    },
    \"RegistrantContact\": {
         \"FirstName\": \"\",
         \"LastName\": \"\",
         \"ContactType\": \"\",
         \"OrganizationName\": \"\",
         \"AddressLine1\": \"\",
         \"AddressLine2\": \"\",
         \"City\": \"\",
         \"State\": \"WI\",
         \"CountryCode\": \"US\",
         \"ZipCode\": \"\",
         \"PhoneNumber\": \"\",
         \"Email\": \"\",
         \"Fax\": \"\",
         \"ExtraParams\": []
    },
    \"TechContact\": {
         \"FirstName\": \"\",
         \"LastName\": \"\",
         \"ContactType\": \"\",
         \"OrganizationName\": \"\",
         \"AddressLine1\": \"\",
         \"AddressLine2\": \"\",
         \"City\": \"\",
         \"State\": \"WI\",
         \"CountryCode\": \"US\",
         \"ZipCode\": \"\",
         \"PhoneNumber\": \"\",
         \"Email\": \"\",
         \"Fax\": \"\",
         \"ExtraParams\": []
    },
    \"PrivacyProtectAdminContact\": true,
    \"PrivacyProtectRegistrantContact\": true,
    \"PrivacyProtectTechContact\": true
}
" > domain.json


aws route53domains transfer-domain --cli-input-json file://domain.json

done
