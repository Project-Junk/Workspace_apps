.class public Lcom/nearme/platform/opensdk/pay/PayTask;
.super Ljava/lang/Object;
.source "PayTask.java"


# static fields
.field private static final ACTION_NOTIFY_PAY_RESULT:Ljava/lang/String; = "nearme.pay.response"

.field private static final ACTION_QRCODE:Ljava/lang/String; = "com.nearme.pay.qrcode"

.field private static final ACTION_QRSCAN:Ljava/lang/String; = "com.nearme.pay.qrscan"

.field private static final CHANNEL_ALI:Ljava/lang/String; = "alipay"

.field private static final CHANNEL_WECHAT:Ljava/lang/String; = "wxpay"

.field private static final EXTRA_CHANNEL:Ljava/lang/String; = "extra_channel"

.field private static final EXTRA_PKG_NAME:Ljava/lang/String; = "extra_pkg_name"

.field public static final HOST_BACKGROUND_CALL_ACTION_SERVICE:Ljava/lang/String; = "com.oppo.action.PAY_ACTION"

.field private static final NEARME_PAY_PKG_NAME:Ljava/lang/String; = "com.nearme.atlas"

.field public static final Pay_Amount_MAX:F = 9999.99f

.field public static final Pay_Amount_MIN:F = 0.01f

.field public static final Product_Dsec_MAX_LENGTH:I = 0x78

.field public static final Product_Name_MAX_LENGTH:I = 0x28

.field public static final REQUEST_CODE:I = 0x3ea

.field public static final RESULT_CODE:I = 0x1708

.field public static final RESULT_CODE_CANCEL_BU:I = 0x2739

.field public static final RESULT_CODE_DOWNLOAD_CANCEL:I = 0x273c

.field public static final RESULT_CODE_INSTALL_CANCEL:I = 0x273a

.field public static final RESULT_CODE_IU_APP:I = 0x2738

.field public static final RESULT_CODE_UPDATE_CANCEL:I = 0x273b

.field private static final SINGLE_PAY_STARTUP_ACTION:Ljava/lang/String; = "nearme.plugin.host.startup.action.single_pay"

.field private static final TAG:Ljava/lang/String; = "PayTask"

.field private static mLastStartTime:J


# instance fields
.field public mActivity:Landroid/content/Context;

.field public mChargeLimit:F

.field public mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

.field mPayTaskResult:Lcom/nearme/platform/opensdk/pay/IPayTaskResult;

.field private mThemeValue:I

.field update:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nearme/platform/opensdk/pay/PayRequest;I)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3c23d70a    # 0.01f

    .line 80
    iput v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mChargeLimit:F

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->update:Z

    .line 103
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    .line 105
    iget-object p2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iput p3, p2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mRequestCode:I

    .line 106
    iget-boolean p2, p2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z

    if-eqz p2, :cond_0

    .line 107
    iget-object p2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->getRandomToken()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mToken:Ljava/lang/String;

    .line 108
    sget-object p2, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "mPayRequest.mToken:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v1, v1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mToken:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget-object p2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object p2, p2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 111
    iget-object p2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    .line 113
    :cond_1
    iput v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    return-void
.end method

