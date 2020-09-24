.class public Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;
.super Landroid/content/ContentProvider;
.source "MultiUserFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$b;,
        Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Boolean;

.field private static final b:[Ljava/lang/String;

.field private static final c:Ljava/io/File;

.field private static d:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sCache"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 341
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->a:Ljava/lang/Boolean;

    const-string v0, "_display_name"

    const-string v1, "_size"

    .line 342
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->b:[Ljava/lang/String;

    .line 363
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->c:Ljava/io/File;

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->d:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 427
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;

    move-result-object p0

    .line 428
    invoke-interface {p0, p2}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;
    .locals 2

    .line 601
    sget-object v0, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 602
    :try_start_0
    sget-object v1, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 605
    :try_start_1
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    :try_start_2
    sget-object p0, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 610
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 607
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 615
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static varargs a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    move-object v1, p0

    move p0, v0

    :goto_0
    if-gtz p0, :cond_1

    .line 878
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 880
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static a()V
    .locals 1

    .line 591
    sget-object v0, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 627
    new-instance v0, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$b;

    invoke-direct {v0, p1}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$b;-><init>(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 630
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "android.support.FILE_PROVIDER_PATHS"

    .line 636
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 645
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 647
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "name"

    const/4 v4, 0x0

    .line 649
    invoke-interface {p1, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "path"

    .line 650
    invoke-interface {p1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 651
    sget-object v6, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->a:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "MultiUserFileProvider"

    if-eqz v6, :cond_1

    .line 652
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "parsePathStrategy: tag: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", name:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "parsePathStrategy: path: "

    .line 653
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v6, "root-path"

    .line 657
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 658
    sget-object v4, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->c:Ljava/io/File;

    goto :goto_1

    :cond_2
    const-string v6, "files-path"

    .line 659
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 660
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_3
    const-string v6, "cache-path"

    .line 661
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 662
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string v6, "external-path"

    .line 663
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 664
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_5
    const-string v6, "external-cache-path"

    .line 672
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 673
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v1

    .line 674
    array-length v6, v1

    if-lez v6, :cond_6

    .line 675
    aget-object v4, v1, v8

    .line 687
    :cond_6
    :goto_1
    sget-object v1, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "parsePathStrategy: target: "

    .line 688
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v4, :cond_0

    .line 691
    new-array v1, v2, [Ljava/lang/String;

    aput-object v5, v1, v8

    invoke-static {v4, v1}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3749
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_9

    .line 3755
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4339
    :try_start_3
    sget-object v2, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->a:Ljava/lang/Boolean;

    .line 3761
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3762
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "addRoot: name: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", root path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    :cond_8
    iget-object v2, v0, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 3757
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to resolve canonical path for "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3750
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name must not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 696
    :cond_a
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 697
    throw p0

    .line 639
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 632
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Couldn\'t find meta-data for provider with authority "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b()Ljava/lang/Boolean;
    .locals 1

    .line 339
    sget-object v0, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->a:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/ProviderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 390
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 393
    iget-boolean p1, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez p1, :cond_1

    .line 396
    iget-boolean p1, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz p1, :cond_0

    .line 401
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->e:Ljava/lang/String;

    return-void

    .line 397
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Provider must grant uri permissions"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Provider must not be exported"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 554
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->e:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 557
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 504
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 507
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 509
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 510
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "application/octet-stream"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 525
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No external inserts"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    const-string v0, "r"

    .line 2853
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p2, 0x10000000

    goto :goto_1

    :cond_0
    const-string v0, "w"

    .line 2855
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "wt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "wa"

    .line 2859
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p2, 0x2a000000

    goto :goto_1

    :cond_2
    const-string v0, "rw"

    .line 2863
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p2, 0x38000000

    goto :goto_1

    :cond_3
    const-string v0, "rwt"

    .line 2866
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 p2, 0x3c000000    # 0.0078125f

    goto :goto_1

    .line 2871
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Invalid mode: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    const/high16 p2, 0x2c000000

    .line 584
    :goto_1
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 463
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->e:Ljava/lang/String;

    invoke-static {p3, p4}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider$a;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-nez p2, :cond_0

    .line 467
    sget-object p2, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->b:[Ljava/lang/String;

    .line 470
    :cond_0
    array-length p3, p2

    new-array p3, p3, [Ljava/lang/String;

    .line 471
    array-length p4, p2

    new-array p4, p4, [Ljava/lang/Object;

    .line 473
    array-length p5, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p5, :cond_3

    aget-object v3, p2, v1

    const-string v4, "_display_name"

    .line 474
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 475
    aput-object v4, p3, v2

    add-int/lit8 v3, v2, 0x1

    .line 476
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v2

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_1
    const-string v4, "_size"

    .line 477
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 478
    aput-object v4, p3, v2

    add-int/lit8 v3, v2, 0x1

    .line 479
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p4, v2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1887
    :cond_3
    new-array p1, v2, [Ljava/lang/String;

    .line 1888
    invoke-static {p3, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1893
    new-array p2, v2, [Ljava/lang/Object;

    .line 1894
    invoke-static {p4, v0, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    new-instance p3, Landroid/database/MatrixCursor;

    const/4 p4, 0x1

    invoke-direct {p3, p1, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 487
    invoke-virtual {p3, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 535
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No external updates"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
