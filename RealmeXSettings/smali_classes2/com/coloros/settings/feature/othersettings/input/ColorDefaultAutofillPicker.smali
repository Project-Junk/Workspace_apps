.class public Lcom/coloros/settings/feature/othersettings/input/ColorDefaultAutofillPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;
.source "ColorDefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/input/ColorDefaultAutofillPicker$ColorAutofillPickerConfirmationDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
    .locals 1

    .line 74
    new-instance v0, Lcom/coloros/settings/feature/othersettings/input/ColorDefaultAutofillPicker$ColorAutofillPickerConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/input/ColorDefaultAutofillPicker$ColorAutofillPickerConfirmationDialogFragment;-><init>()V

    .line 76
    invoke-virtual {v0, p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/input/ColorDefaultAutofillPicker$ColorAutofillPickerConfirmationDialogFragment;->a(Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_tag"

    .line 65
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorDefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "20012"

    const-string v3, "auto_fill_picker"

    invoke-static {v1, v2, v3, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final f()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorDefaultAutofillPicker;->j_()V

    return-void
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j_()V
    .locals 3

    .line 39
    invoke-super {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->j_()V

    .line 40
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorDefaultAutofillPicker;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 41
    new-instance v1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorDefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d007f

    .line 42
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const v2, 0x7f12028a

    .line 43
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 44
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorDefaultAutofillPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "20012"

    const-string v1, "auto_fill"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public shouldAddTopPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
