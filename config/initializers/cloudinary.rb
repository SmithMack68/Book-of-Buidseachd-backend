# CLOUD_NAME=dcpwwcueu
# API_KEY=243358212223215
# API_SECRET=2BOQfmRPd5MxnzOlsYCzQceIL54

# Cloudinary.config do |config|
#     config.cloud_name = "CLOUD_NAME"
#     config.api_key = "API_KEY"
#     config.api_secret = "API_SECRET"
# end

Cloudinary.config_from_url("cloudinary://243358212223215:2BOQfmRPd5MxnzOlsYCzQceIL54@dcpwwcueu")
Cloudinary.config do |config|
    config.secure = true
end

# CLOUDINARY_URL=cloudinary://243358212223215:2BOQfmRPd5MxnzOlsYCzQceIL54@dcpwwcueu