from pydantic_settings import BaseSettings


class Settings(BaseSettings):
    PROJECT_NAME: str = "<FTName | capitalcase>"
    API_V1_STR: str = "/api/v1"

    # Security
    SECRET_KEY: str = "YOUR_SUPER_SECRET_KEY_HERE_CHANGE_THIS"
    ALGORITHM: str = "HS256"
    ACCESS_TOKEN_EXPIRE_MINUTES: int = 30

    DATABASE_URL: str


    class Config:
        case_sensitive = True


settings = Settings()