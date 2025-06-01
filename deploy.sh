# Xóa phiên bản cũ
rm -rf dating_app
JWT="$(cat key.tk)"
INSTALL_ID=$2
RESPONSE=$(curl -L \
    -X POST \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $JWT" \
    https://api.github.com/app/installations/$INSTALL_ID/access_tokens)
TOKEN=$(echo $RESPONSE | jq -r '.token')
# Tạo cái mới
git clone https://x-access-token:$TOKEN@github.com/<username>/<res>.git
echo "GIT CLONE THÀNH CÔNG"

