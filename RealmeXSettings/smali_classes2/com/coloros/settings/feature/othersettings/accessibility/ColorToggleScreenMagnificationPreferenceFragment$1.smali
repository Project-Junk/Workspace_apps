.class final Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ColorToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 82
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "checked"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->a(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return p1
.end method
