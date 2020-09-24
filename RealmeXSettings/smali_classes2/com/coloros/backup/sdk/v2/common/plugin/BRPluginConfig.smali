.class public Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
.super Ljava/lang/Object;
.source "BRPluginConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BACKUP_FOLDER:Ljava/lang/String; = "backupFolder"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_PATTERN:Ljava/lang/String; = "dataPattern"

.field public static final DATA_PATTERN_NORMAL:I = 0x0

.field public static final DATA_PATTERN_NO_FILE:I = 0x2

.field public static final DATA_PATTERN_SUPPORT_ONE_BY_ONE:I = 0x1

.field public static final DEXS:Ljava/lang/String; = "dexs"

.field public static final DEX_PATHS:Ljava/lang/String; = "dexPaths"

.field public static final OPT_DIR:Ljava/lang/String; = "loadTmpFolder"

.field public static final PLUGIN_CLASS:Ljava/lang/String; = "pluginClass"

.field public static final PREFER_LOCAL_CLASS:Ljava/lang/String; = "preferLocalClass"

.field public static final TARGET_PACKAGE:Ljava/lang/String; = "targetPackage"

.field public static final UNIQUE_ID:Ljava/lang/String; = "uniqueID"

.field public static final USE_PARENT_CLASS:Ljava/lang/String; = "useParentClass"

.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 155
    new-instance v0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig$1;

    invoke-direct {v0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig$1;-><init>()V

    sput-object v0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    .line 48
    new-instance p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getUniqueID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mKey:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 137
    :cond_0
    instance-of v0, p1, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getBackupFolder()Ljava/lang/String;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v1, "backupFolder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDataPattern()I
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v1, "dataPattern"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDexPath()[Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v1, "dexPaths"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDexs()[Ljava/lang/String;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v1, "dexs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.coloros.backup.sdk"

    const-string v3, "com.coloros.backup.sdk.demo.ClockBRPluginService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOptimizedDirectory()Ljava/lang/String;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v1, "loadTmpFolder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginClass()[Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v1, "pluginClass"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetPackage()[Ljava/lang/String;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v1, "targetPackage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v1, "uniqueID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPreferLocalClass()Z
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v1, "preferLocalClass"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUseParentClass()Z
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v1, "useParentClass"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "uniqueID"

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "version"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getVersion()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mKey:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public putValue(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BRPluginConfig:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 151
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
