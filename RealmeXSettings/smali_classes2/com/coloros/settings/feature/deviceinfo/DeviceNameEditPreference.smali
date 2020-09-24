.class public Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference;
.super Lcom/color/support/preference/ColorEditTextPreference;
.source "DeviceNameEditPreference.java"

# interfaces
.implements Landroidx/preference/EditTextPreference$OnBindEditTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0084

    .line 1061
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference;->setLayoutResource(I)V

    const p1, 0x7f0d00ae

    .line 1062
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference;->setDialogLayoutResource(I)V

    .line 1063
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference;->setOnBindEditTextListener(Landroidx/preference/EditTextPreference$OnBindEditTextListener;)V

    return-void
.end method


# virtual methods
.method public onBindEditText(Landroid/widget/EditText;)V
    .locals 4
    .param p1    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    instance-of v0, p1, Lcom/color/support/widget/ColorEditText;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Lcom/color/support/widget/ColorEditText;

    const/4 v0, 0x1

    .line 70
    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 72
    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 73
    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->selectAll()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorEditTextPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 80
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/coloros/settings/feature/deviceinfo/b;->a(Landroid/content/Context;Landroidx/preference/PreferenceViewHolder;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
