.class public Lcom/coloros/systemui/stackdivider/util/SplitScreenUtils;
.super Ljava/lang/Object;
.source "SplitScreenUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitScreenUtils"

.field private static mIsSplitScreen:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllTopAppInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/color/app/ColorAppInfo;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Landroid/app/OppoActivityManager;

    invoke-direct {v0}, Landroid/app/OppoActivityManager;-><init>()V

    .line 50
    :try_start_0
    invoke-virtual {v0}, Landroid/app/OppoActivityManager;->getAllTopAppInfos()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllTopAppInfo t:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getCurrentTopActivityNameInActivityStack(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 59
    new-instance p0, Landroid/app/OppoActivityManager;

    invoke-direct {p0}, Landroid/app/OppoActivityManager;-><init>()V

    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroid/app/OppoActivityManager;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static getCurrentTopAppLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 106
    new-instance v1, Landroid/app/OppoActivityManager;

    invoke-direct {v1}, Landroid/app/OppoActivityManager;-><init>()V

    .line 108
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 109
    invoke-virtual {v1}, Landroid/app/OppoActivityManager;->getTopApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentTopAppLabel e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SplitScreenUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static getCurrentTopPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 75
    new-instance p0, Landroid/app/OppoActivityManager;

    invoke-direct {p0}, Landroid/app/OppoActivityManager;-><init>()V

    .line 78
    :try_start_0
    invoke-virtual {p0}, Landroid/app/OppoActivityManager;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static getScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static isSplitScreenMode()Z
    .locals 1

    .line 128
    sget-boolean v0, Lcom/coloros/systemui/stackdivider/util/SplitScreenUtils;->mIsSplitScreen:Z

    return v0
.end method

.method public static isUserSetup(Landroid/content/Context;)Z
    .locals 2

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "device_provisioned"

    .line 93
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "user_setup_complete"

    .line 94
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static setSplitScreenMode(Z)V
    .locals 0

    .line 124
    sput-boolean p0, Lcom/coloros/systemui/stackdivider/util/SplitScreenUtils;->mIsSplitScreen:Z

    return-void
.end method
