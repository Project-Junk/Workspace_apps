.class public Lcom/android/internal/telephony/RetryManager;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RetryManager$RetryRec;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final DEFAULT_APN_RETRY_AFTER_DISCONNECT_DELAY:J = 0x2710L

.field private static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field private static final DEFAULT_INTER_APN_DELAY:J = 0x4e20L

.field private static final DEFAULT_INTER_APN_DELAY_FOR_PROVISIONING:J = 0xbb8L

.field public static final LOG_TAG:Ljava/lang/String; = "RetryManager"

.field private static final MAX_SAME_APN_RETRY:I = 0x3

.field public static final NO_RETRY:J = -0x1L

.field public static final NO_SUGGESTED_RETRY_DELAY:J = -0x2L

.field private static final OTHERS_APN_TYPE:Ljava/lang/String; = "others"

.field public static final VDBG:Z = false


# instance fields
.field private mApnRetryAfterDisconnectDelay:J

.field private mApnType:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mConfig:Ljava/lang/String;

.field private mCurrentApnIndex:I

.field private mFailFastInterApnDelay:J
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mInterApnDelay:J
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mMaxRetryCount:I

.field private mModemSuggestedDelay:J

.field private mPhone:Lcom/android/internal/telephony/Phone;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mRetryArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/RetryManager$RetryRec;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mRetryForever:Z

.field private mRng:Ljava/util/Random;

.field private mSameApnRetryCount:I

.field private mWaitingApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 2

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x2

    .line 157
    iput-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    const/4 v0, 0x0

    .line 162
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    .line 188
    iput-boolean v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    .line 198
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 204
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRng:Ljava/util/Random;

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 220
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    .line 234
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 235
    iput-object p2, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    return-void
.end method

.method private configure(Ljava/lang/String;)Z
    .locals 8
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "\""

    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->reset()V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configure: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 256
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, ","

    .line 263
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v3, v1

    .line 264
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_a

    .line 267
    aget-object v4, p1, v1

    const/4 v5, 0x2

    const-string v6, "="

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 268
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 270
    array-length v6, v4

    if-le v6, v2, :cond_6

    .line 271
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 273
    aget-object v5, v4, v0

    const-string v6, "default_randomization"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 274
    aget-object v3, v4, v0

    aget-object v4, v4, v2

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 275
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    return v0

    .line 276
    :cond_1
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_2

    .line 277
    :cond_2
    aget-object v5, v4, v0

    const-string v6, "max_retries"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 278
    aget-object v5, v4, v2

    const-string v6, "infinite"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 279
    iput-boolean v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    goto/16 :goto_2

    .line 281
    :cond_3
    aget-object v5, v4, v0

    aget-object v4, v4, v2

    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 282
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    return v0

    .line 283
    :cond_4
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    goto/16 :goto_2

    .line 286
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized configuration name value pair: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RetryManager"

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 295
    :cond_6
    aget-object v4, p1, v1

    const-string v6, ":"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 296
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 297
    new-instance v5, Lcom/android/internal/telephony/RetryManager$RetryRec;

    invoke-direct {v5, v0, v0}, Lcom/android/internal/telephony/RetryManager$RetryRec;-><init>(II)V

    .line 298
    aget-object v6, v4, v0

    const-string v7, "delayTime"

    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 299
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_7

    return v0

    .line 300
    :cond_7
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    .line 303
    array-length v6, v4

    if-le v6, v2, :cond_9

    .line 304
    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 306
    aget-object v4, v4, v2

    const-string v6, "randomizationTime"

    invoke-direct {p0, v6, v4}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 307
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_8

    return v0

    .line 308
    :cond_8
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    goto :goto_1

    .line 310
    :cond_9
    iput v3, v5, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    .line 312
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 315
    :cond_a
    iget-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-le p1, v0, :cond_c

    .line 316
    iget-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    goto :goto_3

    :cond_b
    const-string p1, "configure: cleared"

    .line 320
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    :cond_c
    :goto_3
    return v2
.end method

