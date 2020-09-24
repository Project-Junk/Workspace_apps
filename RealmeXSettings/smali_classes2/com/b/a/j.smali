.class public final Lcom/b/a/j;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "/dt"

    const-string v1, "/dtd"

    const-string v2, "/search"

    const-string v3, "/searchd"

    const-string v4, "/home"

    .line 17
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/a/j;->a:[Ljava/lang/String;

    const-string v1, "/dt"

    const-string v2, "/dtd"

    const-string v3, "/search"

    const-string v4, "/searchd"

    const-string v5, "/home"

    const-string v6, "/predown"

    .line 19
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/a/j;->b:[Ljava/lang/String;

    const-string v1, "/dt"

    const-string v2, "/dtd"

    const-string v3, "/search"

    const-string v4, "/searchd"

    const-string v5, "/home"

    const-string v6, "/predown"

    const-string v7, "/web"

    .line 21
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/a/j;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.heytap.market"

    .line 110
    invoke-static {p0, v0}, Lcom/b/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Y29tLm9wcG8ubWFya2V0"

    .line 2026
    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {p0, v1}, Lcom/b/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3026
    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 1

    .line 89
    invoke-static {p0}, Lcom/b/a/j;->b(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-lt p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x2000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "Y29tLm9wcG8ubWFya2V0"

    .line 1026
    invoke-static {v2}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 54
    instance-of v1, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v1, :cond_0

    .line 56
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.heytap.market"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 58
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, p0

    :catch_1
    :cond_0
    :goto_0
    return v0
.end method
