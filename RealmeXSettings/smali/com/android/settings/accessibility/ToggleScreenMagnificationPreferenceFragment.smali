.class public Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;
.super Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;
    }
.end annotation


# instance fields
.field protected a:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

.field protected b:Landroidx/preference/Preference;

.field private l:Landroid/app/Dialog;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->m:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/Context;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/Context;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 225
    invoke-super {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a()V

    .line 227
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 227
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .line 240
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "video_resource"

    .line 245
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->a:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setVisible(Z)V

    .line 247
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->a:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setVisible(Z)V

    :goto_0
    const-string v0, "from_suw"

    .line 253
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->m:Z

    :cond_2
    const-string v0, "checked"

    .line 257
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->n:Z

    :cond_3
    const-string/jumbo v0, "title_res"

    .line 261
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 262
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    :cond_4
    return-void
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "accessibility_display_magnification_navbar_enabled"

    .line 214
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->showDialog(I)V

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->c()V

    return-void
.end method

.method protected c()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->e:Ljava/lang/String;

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 277
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->b:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->b:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p1, 0x7

    return p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method protected i_()V
    .locals 1

    .line 234
    invoke-super {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->i_()V

    .line 235
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/SwitchBar$a;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    new-instance p1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->a:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    .line 147
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->a:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setSelectable(Z)V

    .line 148
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->a:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setPersistent(Z)V

    .line 149
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->a:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    const v1, 0x7f0d01b1

    invoke-virtual {p1, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setLayoutResource(I)V

    .line 151
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->b:Landroidx/preference/Preference;

    .line 152
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->b:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 153
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->b:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 154
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->b:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 155
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->b:Landroidx/preference/Preference;

    const v1, 0x7f08087d

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 158
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 159
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->a:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setOrder(I)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->b:Landroidx/preference/Preference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->b:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1270
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "com.android.internal.R.integer.config_navBarInteractionMode"

    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/accessibility/a;->b(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->l:Landroid/app/Dialog;

    goto :goto_1

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/accessibility/a;->a(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->l:Landroid/app/Dialog;

    .line 193
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->l:Landroid/app/Dialog;

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 171
    invoke-super {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->onResume()V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0780

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->c()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 209
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->a(Ljava/lang/String;Z)V

    return-void
.end method
