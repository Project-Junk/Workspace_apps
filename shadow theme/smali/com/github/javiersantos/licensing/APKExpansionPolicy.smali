.class public Lcom/github/javiersantos/licensing/APKExpansionPolicy;
.super Ljava/lang/Object;
.source "APKExpansionPolicy.java"

# interfaces
.implements Lcom/github/javiersantos/licensing/Policy;


# static fields
.field private static final DEFAULT_MAX_RETRIES:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_COUNT:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_UNTIL:Ljava/lang/String; = "0"

.field private static final DEFAULT_VALIDITY_TIMESTAMP:Ljava/lang/String; = "0"

.field public static final MAIN_FILE_URL_INDEX:I = 0x0

.field private static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final PATCH_FILE_URL_INDEX:I = 0x1

.field private static final PREFS_FILE:Ljava/lang/String; = "com.github.javiersantos.licensing.APKExpansionPolicy"

.field private static final PREF_LAST_RESPONSE:Ljava/lang/String; = "lastResponse"

.field private static final PREF_MAX_RETRIES:Ljava/lang/String; = "maxRetries"

.field private static final PREF_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final PREF_RETRY_UNTIL:Ljava/lang/String; = "retryUntil"

.field private static final PREF_VALIDITY_TIMESTAMP:Ljava/lang/String; = "validityTimestamp"

.field private static final TAG:Ljava/lang/String; = "APKExpansionPolicy"


# instance fields
.field private mExpansionFileNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExpansionFileSizes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mExpansionURLs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastResponse:I

.field private mLastResponseTime:J

.field private mMaxRetries:J

.field private mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

.field private mRetryCount:J

.field private mRetryUntil:J

.field private mValidityTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/github/javiersantos/licensing/Obfuscator;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "obfuscator"    # Lcom/github/javiersantos/licensing/Obfuscator;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mLastResponseTime:J

    .line 70
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    .line 82
    const-string v0, "com.github.javiersantos.licensing.APKExpansionPolicy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    invoke-direct {v1, v0, p2}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;-><init>(Landroid/content/SharedPreferences;Lcom/github/javiersantos/licensing/Obfuscator;)V

    iput-object v1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    .line 84
    iget-object v1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    .line 85
    const/16 v2, 0xc48

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lastResponse"

    invoke-virtual {v1, v3, v2}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mLastResponse:I

    .line 86
    iget-object v1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    const-string v2, "0"

    const-string v3, "validityTimestamp"

    invoke-virtual {v1, v3, v2}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    .line 88
    iget-object v1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    const-string v3, "retryUntil"

    invoke-virtual {v1, v3, v2}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mRetryUntil:J

    .line 89
    iget-object v1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    const-string v3, "maxRetries"

    invoke-virtual {v1, v3, v2}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mMaxRetries:J

    .line 90
    iget-object v1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    const-string v3, "retryCount"

    invoke-virtual {v1, v3, v2}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mRetryCount:J

    .line 91
    return-void
.end method

