.class public Lcom/coloros/settings/feature/privacy/DataProtectKitPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "DataProtectKitPreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataProtectKitPreferenceController"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/DataProtectKitPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static isCustomSafeVersion(Landroid/content/Context;)Z
    .locals 3

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.customize.dualsystem"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/thundersoft/security/ContainerManager;->get(Landroid/content/Context;)Lcom/thundersoft/security/ContainerManager;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Lcom/thundersoft/security/ContainerManager;->isCurrentContainerUser()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataProtectKitPreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isPreferenceAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 48
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/coloros/settings/feature/privacy/DataProtectKitPreferenceController;->isCustomSafeVersion(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/DataProtectKitPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/privacy/DataProtectKitPreferenceController;->isPreferenceAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.filemanager.FILE_SAFE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.coloros.encryption"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public handleClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 60
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/privacy/DataProtectKitPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coloros/settings/utils/al;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->handleClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
