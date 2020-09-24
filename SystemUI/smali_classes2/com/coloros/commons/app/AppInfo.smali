.class public Lcom/coloros/commons/app/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private appInfo:Landroid/content/pm/ApplicationInfo;

.field private appName:Ljava/lang/CharSequence;

.field private icon:Landroid/graphics/Bitmap;

.field private packageName:Ljava/lang/CharSequence;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/CharSequence;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/coloros/commons/app/AppInfo;->appName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/commons/app/AppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/coloros/commons/app/AppInfo;->icon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/coloros/commons/app/AppInfo;->packageName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getVersionCode()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/coloros/commons/app/AppInfo;->versionCode:I

    return p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/coloros/commons/app/AppInfo;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public setAppName(Ljava/lang/CharSequence;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/coloros/commons/app/AppInfo;->appName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/coloros/commons/app/AppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/coloros/commons/app/AppInfo;->icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/coloros/commons/app/AppInfo;->packageName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/coloros/commons/app/AppInfo;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/coloros/commons/app/AppInfo;->versionName:Ljava/lang/String;

    return-void
.end method