.method private decodeExtras(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p1, "extras"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 367
    .local v0, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, "rawExtras":Ljava/net/URI;
    invoke-static {v1, v0}, Lcom/github/javiersantos/licensing/util/URIQueryDecoder;->DecodeQuery(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v1    # "rawExtras":Ljava/net/URI;
    goto :goto_0

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v2, "APKExpansionPolicy"

    const-string v3, "Invalid syntax error while decoding extras data from server."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :goto_0
    return-object v0
.end method

.method private setLastResponse(I)V
    .locals 3
    .param p1, "l"    # I

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mLastResponseTime:J

    .line 172
    iput p1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mLastResponse:I

    .line 173
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastResponse"

    invoke-virtual {v0, v2, v1}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private setMaxRetries(Ljava/lang/String;)V
    .locals 3
    .param p1, "maxRetries"    # Ljava/lang/String;

    .line 258
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .local v0, "lMaxRetries":Ljava/lang/Long;
    goto :goto_0

    .line 259
    .end local v0    # "lMaxRetries":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "APKExpansionPolicy"

    const-string v2, "Licence retry count (GR) missing, grace period disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string p1, "0"

    .line 263
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 266
    .local v0, "lMaxRetries":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mMaxRetries:J

    .line 267
    iget-object v1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    const-string v2, "maxRetries"

    invoke-virtual {v1, v2, p1}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method private setRetryCount(J)V
    .locals 3
    .param p1, "c"    # J

    .line 188
    iput-wide p1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mRetryCount:J

    .line 189
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "retryCount"

    invoke-virtual {v0, v2, v1}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private setRetryUntil(Ljava/lang/String;)V
    .locals 3
    .param p1, "retryUntil"    # Ljava/lang/String;

    .line 232
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .local v0, "lRetryUntil":Ljava/lang/Long;
    goto :goto_0

    .line 233
    .end local v0    # "lRetryUntil":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "APKExpansionPolicy"

    const-string v2, "License retry timestamp (GT) missing, grace period disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string p1, "0"

    .line 237
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 240
    .local v0, "lRetryUntil":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mRetryUntil:J

    .line 241
    iget-object v1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    const-string v2, "retryUntil"

    invoke-virtual {v1, v2, p1}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method private setValidityTimestamp(Ljava/lang/String;)V
    .locals 5
    .param p1, "validityTimestamp"    # Ljava/lang/String;

    .line 206
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .local v0, "lValidityTimestamp":Ljava/lang/Long;
    goto :goto_0

    .line 207
    .end local v0    # "lValidityTimestamp":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "APKExpansionPolicy"

    const-string v2, "License validity timestamp (VT) missing, caching for a minute"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 211
    .local v1, "lValidityTimestamp":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    move-object v0, v1

    .line 214
    .end local v1    # "lValidityTimestamp":Ljava/lang/Long;
    .local v0, "lValidityTimestamp":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    .line 215
    iget-object v1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    const-string v2, "validityTimestamp"

    invoke-virtual {v1, v2, p1}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method


# virtual methods
.method public allowAccess()Z
    .locals 9

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 347
    .local v0, "ts":J
    iget v2, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mLastResponse:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xb8a

    if-ne v2, v5, :cond_0

    .line 350
    iget-wide v5, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    cmp-long v2, v0, v5

    if-gtz v2, :cond_3

    .line 352
    return v3

    .line 354
    :cond_0
    const/16 v5, 0xc48

    if-ne v2, v5, :cond_3

    iget-wide v5, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mLastResponseTime:J

    const-wide/32 v7, 0xea60

    add-long/2addr v5, v7

    cmp-long v2, v0, v5

    if-gez v2, :cond_3

    .line 359
    iget-wide v5, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mRetryUntil:J

    cmp-long v2, v0, v5

    if-lez v2, :cond_2

    iget-wide v5, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mRetryCount:J

    iget-wide v7, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mMaxRetries:J

    cmp-long v2, v5, v7

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :cond_2
    :goto_0
    return v3

    .line 361
    :cond_3
    return v4
.end method

.method public getExpansionFileName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 313
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 316
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpansionFileSize(I)J
    .locals 2
    .param p1, "index"    # I

    .line 327
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 330
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getExpansionURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 289
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpansionURLCount()I
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getMaxRetries()J
    .locals 2

    .line 245
    iget-wide v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mMaxRetries:J

    return-wide v0
.end method

.method public getRetryCount()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mRetryCount:J

    return-wide v0
.end method

.method public getRetryUntil()J
    .locals 2

    .line 219
    iget-wide v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mRetryUntil:J

    return-wide v0
.end method

.method public getValidityTimestamp()J
    .locals 2

    .line 193
    iget-wide v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    return-wide v0
.end method

.method public processServerResponse(ILcom/github/javiersantos/licensing/ResponseData;)V
    .locals 7
    .param p1, "response"    # I
    .param p2, "rawData"    # Lcom/github/javiersantos/licensing/ResponseData;

    .line 122
    const/16 v0, 0xc48

    if-eq p1, v0, :cond_0

    .line 123
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setRetryCount(J)V

    goto :goto_0

    .line 125
    :cond_0
    iget-wide v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setRetryCount(J)V

    .line 128
    :goto_0
    const/16 v0, 0xb8a

    if-ne p1, v0, :cond_8

    .line 130
    iget-object v0, p2, Lcom/github/javiersantos/licensing/ResponseData;->extra:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->decodeExtras(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 131
    .local v0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput p1, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mLastResponse:I

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 133
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 134
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 135
    .local v3, "key":Ljava/lang/String;
    const-string v4, "VT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 137
    :cond_1
    const-string v4, "GT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 139
    :cond_2
    const-string v4, "GR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    goto :goto_3

    .line 141
    :cond_3
    const-string v4, "FILE_URL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 142
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 143
    .local v4, "index":I
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setExpansionURL(ILjava/lang/String;)V

    .line 144
    .end local v4    # "index":I
    goto :goto_3

    :cond_4
    const-string v4, "FILE_NAME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 145
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 146
    .restart local v4    # "index":I
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setExpansionFileName(ILjava/lang/String;)V

    .end local v4    # "index":I
    goto :goto_2

    .line 147
    :cond_5
    const-string v4, "FILE_SIZE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 148
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 149
    .restart local v4    # "index":I
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setExpansionFileSize(IJ)V

    goto :goto_3

    .line 147
    .end local v4    # "index":I
    :cond_6
    :goto_2
    nop

    .line 151
    .end local v3    # "key":Ljava/lang/String;
    :goto_3
    goto/16 :goto_1

    .line 134
    .end local v0    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    goto :goto_4

    .line 152
    :cond_8
    const/16 v0, 0x1b3

    if-ne p1, v0, :cond_9

    .line 154
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, v0}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    goto :goto_5

    .line 152
    :cond_9
    :goto_4
    nop

    .line 159
    :goto_5
    invoke-direct {p0, p1}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setLastResponse(I)V

    .line 160
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    invoke-virtual {v0}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->commit()V

    .line 161
    return-void
.end method

.method public resetPolicy()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    const/16 v1, 0xc48

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastResponse"

    invoke-virtual {v0, v2, v1}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, v0}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    .line 101
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setRetryCount(J)V

    .line 102
    invoke-direct {p0, v0}, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    invoke-virtual {v0}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->commit()V

    .line 104
    return-void
.end method

.method public setExpansionFileName(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-void
.end method

.method public setExpansionFileSize(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "size"    # J

    .line 334
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 338
    return-void
.end method

.method public setExpansionURL(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "URL"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/github/javiersantos/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-void
.end method
