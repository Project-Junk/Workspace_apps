.class public Lcom/coloros/settings/feature/privacy/FileDeleteProtectPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "FileDeleteProtectPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.FILE_DELETE_PROTECT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.coloros.securitypermission"

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
