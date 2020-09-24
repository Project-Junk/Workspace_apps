.class public Lcom/android/settings/Settings$BatterySaverSettingsActivity;
.super Landroid/app/Activity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatterySaverSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 695
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 698
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 699
    invoke-static {}, Lcom/coloros/settings/utils/al;->f()Landroid/content/Intent;

    move-result-object p1

    .line 700
    invoke-virtual {p0}, Lcom/android/settings/Settings$BatterySaverSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$BatterySaverSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 703
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$BatterySaverSettingsActivity;->finish()V

    return-void
.end method
