.class public Lcom/color/compat/content/pm/PackageParserNative$PackageNative;
.super Ljava/lang/Object;
.source "PackageParserNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/compat/content/pm/PackageParserNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageNative"
.end annotation


# instance fields
.field private mPackage:Landroid/content/pm/PackageParser$Package;

.field private mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;


# direct methods
.method private constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iput-object p1, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackage:Landroid/content/pm/PackageParser$Package;

    return-void

    .line 149
    :cond_0
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1

    .line 145
    :cond_1
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageParserNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>(Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iput-object p1, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    return-void

    .line 131
    :cond_0
    new-instance p1, Lcom/color/util/a;

    invoke-direct {p1}, Lcom/color/util/a;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageParserNative"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;Lcom/color/compat/content/pm/PackageParserNative$1;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;-><init>(Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/color/compat/content/pm/PackageParserNative$PackageNative;)Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    return-object p0
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 245
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    invoke-virtual {v0}, Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 249
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    .line 254
    :cond_1
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageParserNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 225
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    invoke-virtual {v0}, Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 229
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    return-object v0

    .line 234
    :cond_1
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageParserNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatures()[Landroid/content/pm/Signature;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    const/4 v0, 0x0

    .line 163
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    invoke-virtual {v1}, Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    invoke-static {}, Lcom/color/util/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_3

    .line 169
    iget-object v1, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    :cond_1
    return-object v0

    .line 172
    :cond_2
    new-instance v1, Lcom/color/util/a;

    invoke-direct {v1}, Lcom/color/util/a;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 175
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageParserNative"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method public getVersionCode()I
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 205
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    invoke-virtual {v0}, Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;->getVersionCode()I

    move-result v0

    return v0

    .line 209
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    return v0

    .line 214
    :cond_1
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageParserNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 184
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackageWrapper:Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    invoke-virtual {v0}, Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    return-object v0

    .line 193
    :cond_1
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageParserNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
