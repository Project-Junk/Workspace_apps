.class final Lcom/coloros/settings/feature/othersettings/recover/b$a;
.super Ljava/lang/Object;
.source "ClearAllAppDataStrategy.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/recover/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/recover/b;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/othersettings/recover/b;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/b$a;->a:Lcom/coloros/settings/feature/othersettings/recover/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/othersettings/recover/b;B)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/recover/b$a;-><init>(Lcom/coloros/settings/feature/othersettings/recover/b;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/pm/PackageInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 155
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method private static synthetic a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic lambda$9xYsZ8-wbsPtGRyrn27Jsy8-NLA(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/recover/b$a;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ERZX2yGGbJaYqd4fZqNFr8PX4Gk(Landroid/content/pm/PackageInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/recover/b$a;->a(Landroid/content/pm/PackageInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 3

    .line 145
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreInstallApkFilter pathname="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClearAllAppDataStrategy"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1154
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v1, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$ERZX2yGGbJaYqd4fZqNFr8PX4Gk;->INSTANCE:Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$ERZX2yGGbJaYqd4fZqNFr8PX4Gk;

    .line 1155
    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v1, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$9xYsZ8-wbsPtGRyrn27Jsy8-NLA;->INSTANCE:Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$b$a$9xYsZ8-wbsPtGRyrn27Jsy8-NLA;

    .line 1156
    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const-string v1, ""

    .line 1157
    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/al;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
