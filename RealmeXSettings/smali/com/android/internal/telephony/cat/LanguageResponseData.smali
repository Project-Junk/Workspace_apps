.class Lcom/android/internal/telephony/cat/LanguageResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mLang:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->mLang:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 190
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 191
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->mLang:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->mLang:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_1
    new-array v0, v1, [B

    .line 202
    :goto_0
    array-length v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 204
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-byte v3, v0, v1

    .line 205
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
