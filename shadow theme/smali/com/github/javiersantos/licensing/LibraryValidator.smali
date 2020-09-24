.class Lcom/github/javiersantos/licensing/LibraryValidator;
.super Ljava/lang/Object;
.source "LibraryValidator.java"


# static fields
.field private static final ERROR_CONTACTING_SERVER:I = 0x101

.field private static final ERROR_INVALID_PACKAGE_NAME:I = 0x102

.field private static final ERROR_NON_MATCHING_UID:I = 0x103

.field private static final ERROR_NOT_MARKET_MANAGED:I = 0x3

.field private static final ERROR_OVER_QUOTA:I = 0x5

.field private static final ERROR_SERVER_FAILURE:I = 0x4

.field private static final LICENSED:I = 0x0

.field private static final LICENSED_OLD_KEY:I = 0x2

.field private static final NOT_LICENSED:I = 0x1

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "LibraryValidator"


# instance fields
.field private final mCallback:Lcom/github/javiersantos/licensing/LibraryCheckerCallback;

.field private final mDeviceLimiter:Lcom/github/javiersantos/licensing/DeviceLimiter;

.field private final mNonce:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPolicy:Lcom/github/javiersantos/licensing/Policy;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/github/javiersantos/licensing/Policy;Lcom/github/javiersantos/licensing/DeviceLimiter;Lcom/github/javiersantos/licensing/LibraryCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "policy"    # Lcom/github/javiersantos/licensing/Policy;
    .param p2, "deviceLimiter"    # Lcom/github/javiersantos/licensing/DeviceLimiter;
    .param p3, "callback"    # Lcom/github/javiersantos/licensing/LibraryCheckerCallback;
    .param p4, "nonce"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "versionCode"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mPolicy:Lcom/github/javiersantos/licensing/Policy;

    .line 60
    iput-object p2, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mDeviceLimiter:Lcom/github/javiersantos/licensing/DeviceLimiter;

    .line 61
    iput-object p3, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mCallback:Lcom/github/javiersantos/licensing/LibraryCheckerCallback;

    .line 62
    iput p4, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mNonce:I

    .line 63
    iput-object p5, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mPackageName:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mVersionCode:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private handleApplicationError(I)V
    .locals 1
    .param p1, "code"    # I

    .line 226
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mCallback:Lcom/github/javiersantos/licensing/LibraryCheckerCallback;

    invoke-interface {v0, p1}, Lcom/github/javiersantos/licensing/LibraryCheckerCallback;->applicationError(I)V

    .line 227
    return-void
.end method

.method private handleInvalidResponse()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mCallback:Lcom/github/javiersantos/licensing/LibraryCheckerCallback;

    const/16 v1, 0x1b3

    invoke-interface {v0, v1}, Lcom/github/javiersantos/licensing/LibraryCheckerCallback;->dontAllow(I)V

    .line 231
    return-void
.end method

