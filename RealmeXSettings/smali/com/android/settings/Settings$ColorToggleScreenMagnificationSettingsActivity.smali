.class public Lcom/android/settings/Settings$ColorToggleScreenMagnificationSettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorToggleScreenMagnificationSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 755
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 758
    invoke-virtual {p0}, Lcom/android/settings/Settings$ColorToggleScreenMagnificationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/android/settings/Settings$ColorToggleScreenMagnificationSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 762
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 764
    :cond_0
    const-class v2, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":settings:show_fragment"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    invoke-static {v1, p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    const-string v2, ":settings:show_fragment_args"

    .line 766
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 768
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
