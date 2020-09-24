.class public Lcom/android/settings/Settings$OverlaySettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverlaySettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 402
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 407
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 408
    new-instance p1, Landroid/content/Intent;

    const-string v0, "action.coloros.safecenter.FloatWindowListActivity"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.coloros.safecenter"

    .line 409
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/Settings$OverlaySettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$OverlaySettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$OverlaySettingsActivity;->finish()V

    return-void
.end method
