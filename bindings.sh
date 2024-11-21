#!/bin/bash

# bindings=""

# while IFS= read -r line || [ -n "$line" ]; do
#   if [[ ! "$line" =~ ^# ]] && [[ -n "$line" ]]; then
#     name=$(echo "$line" | cut -d '=' -f 1)
#     value=$(echo "$line" | cut -d '=' -f 2-)
#     value=$(echo $value | sed 's/^"\(.*\)"$/\1/')
#     bindings+="--binding ${name}=${value} "
#   fi
# done < .env.local

# bindings=$(echo $bindings | sed 's/[[:space:]]*$//')

# echo $bindings

# Output all environment variables as wrangler bindings
echo "--binding AMAZON_BEDROCK_REGION=$AMAZON_BEDROCK_REGION \
      --binding AMAZON_BEDROCK_ACCESS_KEY_ID=$AMAZON_BEDROCK_ACCESS_KEY_ID \
      --binding AMAZON_BEDROCK_SECRET_ACCESS_KEY=$AMAZON_BEDROCK_SECRET_ACCESS_KEY \
      --binding GROQ_API_KEY=$GROQ_API_KEY \
      --binding OPENAI_API_KEY=$OPENAI_API_KEY \
      --binding ANTHROPIC_API_KEY=$ANTHROPIC_API_KEY \
      --binding OPEN_ROUTER_API_KEY=$OPEN_ROUTER_API_KEY \
      --binding GOOGLE_GENERATIVE_AI_API_KEY=$GOOGLE_GENERATIVE_AI_API_KEY \
      --binding OLLAMA_API_BASE_URL=$OLLAMA_API_BASE_URL \
      --binding VITE_LOG_LEVEL=${VITE_LOG_LEVEL:-debug}"