.class public Lcom/android/settings/Settings$AndroidBeamSettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidBeamSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 251
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 252
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.NFC_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.coloros.wirelesssettings"

    .line 253
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/Settings$AndroidBeamSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$AndroidBeamSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$AndroidBeamSettingsActivity;->finish()V

    return-void
.end method
