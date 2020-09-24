.class public Lcom/github/javiersantos/licensing/AESObfuscator;
.super Ljava/lang/Object;
.source "AESObfuscator.java"

# interfaces
.implements Lcom/github/javiersantos/licensing/Obfuscator;


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final IV:[B

.field private static final KEYGEN_ALGORITHM:Ljava/lang/String; = "PBEWITHSHAAND256BITAES-CBC-BC"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static final header:Ljava/lang/String; = "com.github.javiersantos.licensing.AESObfuscator-1|"


# instance fields
.field private mDecryptor:Ljavax/crypto/Cipher;

.field private mEncryptor:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/javiersantos/licensing/AESObfuscator;->IV:[B

    return-void

    :array_0
    .array-data 1
        0x10t
        0x4at
        0x47t
        -0x50t
        0x20t
        0x65t
        -0x2ft
        0x48t
        0x75t
        -0xet
        0x0t
        -0x1dt
        0x46t
        0x41t
        -0xct
        0x4at
    .end array-data
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "salt"    # [B
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .line 57
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    :try_start_0
    const-string v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 60
    .local v1, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/16 v4, 0x400

    const/16 v5, 0x100

    invoke-direct {v2, v3, p1, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 62
    .local v2, "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 63
    .local v3, "tmp":Ljavax/crypto/SecretKey;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 64
    .local v4, "secret":Ljavax/crypto/SecretKey;
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    iput-object v5, p0, Lcom/github/javiersantos/licensing/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    .line 65
    iget-object v5, p0, Lcom/github/javiersantos/licensing/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    const/4 v6, 0x1

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v8, Lcom/github/javiersantos/licensing/AESObfuscator;->IV:[B

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v5, v6, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 66
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/github/javiersantos/licensing/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    .line 67
    iget-object v0, p0, Lcom/github/javiersantos/licensing/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v7, Lcom/github/javiersantos/licensing/AESObfuscator;->IV:[B

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v5, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "keySpec":Ljava/security/spec/KeySpec;
    .end local v3    # "tmp":Ljavax/crypto/SecretKey;
    .end local v4    # "secret":Ljavax/crypto/SecretKey;
    nop

    .line 72
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid environment"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public obfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 75
    if-nez p1, :cond_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/github/javiersantos/licensing/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.github.javiersantos.licensing.AESObfuscator-1|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/github/javiersantos/licensing/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid environment"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unobfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "obfuscated"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/javiersantos/licensing/ValidationException;
        }
    .end annotation

    .line 87
    const-string v0, "com.github.javiersantos.licensing.AESObfuscator-1|"

    if-nez p1, :cond_0

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/github/javiersantos/licensing/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    invoke-static {p1}, Lcom/github/javiersantos/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 94
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 95
    .local v2, "headerIndex":I
    if-nez v2, :cond_1

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    new-instance v0, Lcom/github/javiersantos/licensing/ValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Header not found (invalid data or key):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/github/javiersantos/licensing/ValidationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "obfuscated":Ljava/lang/String;
    .end local p2    # "key":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Lcom/github/javiersantos/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "headerIndex":I
    .restart local p1    # "obfuscated":Ljava/lang/String;
    .restart local p2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid environment"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 100
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lcom/github/javiersantos/licensing/ValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/javiersantos/licensing/ValidationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
