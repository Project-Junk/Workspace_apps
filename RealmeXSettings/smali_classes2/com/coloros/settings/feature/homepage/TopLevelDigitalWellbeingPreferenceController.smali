.class public Lcom/coloros/settings/feature/homepage/TopLevelDigitalWellbeingPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "TopLevelDigitalWellbeingPreferenceController.java"


# static fields
.field private static final DIGITAL_WELLBEING_ACTION:Ljava/lang/String; = "com.google.android.apps.wellbeing.action.HOME"

.field private static final DIGITAL_WELLBEING_ACTIVITY:Ljava/lang/String; = "com.google.android.apps.wellbeing.home.TopLevelSettingsActivity"

.field private static final DIGITAL_WELLBEING_PACKAGE:Ljava/lang/String; = "com.google.android.apps.wellbeing"

.field private static final TAG:Ljava/lang/String; = "TopLevelDigitalWellbeingPreferenceController"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private isWellbeingInstalled()Z
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelDigitalWellbeingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.google.android.apps.wellbeing"

    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TopLevelDigitalWellbeingPreferenceController"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 40
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/TopLevelDigitalWellbeingPreferenceController;->isWellbeingInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.apps.wellbeing.action.HOME"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