.method private handleResponse(ILcom/github/javiersantos/licensing/ResponseData;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "rawData"    # Lcom/github/javiersantos/licensing/ResponseData;

    .line 214
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mPolicy:Lcom/github/javiersantos/licensing/Policy;

    invoke-interface {v0, p1, p2}, Lcom/github/javiersantos/licensing/Policy;->processServerResponse(ILcom/github/javiersantos/licensing/ResponseData;)V

    .line 218
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mPolicy:Lcom/github/javiersantos/licensing/Policy;

    invoke-interface {v0}, Lcom/github/javiersantos/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mCallback:Lcom/github/javiersantos/licensing/LibraryCheckerCallback;

    invoke-interface {v0, p1}, Lcom/github/javiersantos/licensing/LibraryCheckerCallback;->allow(I)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mCallback:Lcom/github/javiersantos/licensing/LibraryCheckerCallback;

    invoke-interface {v0, p1}, Lcom/github/javiersantos/licensing/LibraryCheckerCallback;->dontAllow(I)V

    .line 223
    :goto_0
    return-void
.end method


# virtual methods
.method public check(Ljava/security/PublicKey;ILjava/lang/String;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 8
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "responseCode"    # I
    .param p3, "signedData"    # Ljava/lang/String;
    .param p4, "calendar"    # Ljava/util/Calendar;
    .param p5, "signature"    # Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "userId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 97
    .local v1, "data":Lcom/github/javiersantos/licensing/ResponseData;
    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "LibraryValidator"

    if-nez p4, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleInvalidResponse()V

    goto/16 :goto_0

    .line 99
    :cond_0
    if-eqz p2, :cond_1

    if-eq p2, v4, :cond_1

    if-ne p2, v3, :cond_8

    .line 103
    :cond_1
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    const-string v3, "Signature verification failed: signedData is empty. (Device not signed-in to any Google accounts?)"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleInvalidResponse()V

    .line 107
    return-void

    .line 110
    :cond_2
    const-string v6, "SHA1withRSA"

    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v6

    .line 111
    .local v6, "sig":Ljava/security/Signature;
    invoke-virtual {v6, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 112
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/Signature;->update([B)V

    .line 114
    invoke-static {p5}, Lcom/github/javiersantos/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v7

    if-nez v7, :cond_3

    .line 115
    const-string v3, "Signature verification failed."

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleInvalidResponse()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/github/javiersantos/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    return-void

    .line 129
    .end local v6    # "sig":Ljava/security/Signature;
    :cond_3
    nop

    .line 133
    :try_start_1
    invoke-static {p3}, Lcom/github/javiersantos/licensing/ResponseData;->parse(Ljava/lang/String;)Lcom/github/javiersantos/licensing/ResponseData;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v6

    .line 138
    nop

    .line 140
    iget v6, v1, Lcom/github/javiersantos/licensing/ResponseData;->responseCode:I

    if-eq v6, p2, :cond_4

    .line 141
    const-string v2, "Response codes don\'t match."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleInvalidResponse()V

    .line 143
    return-void

    .line 146
    :cond_4
    iget v6, v1, Lcom/github/javiersantos/licensing/ResponseData;->nonce:I

    iget v7, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mNonce:I

    if-eq v6, v7, :cond_5

    .line 147
    const-string v2, "Nonce doesn\'t match."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleInvalidResponse()V

    .line 149
    return-void

    .line 152
    :cond_5
    iget-object v6, v1, Lcom/github/javiersantos/licensing/ResponseData;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 153
    const-string v2, "Package name doesn\'t match."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleInvalidResponse()V

    .line 155
    return-void

    .line 158
    :cond_6
    iget-object v6, v1, Lcom/github/javiersantos/licensing/ResponseData;->versionCode:Ljava/lang/String;

    iget-object v7, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mVersionCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 159
    const-string v2, "Version codes don\'t match."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleInvalidResponse()V

    .line 161
    return-void

    .line 165
    :cond_7
    iget-object v0, v1, Lcom/github/javiersantos/licensing/ResponseData;->userId:Ljava/lang/String;

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 167
    const-string v2, "User identifier is empty."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleInvalidResponse()V

    .line 169
    return-void

    .line 173
    :cond_8
    :goto_0
    if-eqz p2, :cond_d

    if-eq p2, v4, :cond_c

    if-eq p2, v3, :cond_d

    const/4 v6, 0x3

    if-eq p2, v6, :cond_b

    const/4 v6, 0x4

    const/16 v7, 0xc48

    if-eq p2, v6, :cond_a

    if-eq p2, v2, :cond_9

    packed-switch p2, :pswitch_data_0

    .line 204
    const-string v2, "Unknown response code for license check."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleInvalidResponse()V

    goto :goto_1

    .line 198
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleApplicationError(I)V

    .line 199
    goto :goto_1

    .line 195
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleApplicationError(I)V

    .line 196
    goto :goto_1

    .line 183
    :pswitch_2
    const-string v2, "Error contacting licensing server."

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0, v7, v1}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleResponse(ILcom/github/javiersantos/licensing/ResponseData;)V

    .line 185
    goto :goto_1

    .line 191
    :cond_9
    const-string v2, "Licensing server is refusing to talk to this device, over quota."

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0, v7, v1}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleResponse(ILcom/github/javiersantos/licensing/ResponseData;)V

    .line 193
    goto :goto_1

    .line 187
    :cond_a
    const-string v2, "An error has occurred on the licensing server."

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0, v7, v1}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleResponse(ILcom/github/javiersantos/licensing/ResponseData;)V

    .line 189
    goto :goto_1

    .line 201
    :cond_b
    invoke-direct {p0, v6}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleApplicationError(I)V

    .line 202
    goto :goto_1

    .line 180
    :cond_c
    const/16 v2, 0x1b3

    invoke-direct {p0, v2, v1}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleResponse(ILcom/github/javiersantos/licensing/ResponseData;)V

    .line 181
    goto :goto_1

    .line 176
    :cond_d
    iget-object v2, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mDeviceLimiter:Lcom/github/javiersantos/licensing/DeviceLimiter;

    invoke-interface {v2, v0}, Lcom/github/javiersantos/licensing/DeviceLimiter;->isDeviceAllowed(Ljava/lang/String;)I

    move-result v2

    .line 177
    .local v2, "limiterResponse":I
    invoke-direct {p0, v2, v1}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleResponse(ILcom/github/javiersantos/licensing/ResponseData;)V

    .line 178
    nop

    .line 207
    .end local v2    # "limiterResponse":I
    :goto_1
    return-void

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Could not parse response."

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleInvalidResponse()V

    .line 137
    return-void

    .line 125
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 126
    .local v2, "e":Lcom/github/javiersantos/licensing/util/Base64DecoderException;
    const-string v3, "Could not Base64-decode signature."

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleInvalidResponse()V

    .line 128
    return-void

    .line 122
    .end local v2    # "e":Lcom/github/javiersantos/licensing/util/Base64DecoderException;
    :catch_2
    move-exception v3

    .line 123
    .local v3, "e":Ljava/security/InvalidKeyException;
    invoke-direct {p0, v2}, Lcom/github/javiersantos/licensing/LibraryValidator;->handleApplicationError(I)V

    .line 124
    return-void

    .line 119
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v2

    .line 121
    .local v2, "e":Ljava/security/GeneralSecurityException;
    :goto_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCallback()Lcom/github/javiersantos/licensing/LibraryCheckerCallback;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mCallback:Lcom/github/javiersantos/licensing/LibraryCheckerCallback;

    return-object v0
.end method

.method public getNonce()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mNonce:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryValidator;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
