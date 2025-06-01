# GET JWT TOKEN (BEARER )
python get_jwt_token.py <.pem file> 
Type the client ID and get the JWT token
# API GET installation
    GET https://api.github.com/users/{userName}/installation
    Headers:
    Authorization : Bearer <JWT token>
        curl -L \
        -H "Accept: application/vnd.github+json" \
        -H "Authorization: Bearer <YOUR-TOKEN>" \
        https://api.github.com/app/installations
# API POST installation
    POST https://api.github.com/app/installations/{installation_id}/access_tokens
    Headers:
    Authorization : Bearer <JWT token>
        curl -L \
        -X POST \
        -H "Accept: application/vnd.github+json" \
        -H "Authorization: Bearer <YOUR-TOKEN>" \
        https://api.github.com/app/installations/1/access_tokens
# Git Clone
git clone https://x-access-token:<access_token>@github.com/{userName}/{repoName}.git
