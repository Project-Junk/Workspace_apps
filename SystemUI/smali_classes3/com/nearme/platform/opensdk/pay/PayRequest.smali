.class public Lcom/nearme/platform/opensdk/pay/PayRequest;
.super Ljava/lang/Object;
.source "PayRequest.java"


# static fields
.field public static final ENV_RELEASE:I = 0x1

.field public static final ENV_TEST:I


# instance fields
.field public isAutoTest:Z

.field public mAmount:F

.field public mAppCode:Ljava/lang/String;

.field public mAppKey:Ljava/lang/String;

.field public mAppVersion:Ljava/lang/String;

.field public mAttach:Ljava/lang/String;

.field public mAutoOrderChannel:Ljava/lang/String;

.field public mAutoRenew:I

.field public mChannelId:Ljava/lang/String;

.field public mChargeLimit:F

.field public mCount:I

.field public mCurrencyName:Ljava/lang/String;

.field public mEnv:I

.field public mExchangeRatio:F

.field public mGameSdkVersion:I

.field public mIsSinglePay:Z

.field public mNotifyUrl:Ljava/lang/String;

.field public mOrder:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPartnerId:Ljava/lang/String;

.field public mPartnerOrder:Ljava/lang/String;

.field public mProductDesc:Ljava/lang/String;

.field public mProductName:Ljava/lang/String;

.field public mRequestCode:I

.field public mShowCpSmsChannel:Z

.field public mSign:Ljava/lang/String;

.field public mSource:Ljava/lang/String;

.field public mToken:Ljava/lang/String;

.field public mType:I

.field public mUseCachedChannel:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerId:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mToken:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mNotifyUrl:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mChannelId:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductName:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductDesc:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppCode:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppVersion:Ljava/lang/String;

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mGameSdkVersion:I

    .line 88
    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppKey:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mCurrencyName:Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 98
    iput v2, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mExchangeRatio:F

    .line 103
    iput v2, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    const/16 v2, 0x3e9

    .line 108
    iput v2, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mRequestCode:I

    .line 113
    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAttach:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mSource:Ljava/lang/String;

    const/4 v0, 0x1

    .line 128
    iput v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mCount:I

    .line 133
    iput v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    .line 148
    iput v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mEnv:I

    const v2, 0x3c23d70a    # 0.01f

    .line 152
    iput v2, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mChargeLimit:F

    .line 162
    iput-boolean v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mShowCpSmsChannel:Z

    .line 176
    iput-boolean v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mUseCachedChannel:Z

    return-void
.end method


# virtual methods
.method protected convert()Ljava/lang/String;
    .locals 8

    .line 189
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 191
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 199
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 191
    :cond_0
    aget-object v4, v1, v3

    const/4 v5, 0x1

    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 194
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 196
    const-class v5, Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "convert error. exception : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PayRequest [mPartnerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotifyUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mNotifyUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mProductName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mProductDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAppCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAppKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrencyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mCurrencyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mExchangeRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mExchangeRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mRequestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPartnerOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAttach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAttach:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mSign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->isAutoTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mEnv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChargeLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mChargeLimit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSinglePay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mShowCpSmsChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mShowCpSmsChannel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoOrderChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAutoOrderChannel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
