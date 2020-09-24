.class public Lcom/github/javiersantos/licensing/ServerManagedPolicy;
.super Ljava/lang/Object;
.source "ServerManagedPolicy.java"

# interfaces
.implements Lcom/github/javiersantos/licensing/Policy;


# static fields
.field private static final DEFAULT_MAX_RETRIES:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_COUNT:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_UNTIL:Ljava/lang/String; = "0"

.field private static final DEFAULT_VALIDITY_TIMESTAMP:Ljava/lang/String; = "0"

.field private static final MILLIS_PER_MINUTE:J = 0xea60L

.field private static final PREFS_FILE:Ljava/lang/String; = "com.github.javiersantos.licensing.ServerManagedPolicy"

.field private static final PREF_LAST_RESPONSE:Ljava/lang/String; = "lastResponse"

.field private static final PREF_MAX_RETRIES:Ljava/lang/String; = "maxRetries"

.field private static final PREF_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final PREF_RETRY_UNTIL:Ljava/lang/String; = "retryUntil"

.field private static final PREF_VALIDITY_TIMESTAMP:Ljava/lang/String; = "validityTimestamp"

.field private static final TAG:Ljava/lang/String; = "ServerManagedPolicy"


# instance fields
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

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mLastResponseTime:J

    .line 72
    const-string v0, "com.github.javiersantos.licensing.ServerManagedPolicy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    invoke-direct {v1, v0, p2}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;-><init>(Landroid/content/SharedPreferences;Lcom/github/javiersantos/licensing/Obfuscator;)V

    iput-object v1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    .line 74
    iget-object v1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    .line 75
    const/16 v2, 0xc48

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lastResponse"

    invoke-virtual {v1, v3, v2}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mLastResponse:I

    .line 76
    iget-object v1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    const-string v2, "0"

    const-string v3, "validityTimestamp"

    invoke-virtual {v1, v3, v2}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    .line 78
    iget-object v1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    const-string v3, "retryUntil"

    invoke-virtual {v1, v3, v2}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mRetryUntil:J

    .line 79
    iget-object v1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    const-string v3, "maxRetries"

    invoke-virtual {v1, v3, v2}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mMaxRetries:J

    .line 80
    iget-object v1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    const-string v3, "retryCount"

    invoke-virtual {v1, v3, v2}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mRetryCount:J

    .line 81
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

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 256
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

    .line 257
    .local v1, "rawExtras":Ljava/net/URI;
    invoke-static {v1, v0}, Lcom/github/javiersantos/licensing/util/URIQueryDecoder;->DecodeQuery(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v1    # "rawExtras":Ljava/net/URI;
    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v2, "ServerManagedPolicy"

    const-string v3, "Invalid syntax error while decoding extras data from server."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :goto_0
    return-object v0
.end method

.method private setLastResponse(I)V
    .locals 3
    .param p1, "l"    # I

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mLastResponseTime:J

    .line 131
    iput p1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mLastResponse:I

    .line 132
    iget-object v0, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastResponse"

    invoke-virtual {v0, v2, v1}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method private setMaxRetries(Ljava/lang/String;)V
    .locals 3
    .param p1, "maxRetries"    # Ljava/lang/String;

    .line 217
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .local v0, "lMaxRetries":Ljava/lang/Long;
    goto :goto_0

    .line 218
    .end local v0    # "lMaxRetries":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "ServerManagedPolicy"

    const-string v2, "Licence retry count (GR) missing, grace period disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string p1, "0"

    .line 222
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 225
    .local v0, "lMaxRetries":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mMaxRetries:J

    .line 226
    iget-object v1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    const-string v2, "maxRetries"

    invoke-virtual {v1, v2, p1}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private setRetryCount(J)V
    .locals 3
    .param p1, "c"    # J

    .line 147
    iput-wide p1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mRetryCount:J

    .line 148
    iget-object v0, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "retryCount"

    invoke-virtual {v0, v2, v1}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private setRetryUntil(Ljava/lang/String;)V
    .locals 3
    .param p1, "retryUntil"    # Ljava/lang/String;

    .line 191
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .local v0, "lRetryUntil":Ljava/lang/Long;
    goto :goto_0

    .line 192
    .end local v0    # "lRetryUntil":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "ServerManagedPolicy"

    const-string v2, "License retry timestamp (GT) missing, grace period disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string p1, "0"

    .line 196
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 199
    .local v0, "lRetryUntil":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mRetryUntil:J

    .line 200
    iget-object v1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    const-string v2, "retryUntil"

    invoke-virtual {v1, v2, p1}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private setValidityTimestamp(Ljava/lang/String;)V
    .locals 5
    .param p1, "validityTimestamp"    # Ljava/lang/String;

    .line 165
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .local v0, "lValidityTimestamp":Ljava/lang/Long;
    goto :goto_0

    .line 166
    .end local v0    # "lValidityTimestamp":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "ServerManagedPolicy"

    const-string v2, "License validity timestamp (VT) missing, caching for a minute"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 170
    .local v1, "lValidityTimestamp":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    move-object v0, v1

    .line 173
    .end local v1    # "lValidityTimestamp":Ljava/lang/Long;
    .local v0, "lValidityTimestamp":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    .line 174
    iget-object v1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    const-string v2, "validityTimestamp"

    invoke-virtual {v1, v2, p1}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method


# virtual methods
.method public allowAccess()Z
    .locals 9

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 238
    .local v0, "ts":J
    iget v2, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mLastResponse:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xb8a

    if-ne v2, v5, :cond_0

    .line 240
    iget-wide v5, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    cmp-long v2, v0, v5

    if-gtz v2, :cond_3

    .line 242
    return v3

    .line 244
    :cond_0
    const/16 v5, 0xc48

    if-ne v2, v5, :cond_3

    iget-wide v5, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mLastResponseTime:J

    const-wide/32 v7, 0xea60

    add-long/2addr v5, v7

    cmp-long v2, v0, v5

    if-gez v2, :cond_3

    .line 248
    iget-wide v5, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mRetryUntil:J

    cmp-long v2, v0, v5

    if-lez v2, :cond_2

    iget-wide v5, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mRetryCount:J

    iget-wide v7, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mMaxRetries:J

    cmp-long v2, v5, v7

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :cond_2
    :goto_0
    return v3

    .line 250
    :cond_3
    return v4
.end method

.method public getMaxRetries()J
    .locals 2

    .line 204
    iget-wide v0, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mMaxRetries:J

    return-wide v0
.end method

.method public getRetryCount()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mRetryCount:J

    return-wide v0
.end method

.method public getRetryUntil()J
    .locals 2

    .line 178
    iget-wide v0, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mRetryUntil:J

    return-wide v0
.end method

.method public getValidityTimestamp()J
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    return-wide v0
.end method

.method public processServerResponse(ILcom/github/javiersantos/licensing/ResponseData;)V
    .locals 4
    .param p1, "response"    # I
    .param p2, "rawData"    # Lcom/github/javiersantos/licensing/ResponseData;

    .line 98
    const/16 v0, 0xc48

    if-eq p1, v0, :cond_0

    .line 99
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->setRetryCount(J)V

    goto :goto_0

    .line 101
    :cond_0
    iget-wide v0, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->setRetryCount(J)V

    .line 104
    :goto_0
    const/16 v0, 0xb8a

    if-ne p1, v0, :cond_1

    .line 106
    iget-object v0, p2, Lcom/github/javiersantos/licensing/ResponseData;->extra:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->decodeExtras(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 107
    .local v0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput p1, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mLastResponse:I

    .line 108
    const-string v1, "VT"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 109
    const-string v1, "GT"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 110
    const-string v1, "GR"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->setMaxRetries(Ljava/lang/String;)V

    .end local v0    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 111
    :cond_1
    const/16 v0, 0x1b3

    if-ne p1, v0, :cond_2

    .line 113
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, v0}, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->setMaxRetries(Ljava/lang/String;)V

    goto :goto_2

    .line 111
    :cond_2
    :goto_1
    nop

    .line 118
    :goto_2
    invoke-direct {p0, p1}, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->setLastResponse(I)V

    .line 119
    iget-object v0, p0, Lcom/github/javiersantos/licensing/ServerManagedPolicy;->mPreferences:Lcom/github/javiersantos/licensing/PreferenceObfuscator;

    invoke-virtual {v0}, Lcom/github/javiersantos/licensing/PreferenceObfuscator;->commit()V

    .line 120
    return-void
.end method
