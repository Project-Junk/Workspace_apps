.class public Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "LicenseHtmlLoaderCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "/system/etc/NOTICE.xml.gz"

    const-string v1, "/vendor/etc/NOTICE.xml.gz"

    const-string v2, "/odm/etc/NOTICE.xml.gz"

    const-string v3, "/oem/etc/NOTICE.xml.gz"

    const-string v4, "/product/etc/NOTICE.xml.gz"

    const-string v5, "/product_services/etc/NOTICE.xml.gz"

    .line 35
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;->b:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/io/File;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 95
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-gez v2, :cond_0

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 10

    .line 1077
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    sget-object v1, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1079
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    .line 1081
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1062
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "LicenseHtmlLoaderCompat"

    const-string v1, "No notice file exists."

    .line 1063
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1067
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;->b:Landroid/content/Context;

    .line 1088
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "NOTICE.html"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1068
    invoke-static {v0, v2}, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;->a(Ljava/util/List;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;->b:Landroid/content/Context;

    .line 1106
    sget v3, Lcom/android/settingslib/e$h;->notice_header:I

    .line 1107
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1112
    new-instance v3, Lcom/android/settingslib/license/a;

    invoke-direct {v3, v0}, Lcom/android/settingslib/license/a;-><init>(Ljava/util/List;)V

    .line 1113
    invoke-virtual {v3, v2, v1}, Lcom/android/settingslib/license/a;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_4
    :goto_2
    return-object v2
.end method
