.class public Lcom/heytap/cloud/sdk/utils/CloudJumpHelper;
.super Ljava/lang/Object;
.source "CloudJumpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/cloud/sdk/utils/CloudJumpHelper$Action;
    }
.end annotation


# static fields
.field private static final EXTRA_MODULE:Ljava/lang/String; = "module"

.field private static final EXTRA_PATH:Ljava/lang/String; = "enter_path"

.field private static final EXTRA_PKG:Ljava/lang/String; = "package"

.field private static final PATH_SETTING:Ljava/lang/String; = "setting"

.field private static final TAG:Ljava/lang/String; = "CloudJumpHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureParams(Landroid/content/Context;)Z
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "CloudJumpHelper"

    const-string v0, "context is null"

    .line 124
    invoke-static {p0, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "album"

    .line 182
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "com.heytap.cloud.action.GALLERY_SETTING"

    return-object p0

    :cond_0
    const-string v0, "record"

    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "com.heytap.cloud.action.RECORD_SETTING"

    return-object p0

    :cond_1
    const-string v0, "note"

    .line 186
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "com.heytap.cloud.action.NOTE_SETTING"

    return-object p0

    :cond_2
    const-string p0, "com.heytap.intent.action.CLOUD_MAIN"

    return-object p0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 198
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static jumpAction(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 114
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jumpAction : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/heytap/cloud/sdk/utils/CloudJumpHelper;->traceMethodCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {p0}, Lcom/heytap/cloud/sdk/utils/CloudJumpHelper;->ensureParams(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 117
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/heytap/cloud/sdk/utils/CloudJumpHelper;->makeCommonIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 119
    invoke-static {p0, p1}, Lcom/heytap/cloud/sdk/utils/CloudJumpHelper;->jumpCloud(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private static jumpCloud(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "CloudJumpHelper"

    if-nez p1, :cond_0

    const-string p0, "jumpCloud error: no install cloud application"

    .line 160
    invoke-static {v0, p0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 166
    :cond_0
    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/high16 v1, 0x10000000

    .line 167
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jumpCloud error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 175
    invoke-static {p0, p1}, Lcom/heytap/cloud/sdk/utils/CloudJumpHelper;->jumpMain(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static jumpMain(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "jumpMain --> module: "

    .line 78
    invoke-static {p1, v0}, Lcom/heytap/cloud/sdk/utils/CloudJumpHelper;->traceMethodCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Lcom/heytap/cloud/sdk/utils/CloudJumpHelper;->ensureParams(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "android.intent.action.MAIN"

    .line 81
    invoke-static {p0, p1, v0}, Lcom/heytap/cloud/sdk/utils/CloudJumpHelper;->makeCommonIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 83
    invoke-static {p0, p1}, Lcom/heytap/cloud/sdk/utils/CloudJumpHelper;->jumpCloud(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static jumpModuleSetting(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "jumpModuleSetting --> module: "

    .line 95
    invoke-static {p1, v0}, Lcom/heytap/cloud/sdk/utils/CloudJumpHelper;->traceMethodCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {p0}, Lcom/heytap/cloud/sdk/utils/CloudJumpHelper;->ensureParams(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 98
    :cond_0
    invoke-static {p1}, Lcom/heytap/cloud/sdk/utils/CloudJumpHelper;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/heytap/cloud/sdk/utils/CloudJumpHelper;->makeCommonIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "enter_path"

    const-string v1, "setting"

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    :cond_1
    invoke-static {p0, p1}, Lcom/heytap/cloud/sdk/utils/CloudJumpHelper;->jumpCloud(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private static makeCommonIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 138
    invoke-static {p0}, Lcom/heytap/cloud/sdk/base/CloudBaseUtils;->getCloudPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "CloudJumpHelper"

    const-string p1, "connectToOcrService. TextUtils.isEmpty(targetName) is true."

    .line 140
    invoke-static {p0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 144
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 145
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "package"

    .line 149
    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "module"

    .line 152
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-object v1
.end method

.method private static traceMethodCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CloudJumpHelper"

    invoke-static {p1, p0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
