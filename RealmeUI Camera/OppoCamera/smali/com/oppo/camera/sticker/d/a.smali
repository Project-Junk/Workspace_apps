.class public Lcom/oppo/camera/sticker/d/a;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static volatile a:Lcom/oppo/camera/sticker/d/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/oppo/camera/sticker/d/a;->b:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/oppo/camera/sticker/d/a;->c:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/oppo/camera/sticker/d/a;->d:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/oppo/camera/sticker/d/a;->e:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/oppo/camera/sticker/d/a;->f:Ljava/lang/String;

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/oppo/camera/sticker/d/a;->g:I

    return-void
.end method

.method public static a()Lcom/oppo/camera/sticker/d/a;
    .locals 2

    .line 51
    sget-object v0, Lcom/oppo/camera/sticker/d/a;->a:Lcom/oppo/camera/sticker/d/a;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/oppo/camera/sticker/d/a;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/oppo/camera/sticker/d/a;->a:Lcom/oppo/camera/sticker/d/a;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/oppo/camera/sticker/d/a;

    invoke-direct {v1}, Lcom/oppo/camera/sticker/d/a;-><init>()V

    sput-object v1, Lcom/oppo/camera/sticker/d/a;->a:Lcom/oppo/camera/sticker/d/a;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/oppo/camera/sticker/d/a;->a:Lcom/oppo/camera/sticker/d/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 3

    .line 75
    iget v0, p0, Lcom/oppo/camera/sticker/d/a;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x4000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_0

    .line 86
    iget p1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p1, p0, Lcom/oppo/camera/sticker/d/a;->g:I

    .line 90
    :cond_0
    iget p1, p0, Lcom/oppo/camera/sticker/d/a;->g:I

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/oppo/camera/sticker/d/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.product.name"

    .line 68
    invoke-static {v0}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/sticker/d/a;->c:Ljava/lang/String;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/d/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/oppo/camera/sticker/d/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 120
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 121
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 123
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v0, 0x438

    if-lt p1, v0, :cond_0

    const-string p1, "1080P"

    .line 124
    iput-object p1, p0, Lcom/oppo/camera/sticker/d/a;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "720P"

    .line 126
    iput-object p1, p0, Lcom/oppo/camera/sticker/d/a;->f:Ljava/lang/String;

    .line 130
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/sticker/d/a;->f:Ljava/lang/String;

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/oppo/camera/sticker/d/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.build.version.opporom"

    .line 95
    invoke-static {v0}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/sticker/d/a;->d:Ljava/lang/String;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/d/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/oppo/camera/sticker/d/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.build.version.ota"

    .line 103
    invoke-static {v0}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/sticker/d/a;->e:Ljava/lang/String;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/d/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 110
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    const-string v0, "persist.sys.oppo.region"

    const-string v1, "CN"

    .line 114
    invoke-static {v0, v1}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
