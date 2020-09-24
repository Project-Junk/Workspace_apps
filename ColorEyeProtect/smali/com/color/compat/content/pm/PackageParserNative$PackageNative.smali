.class public Lcom/color/compat/content/pm/PackageParserNative$PackageNative;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/compat/content/pm/PackageParserNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageNative"
.end annotation


# instance fields
.field private mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;


# direct methods
.method private constructor <init>(Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;Lcom/color/compat/content/pm/PackageParserNative$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;-><init>(Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/color/compat/content/pm/PackageParserNative$PackageNative;)Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;
    .locals 0

    iget-object p0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    return-object p0
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    invoke-virtual {p0}, Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "PackageParserNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    invoke-virtual {p0}, Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "PackageParserNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSignatures()[Landroid/content/pm/Signature;
    .locals 1

    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    invoke-virtual {p0}, Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersionCode()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    invoke-virtual {p0}, Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;->getVersionCode()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "PackageParserNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    invoke-virtual {p0}, Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;->getVersionName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "PackageParserNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