.method private configureRetry()V
    .locals 15

    const-string v0, "max_retries=3, 5000, 5000, 5000"

    const-wide/16 v1, 0xbb8

    const-wide/16 v3, 0x4e20

    .line 335
    :try_start_0
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "test.data_retry_config"

    .line 337
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 338
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 339
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    return-void

    .line 344
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 345
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "carrier_config"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CarrierConfigManager;

    .line 346
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    const-string v6, "carrier_data_call_apn_delay_default_long"

    .line 348
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    const-string v6, "carrier_data_call_apn_delay_faster_long"

    .line 351
    invoke-virtual {v5, v6, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    const-string v6, "carrier_data_call_apn_retry_after_disconnect_long"

    const-wide/16 v7, 0x2710

    .line 354
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/RetryManager;->mApnRetryAfterDisconnectDelay:J

    const-string v6, "carrier_data_call_retry_config_strings"

    .line 359
    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 362
    array-length v7, v5

    const/4 v8, 0x0

    move-object v10, v6

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_4

    aget-object v11, v5, v9

    .line 363
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, ":"

    const/4 v13, 0x2

    .line 364
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 365
    array-length v12, v11

    if-ne v12, v13, :cond_2

    .line 366
    aget-object v12, v11, v8

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 368
    iget-object v13, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_1

    .line 371
    aget-object v6, v11, v14

    goto :goto_1

    :cond_1
    const-string v13, "others"

    .line 373
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 376
    aget-object v10, v11, v14

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    move-object v10, v6

    :cond_4
    :goto_1
    if-nez v6, :cond_6

    if-eqz v10, :cond_5

    move-object v0, v10

    goto :goto_2

    :cond_5
    const-string v5, "Invalid APN retry configuration!. Use the default one now."

    .line 389
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_6
    move-object v0, v6

    goto :goto_2

    :catch_0
    const-string v5, "Failed to read configuration! Use the hardcoded default value."

    .line 395
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 397
    iput-wide v3, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    .line 398
    iput-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    .line 407
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    return-void
.end method

.method private getRetryTimer()I
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 416
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 417
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    goto :goto_0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 423
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RetryManager$RetryRec;

    iget v1, v1, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->nextRandomizationTime(I)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 429
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getRetryTimer: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RetryManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private nextRandomizationTime(I)I
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RetryManager$RetryRec;

    iget p1, p1, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRng:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1
.end method

.method private parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 443
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 444
    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " bad value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RetryManager"

    invoke-static {p2, p1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    new-instance v1, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 615
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    .line 616
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    const/4 v1, -0x1

    .line 617
    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    .line 618
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    const-wide/16 v0, -0x2

    .line 619
    iput-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private validateNonNegativeInt(Ljava/lang/String;I)Z
    .locals 0

    if-gez p2, :cond_0

    .line 465
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " bad value: is < 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RetryManager"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public getDelayForNextApn(Z)J
    .locals 7

    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 540
    :cond_0
    iget-wide v3, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const-string p1, "Modem suggested not retrying."

    .line 541
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return-wide v1

    :cond_1
    const-wide/16 v5, -0x2

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 545
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    .line 549
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Modem suggested retry in "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 550
    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    return-wide v0

    .line 559
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 561
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    const/4 v0, 0x0

    .line 564
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 570
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    if-ne v0, v3, :cond_3

    const-string p1, "All APNs have permanently failed."

    .line 571
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return-wide v1

    .line 577
    :cond_5
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    if-gt v0, v3, :cond_7

    .line 579
    iget-boolean v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-le v0, v3, :cond_6

    .line 580
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Reached maximum retry count "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return-wide v1

    .line 583
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v0

    int-to-long v0, v0

    .line 584
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    goto :goto_0

    .line 587
    :cond_7
    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    :goto_0
    if-eqz p1, :cond_8

    .line 590
    iget-wide v2, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_8

    move-wide v0, v2

    :cond_8
    return-wide v0

    :cond_9
    :goto_1
    const-string p1, "Waiting APN list is null or empty."

    .line 536
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return-wide v1
.end method

.method public getNextApnSetting()Landroid/telephony/data/ApnSetting;
    .locals 6

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    const-wide/16 v4, -0x2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 503
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ApnSetting;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 507
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    .line 509
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 512
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    move v2, v0

    .line 515
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 520
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    if-ne v2, v3, :cond_2

    return-object v1

    .line 523
    :cond_4
    iput v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ApnSetting;

    return-object v0

    :cond_5
    :goto_0
    const-string v0, "Waiting APN list is null or empty."

    .line 494
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method public getRetryAfterDisconnectDelay()J
    .locals 2

    .line 674
    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mApnRetryAfterDisconnectDelay:J

    return-wide v0
.end method

.method public getWaitingApns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public markApnPermanentFailed(Landroid/telephony/data/ApnSetting;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 607
    invoke-virtual {p1, v0}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    :cond_0
    return-void
.end method

.method public setModemSuggestedDelay(J)V
    .locals 0

    .line 666
    iput-wide p1, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    return-void
.end method

.method public setWaitingApns(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "No waiting APNs provided"

    .line 630
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return-void

    .line 634
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    .line 637
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->configureRetry()V

    .line 639
    iget-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    .line 640
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    goto :goto_0

    .line 643
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Setting "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " waiting APNs."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 679
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RetryManager: mApnType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMaxRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentApnIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSameApnRtryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mModemSuggestedDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mRetryForever="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mInterApnDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mApnRetryAfterDisconnectDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mApnRetryAfterDisconnectDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mConfig={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
