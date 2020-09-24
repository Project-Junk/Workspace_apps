.class public Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;
.super Ljava/lang/Object;


# static fields
.field private static final GROUP_ID:Ljava/lang/String; = "groupID"

.field private static final ICON_RES_ID:Ljava/lang/String; = "backup_icon_resId"

.field private static final IS_CMCC_USE:Ljava/lang/String; = "isCmccUse"

.field private static final IS_COLOROS_SUPPORT:Ljava/lang/String; = "isColorOSSupport"

.field private static final IS_OVERSEA_USE:Ljava/lang/String; = "isOverseaUse"

.field private static final IS_THIRD_SUPPORT:Ljava/lang/String; = "isThirdSupport"

.field private static final NAME_RES_ID:Ljava/lang/String; = "backup_name_resId"

.field private static final ORIGINAL_ID:Ljava/lang/String; = "originalID"

.field public static final PARAMS:Ljava/lang/String; = "params"

.field private static final PARENT_ID:Ljava/lang/String; = "parentID"

.field private static final PRIORITY:Ljava/lang/String; = "priority"

.field private static final SINGLE_THREAD:Ljava/lang/String; = "singleThread"

.field private static final TAG:Ljava/lang/String; = "BRPluginServiceInfo"

.field private static final THREAD_ID:Ljava/lang/String; = "threadID"

.field private static final UI_GROUP:Ljava/lang/String; = "uiGroup"

.field private static final UNIQUE_ID:Ljava/lang/String; = "uniqueID"

.field private static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mIsCmccUse:Z

.field private mIsColorOSSupport:Z

.field private mIsOverseaUse:Z

.field private mIsSingleThread:Z

.field private mIsThirdSupport:Z

.field private mMetaData:Landroid/os/Bundle;

.field private mOriginalID:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mParams:Landroid/os/Bundle;

.field private mParentID:Ljava/lang/String;

.field private mPriority:I

.field private mThreadID:I

.field private mUIGroup:I

.field private mUniqueID:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mThreadID:I

    iput v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mUIGroup:I

    return-void
.end method

.method private getString(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    :try_start_1
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, p1

    :catch_1
    :cond_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->hashCode()I

    move-result p0

    check-cast p1, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->hashCode()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mMetaData:Landroid/os/Bundle;

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mMetaData:Landroid/os/Bundle;

    const-string v4, "backup_icon_resId"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    iget-object v6, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eq v2, v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    const-string v0, "BRPluginServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIcon failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mUniqueID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    :try_start_1
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-object p0, v0

    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string p0, "BRPluginServiceInfo"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getApplicationLabel icon:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getMetaData()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mMetaData:Landroid/os/Bundle;

    return-object p0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mMetaData:Landroid/os/Bundle;

    const-string v2, "backup_name_resId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "BRPluginServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBRPluginServiceInfos nameValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-object v0, v1

    :catch_1
    const-string v1, "BRPluginServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBRPluginServiceInfos name failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mUniqueID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    :try_start_2
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-object p0, v0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string p0, "BRPluginServiceInfo"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApplicationLabel name:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public getOriginalID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mOriginalID:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mParams:Landroid/os/Bundle;

    return-object p0
.end method

.method public getParentID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mParentID:Ljava/lang/String;

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    iget p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mPriority:I

    return p0
.end method

.method public getThreadID()I
    .locals 0

    iget p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mThreadID:I

    return p0
.end method

.method public getUIGroup()I
    .locals 0

    iget p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mUIGroup:I

    return p0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mUniqueID:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mVersion:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mUniqueID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mUniqueID:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public isCmccUse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIsCmccUse:Z

    return p0
.end method

.method public isColorOSSupport()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIsColorOSSupport:Z

    return p0
.end method

.method public isOverseaUse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIsOverseaUse:Z

    return p0
.end method

.method public isParent()Z
    .locals 1

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mParentID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mParentID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSingleThread()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIsSingleThread:Z

    return p0
.end method

.method public isThirdSupport()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIsThirdSupport:Z

    return p0
.end method

.method public setClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mClassName:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public setCmccUse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIsCmccUse:Z

    return-void
.end method

.method public setColorOSSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIsColorOSSupport:Z

    return-void
.end method

.method public setMetaData(Landroid/os/Bundle;)V
    .locals 3

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mMetaData:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v0, "uniqueID"

    invoke-direct {p0, v0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getString(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mUniqueID:Ljava/lang/String;

    const-string v0, "threadID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mThreadID:I

    const-string v0, "originalID"

    invoke-direct {p0, v0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getString(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mOriginalID:Ljava/lang/String;

    const-string v0, "singleThread"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIsSingleThread:Z

    const-string v0, "isColorOSSupport"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIsColorOSSupport:Z

    const-string v0, "isThirdSupport"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIsThirdSupport:Z

    const-string v0, "isCmccUse"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIsCmccUse:Z

    const-string v0, "isOverseaUse"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIsOverseaUse:Z

    const-string v0, "uiGroup"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mUIGroup:I

    const-string v0, "priority"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mPriority:I

    const-string v0, "version"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mVersion:I

    const-string v0, "parentID"

    invoke-direct {p0, v0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getString(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mParentID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->isParent()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "groupID"

    invoke-direct {p0, v0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getString(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mParentID:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setOriginalID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mOriginalID:Ljava/lang/String;

    return-void
.end method

.method public setOverseaUse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIsOverseaUse:Z

    return-void
.end method

.method public setParams(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mParams:Landroid/os/Bundle;

    return-void
.end method

.method public setParentID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mParentID:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mPriority:I

    return-void
.end method

.method public setSingleThread(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIsSingleThread:Z

    return-void
.end method

.method public setThirdSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mIsThirdSupport:Z

    return-void
.end method

.method public setThreadID(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mThreadID:I

    return-void
.end method

.method public setUIGroup(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mUIGroup:I

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->mVersion:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BRPluginServiceInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getOriginalID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getThreadID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getParentID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