.method static synthetic access$0(Lcom/nearme/platform/opensdk/pay/PayTask;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 317
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->copyPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1(Lcom/nearme/platform/opensdk/pay/PayTask;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/nearme/platform/opensdk/pay/PayTask;->notifyAppInstallOrUpdate(I)V

    return-void
.end method

.method private copyPackage()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "nearme.apk"

    .line 320
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 321
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "tmp.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x1000

    .line 324
    new-array v2, v2, [B

    .line 325
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 328
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 329
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 330
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v4, 0x0

    .line 326
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private doTickerWithoutNoting()Z
    .locals 4

    .line 798
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.action.PAY_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 799
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.nearme.atlas"

    .line 800
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "jump_plugin_id"

    const-string v3, "1001"

    .line 801
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v2}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v2

    const-string v3, "payParams"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "operate_type"

    const/4 v3, 0x4

    .line 804
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 805
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 806
    const-class v1, Lcom/nearme/platform/opensdk/pay/PayTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "theme_value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, "theme_value"

    .line 808
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 810
    :cond_0
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p0, 0x1

    return p0
.end method

.method private doTicketToQueryAlipaySignState()Z
    .locals 4

    .line 815
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.action.PAY_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 816
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.nearme.atlas"

    .line 817
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "jump_plugin_id"

    const-string v3, "1001"

    .line 818
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v2}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v2

    const-string v3, "payParams"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "operate_type"

    const/4 v3, 0x5

    .line 821
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 822
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 823
    const-class v1, Lcom/nearme/platform/opensdk/pay/PayTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "theme_value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, "theme_value"

    .line 825
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    :cond_0
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p0, 0x1

    return p0
.end method

.method private getRandomToken()Ljava/lang/String;
    .locals 5

    .line 123
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 124
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-long v2, p0

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "OFFLINE_"

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isAlipayContractSigned(Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)Z
    .locals 6

    const/4 v0, 0x0

    .line 558
    :try_start_0
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v2, "com.nearme.atlas"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    const-string v2, "nearmeconfig"

    const/4 v3, 0x5

    .line 559
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "has_sync_alipay_contact_state"

    .line 560
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "has_signed_contract"

    .line 561
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "isSignAlipayContract"

    .line 562
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "syncData="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",sign="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 569
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "nearme.pay.response"

    .line 570
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    new-instance v3, Lcom/nearme/platform/opensdk/pay/PayTask$5;

    invoke-direct {v3, p0, p1}, Lcom/nearme/platform/opensdk/pay/PayTask$5;-><init>(Lcom/nearme/platform/opensdk/pay/PayTask;Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 589
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->doTicketToQueryAlipaySignState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 593
    sget-object p1, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not support : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupportAliQRCode(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportAliQRScan(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportAliRenew(Landroid/content/Context;)Z
    .locals 2

    .line 832
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/Utils;->getNearmePayApkVersinCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa0

    if-lt v0, v1, :cond_0

    const-string v0, "com.eg.android.AlipayGphone"

    invoke-static {p0, v0}, Lcom/nearme/platform/opensdk/pay/Utils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportWechatQRCode(Landroid/content/Context;)Z
    .locals 2

    .line 840
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/Utils;->getNearmePayApkVersinCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa1

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/Utils;->getMMApiLevel(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0x8

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportWechatQRScan(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportWechatRenew(Landroid/content/Context;)Z
    .locals 2

    .line 836
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/Utils;->getNearmePayApkVersinCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa1

    if-lt v0, v1, :cond_0

    const-string v0, "com.tencent.mm"

    invoke-static {p0, v0}, Lcom/nearme/platform/opensdk/pay/Utils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private notifyAppInstallOrUpdate(I)V
    .locals 3

    .line 129
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "errCode"

    .line 131
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v1, v1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "order"

    .line 133
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v2, v2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "nearme.pay.response"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "response"

    .line 136
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayTaskResult:Lcom/nearme/platform/opensdk/pay/IPayTaskResult;

    if-eqz v0, :cond_1

    .line 143
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    invoke-interface {v0, p1, p0}, Lcom/nearme/platform/opensdk/pay/IPayTaskResult;->onTaskResult(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static openAliQRCode(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static openAliQRScan(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static openWechatQRCode(Landroid/content/Context;)V
    .locals 3

    .line 856
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nearme.pay.qrcode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_channel"

    const-string v2, "wxpay"

    .line 857
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_pkg_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 859
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 860
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 862
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openWechatQRScan(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private showAlipayContractSetting()Z
    .locals 1

    const/4 v0, 0x0

    .line 514
    invoke-direct {p0, v0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showAlipayContractSetting(Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)Z

    move-result p0

    return p0
.end method

.method private showAlipayContractSetting(Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)Z
    .locals 4

    :try_start_0
    const-string v0, "kekepay://nearme.atlas.com?amount=1&partner_id=2031&product_name=\u53ef\u5e01&jump_activity=FastAlipaySettingAcitviy"

    const/4 v1, 0x1

    .line 520
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 521
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const-string v0, "settings_result"

    const-string v2, "\u6ce8\u518c\u5e7f\u64ad\u76d1\u542c"

    .line 523
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "nearme.pay.response.fastalipay.settings.result"

    .line 526
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    new-instance v3, Lcom/nearme/platform/opensdk/pay/PayTask$4;

    invoke-direct {v3, p0, p1}, Lcom/nearme/platform/opensdk/pay/PayTask$4;-><init>(Lcom/nearme/platform/opensdk/pay/PayTask;Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    move-exception p0

    .line 550
    sget-object p1, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not support : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private showInstallDialog()V
    .locals 3

    const-string v0, "\u53d6\u6d88"

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "nearme.apk"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 191
    :cond_0
    new-instance v1, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;-><init>(Landroid/content/Context;)V

    .line 192
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean v2, v2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z

    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setSystemAlertFlag()V

    :cond_1
    const-string v2, "\u60a8\u5c1a\u672a\u5b89\u88c5\'\u5b89\u5168\u652f\u4ed8\'\u63a7\u4ef6\uff0c\u5b89\u88c5\u540e\u53ef\u7acb\u5373\u4f7f\u7528\u5145\u503c\u652f\u4ed8\u670d\u52a1\uff0c\u5e76\u4fdd\u8bc1\u8d26\u6237\u5b89\u5168\uff0c\u53d6\u6d88\u5219\u65e0\u6cd5\u652f\u4ed8\u3002"

    .line 195
    invoke-virtual {v1, v2}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setHint(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1, v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setLeftBtnText(Ljava/lang/String;)V

    const-string v2, "\u5b89\u88c5\uff08\u65e0\u9700\u4e0b\u8f7d\uff09"

    .line 197
    invoke-virtual {v1, v2}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setRightBtnText(Ljava/lang/String;)V

    .line 198
    new-instance v2, Lcom/nearme/platform/opensdk/pay/PayTask$2;

    invoke-direct {v2, p0, v1}, Lcom/nearme/platform/opensdk/pay/PayTask$2;-><init>(Lcom/nearme/platform/opensdk/pay/PayTask;Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V

    invoke-virtual {v1, v2}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setBottomBtnClickedListener(Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;)V

    .line 224
    invoke-virtual {v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 226
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 227
    new-instance v1, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;-><init>(Landroid/content/Context;)V

    .line 228
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean v2, v2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z

    if-eqz v2, :cond_2

    .line 229
    invoke-virtual {v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setSystemAlertFlag()V

    :cond_2
    const-string v2, "\u4f7f\u7528\u8be5\u652f\u4ed8\u9700\u8981\u4e0b\u8f7dOPPO\u5b89\u5168\u652f\u4ed8\u3002"

    .line 231
    invoke-virtual {v1, v2}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setHint(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1, v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setLeftBtnText(Ljava/lang/String;)V

    const-string v0, "\u4e0b\u8f7d"

    .line 233
    invoke-virtual {v1, v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setRightBtnText(Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/nearme/platform/opensdk/pay/PayTask$3;

    invoke-direct {v0, p0, v1}, Lcom/nearme/platform/opensdk/pay/PayTask$3;-><init>(Lcom/nearme/platform/opensdk/pay/PayTask;Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V

    invoke-virtual {v1, v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setBottomBtnClickedListener(Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;)V

    .line 279
    invoke-virtual {v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->show()V

    :goto_0
    return-void
.end method

.method private showUpdateDialog()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 149
    new-instance v0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;-><init>(Landroid/content/Context;)V

    .line 150
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean v1, v1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setSystemAlertFlag()V

    :cond_0
    const-string v1, "\u60a8\u9700\u8981\u66f4\u65b0\'\u5b89\u5168\u652f\u4ed8\'\u63a7\u4ef6\uff0c\u5b89\u88c5\u540e\u53ef\u7acb\u5373\u4f7f\u7528\u5145\u503c\u652f\u4ed8\u670d\u52a1\uff0c\u5e76\u4fdd\u8bc1\u8d26\u6237\u5b89\u5168\uff0c\u53d6\u6d88\u5219\u65e0\u6cd5\u652f\u4ed8\u3002"

    .line 153
    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setHint(Ljava/lang/String;)V

    const-string v1, "\u53d6\u6d88"

    .line 154
    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setLeftBtnText(Ljava/lang/String;)V

    const-string v1, "\u66f4\u65b0\uff08\u65e0\u9700\u4e0b\u8f7d\uff09"

    .line 155
    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setRightBtnText(Ljava/lang/String;)V

    .line 156
    new-instance v1, Lcom/nearme/platform/opensdk/pay/PayTask$1;

    invoke-direct {v1, p0, v0}, Lcom/nearme/platform/opensdk/pay/PayTask$1;-><init>(Lcom/nearme/platform/opensdk/pay/PayTask;Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setBottomBtnClickedListener(Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;)V

    .line 182
    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->show()V

    return-void
.end method


# virtual methods
.method public checkNearmeSupport()Z
    .locals 4

    .line 673
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->supportSinglePayStartup()Z

    move-result v0

    .line 674
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->shouldUpdateApk()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 677
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 678
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v0, "sd\u5361\u672a\u6302\u8f7d\uff0c\u65e0\u6cd5\u5b89\u88c5\u5b89\u5168\u652f\u4ed8\u63d2\u4ef6"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v3

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 681
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showUpdateDialog()V

    return v3

    .line 684
    :cond_2
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showInstallDialog()V

    return v3
.end method

.method public checkParamsValid(Lcom/nearme/platform/opensdk/pay/PayRequest;)Z
    .locals 6

    .line 602
    iget v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\d+[\\.]*\\d{0,2}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 603
    sget-object v1, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount format result : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",match="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "\u652f\u4ed8\u91d1\u989d\u9519\u8bef\uff0c\u6700\u5c0f\u652f\u4ed8\u5355\u4f4d\u4e3a1\u5206\u94b1"

    const-string v5, "\u652f\u4ed8\u91d1\u989d\u9519\u8bef\uff0c\u6b63\u786e\u91d1\u989d\u8303\u56f4\u4e3a:0.01\u5143~9999.99\u5143"

    if-nez v0, :cond_0

    .line 607
    iget p1, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAutoRenew:I

    if-ne v1, p1, :cond_11

    :goto_0
    move v3, v2

    goto/16 :goto_2

    .line 610
    :cond_0
    iget v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    const v4, 0x461c3ff6    # 9999.99f

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_f

    iget v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    goto/16 :goto_1

    .line 616
    :cond_1
    iget-object v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v4, "mPartnerId \u4e3a\u7a7a"

    goto/16 :goto_2

    .line 619
    :cond_2
    iget-object v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mNotifyUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v4, "mNotifyUrl \u4e3a\u7a7a"

    goto/16 :goto_2

    .line 622
    :cond_3
    iget-object v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v4, "mToken \u4e3a\u7a7a"

    goto/16 :goto_2

    .line 625
    :cond_4
    iget-object v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v4, "mPackageName \u4e3a\u7a7a"

    goto/16 :goto_2

    .line 628
    :cond_5
    iget-object v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v4, "mAppVersion \u4e3a\u7a7a"

    goto/16 :goto_2

    .line 631
    :cond_6
    iget-object v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mCurrencyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v4, "mCurrencyName \u4e3a\u7a7a"

    goto/16 :goto_2

    .line 634
    :cond_7
    iget-object v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v4, "mSource \u4e3a\u7a7a"

    goto :goto_2

    .line 637
    :cond_8
    iget-object v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v4, "\u5546\u54c1\u540d\u79f0 \u4e3a\u7a7a"

    goto :goto_2

    .line 640
    :cond_9
    iget-object v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x28

    if-le v0, v4, :cond_a

    const-string v4, "\u5546\u54c1\u540d\u79f0 \u957f\u5ea6\u8fc7\u957f"

    goto :goto_2

    .line 643
    :cond_a
    iget-object v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductDesc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x78

    if-le v0, v4, :cond_b

    const-string v4, "\u5546\u54c1\u63cf\u8ff0\u957f\u5ea6\u8fc7\u957f"

    goto :goto_2

    .line 646
    :cond_b
    iget v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    if-eqz v0, :cond_c

    iget v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    if-eq v0, v2, :cond_c

    iget v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    if-eq v0, v1, :cond_c

    const-string v4, "mType \u53ea\u80fd\u4e3a0\u30011\u30012"

    goto :goto_2

    .line 649
    :cond_c
    iget v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    if-ne v0, v2, :cond_e

    .line 650
    iget-object v0, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v4, "mType\u4e3a1\u65f6\u4e3a\u6d88\u8d39\uff0c\u9700\u63d0\u4f9b\u8ba2\u5355\u53f7"

    goto :goto_2

    .line 653
    :cond_d
    iget-object p1, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mSign:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string v4, "mType\u4e3a1\u65f6\u4e3a\u6d88\u8d39\uff0c\u9700\u63d0\u4f9b\u7b7e\u540d\u90e8\u5206"

    goto :goto_2

    :cond_e
    const-string v4, ""

    goto/16 :goto_0

    .line 613
    :cond_f
    :goto_1
    iget p1, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAutoRenew:I

    if-ne v1, p1, :cond_10

    move v3, v2

    :cond_10
    move-object v4, v5

    .line 658
    :cond_11
    :goto_2
    sget-object p1, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isValid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",tipString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_12

    .line 660
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_12
    return v3
.end method

.method public directPay()Z
    .locals 4

    .line 392
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->checkNearmeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 396
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.action.PAY_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.nearme.atlas"

    .line 398
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "jump_plugin_id"

    const-string v3, "1001"

    .line 399
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "payParams"

    .line 400
    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v3}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "operate_type"

    const/4 v3, 0x2

    .line 401
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 403
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 404
    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, "theme_value"

    .line 405
    iget v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    :cond_1
    sget-object v1, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    const-string v2, "goto directPay,send broadcast:com.nearme.atlas"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 411
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 412
    sget-object v0, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "goto directPay exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public iSupportSinglePay()Z
    .locals 4

    .line 492
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->checkNearmeSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 496
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->doTickerWithoutNoting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 498
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 501
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v2, "com.nearme.atlas"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string v2, "single_pay_config"

    const/4 v3, 0x5

    .line 502
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 503
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 504
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 505
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "supportSiglePay"

    .line 506
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    .line 508
    sget-object v0, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "catched exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public pay()Z
    .locals 6

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 353
    sget-wide v2, Lcom/nearme/platform/opensdk/pay/PayTask;->mLastStartTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    .line 356
    :cond_0
    sput-wide v0, Lcom/nearme/platform/opensdk/pay/PayTask;->mLastStartTime:J

    .line 357
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {p0, v0}, Lcom/nearme/platform/opensdk/pay/PayTask;->checkParamsValid(Lcom/nearme/platform/opensdk/pay/PayRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->checkNearmeSupport()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    .line 363
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nearme.plugin.host.startup.action.single_pay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 365
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v2, v2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAutoOrderChannel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 366
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v2, v2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAutoOrderChannel:Ljava/lang/String;

    const-string v3, "single_auto_channel"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    :cond_3
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean v2, v2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mShowCpSmsChannel:Z

    const-string v3, "single_show_sms"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean v2, v2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mUseCachedChannel:Z

    const-string v3, "single_use_cache_channel"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "jump_plugin_id"

    const-string v3, "1001"

    .line 370
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v2}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v2

    const-string v3, "payParams"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mChargeLimit:F

    const-string v3, "charge_lower_limit"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 373
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 375
    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const-string v2, "theme_value"

    .line 376
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    :cond_4
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_5

    const/high16 v1, 0x10000000

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 382
    :cond_5
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public queryBalance()Z
    .locals 5

    .line 466
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->checkNearmeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 469
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.action.PAY_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.nearme.atlas"

    .line 471
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "jump_plugin_id"

    const-string v3, "1001"

    .line 472
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v2}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v2

    const-string v3, "payParams"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "operate_type"

    .line 474
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 477
    const-class v1, Lcom/nearme/platform/opensdk/pay/PayTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "theme_value : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    const-string v3, "theme_value"

    .line 479
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 481
    :cond_1
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return v2
.end method

.method public queryOrder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 427
    sget-object v0, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start query... payRequestId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",partnerorder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "payRequestId \u548c partnerOrderId\u4e0d\u80fd\u540c\u65f6\u4e3a\u7a7a!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 431
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->checkNearmeSupport()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 434
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.action.PAY_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.nearme.atlas"

    .line 436
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "jump_plugin_id"

    const-string v3, "1001"

    .line 437
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v2}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v2

    const-string v3, "payParams"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    const-string v4, "payRequestId"

    if-eqz v2, :cond_3

    .line 440
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 442
    :cond_3
    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, "partnerOrder"

    if-eqz p1, :cond_4

    .line 445
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 447
    :cond_4
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x3

    const-string p2, "operate_type"

    .line 450
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 451
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 452
    const-class p1, Lcom/nearme/platform/opensdk/pay/PayTask;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "theme_value : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_5

    const-string p2, "theme_value"

    .line 454
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    :cond_5
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p0, 0x1

    return p0
.end method

.method public setPayTaskResultListener(Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayTaskResult:Lcom/nearme/platform/opensdk/pay/IPayTaskResult;

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 341
    iput p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    return-void
.end method

.method shouldUpdateApk()Z
    .locals 11

    .line 690
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    const-string v1, "opay_version"

    .line 694
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 701
    :cond_0
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 703
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v3, "com.nearme.atlas"

    invoke-static {v0, v3}, Lcom/nearme/platform/opensdk/pay/Utils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 705
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 707
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 708
    sget-object v8, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "versionToInstall="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",netGameMinVersion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",singleNameMinVersion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean p0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    if-ge v0, v7, :cond_2

    if-ge v0, v5, :cond_2

    :goto_1
    move v1, v4

    goto :goto_2

    :cond_1
    if-ge v0, v6, :cond_2

    if-ge v0, v5, :cond_2

    goto :goto_1

    .line 721
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 723
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 721
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 723
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 726
    :goto_3
    throw p0

    :catch_3
    move v5, v3

    :catch_4
    if-eq v5, v3, :cond_3

    if-ge v0, v5, :cond_3

    move v1, v4

    .line 721
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    return v1
.end method

.method public singleVersionCheck()Z
    .locals 9

    .line 744
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    const-string v1, "opay_version"

    .line 748
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 755
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 757
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v4, "com.nearme.atlas"

    invoke-static {v0, v4}, Lcom/nearme/platform/opensdk/pay/Utils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    .line 759
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 761
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 762
    iget-object v8, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean p0, v8, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_0

    if-ge v0, v7, :cond_1

    if-ge v0, v5, :cond_1

    :goto_1
    move v2, v1

    goto :goto_2

    :cond_0
    if-ge v0, v6, :cond_1

    if-ge v0, v5, :cond_1

    goto :goto_1

    .line 787
    :cond_1
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception p0

    .line 789
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_2
    move v5, v4

    :catch_3
    if-ne v4, v5, :cond_2

    goto :goto_4

    .line 776
    :cond_2
    :try_start_4
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean p0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_3

    if-ge v0, v5, :cond_4

    :goto_3
    move v2, v1

    goto :goto_4

    :cond_3
    if-ge v0, v5, :cond_4

    goto :goto_3

    .line 787
    :cond_4
    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    :goto_5
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 789
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 792
    :goto_6
    throw p0

    :cond_5
    :goto_7
    xor-int/lit8 p0, v2, 0x1

    return p0
.end method

.method public supportSinglePayStartup()Z
    .locals 2

    .line 731
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 732
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nearme.plugin.host.startup.action.single_pay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000

    .line 733
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 734
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
