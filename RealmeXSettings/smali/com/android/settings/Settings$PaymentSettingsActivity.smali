.class public Lcom/android/settings/Settings$PaymentSettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 301
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 304
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 306
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.NFC_PAYMENT_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.coloros.wirelesssettings"

    .line 307
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$PaymentSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/Settings$PaymentSettingsActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Settings"

    const-string v0, "PaymentSettingsActivity, onCreate, will open aosp activity."

    .line 311
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
