.class final Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ColorToggleAutoclickPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 44
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 45
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;

    invoke-static {p2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;)Lcom/android/settings/widget/SeekBarPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    .line 46
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;

    invoke-virtual {p2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "auto_click_pre"

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 47
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;

    invoke-static {p2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "accessibility_autoclick_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 48
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAutoclickPreferenceFragment;->a(Z)Z

    move-result p1

    return p1
.end method
