.class public Lcom/coloros/settings/feature/privacy/IntelligentPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "IntelligentPreferenceController.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "key_intelligent_identification_contact"

.field private static final PACKAGE_MMS:Ljava/lang/String; = "com.android.mms"

.field private static final PACKAGE_MMS_ACTION_ATED:Ljava/lang/String; = "com.ted.sdk.intent.UPDATE_SETTING"

.field private static sIsColorOsMmsEnabled:Ljava/lang/Boolean;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/IntelligentPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 59
    invoke-static {p0}, Lcom/coloros/settings/utils/ba;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.common_center.number.recognition"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/IntelligentPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/ba;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/IntelligentPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/privacy/IntelligentPreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ted.sdk.intent.UPDATE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.mms"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
