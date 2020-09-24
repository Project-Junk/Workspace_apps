.class public Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;
.super Lcom/android/settings/language/LanguageAndInputSettings;
.source "ColorInputMethodSettingsFragment.java"

# interfaces
.implements Lcom/coloros/settings/b;
.implements Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Lcom/coloros/settings/feature/othersettings/input/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment$2;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment$2;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v1, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->a:Lcom/coloros/settings/feature/othersettings/input/c;

    invoke-direct {v1, v2, v3, v4}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/coloros/settings/feature/othersettings/input/c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/coloros/settings/feature/othersettings/input/ColorSecurityWindowPreferenceController;

    invoke-direct {v1, p1}, Lcom/coloros/settings/feature/othersettings/input/ColorSecurityWindowPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lcom/coloros/settings/feature/othersettings/input/a;

    invoke-direct {v1, p1}, Lcom/coloros/settings/feature/othersettings/input/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lcom/coloros/settings/feature/othersettings/input/ColorKeyboardSettingPreferenceController;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coloros/settings/feature/othersettings/input/ColorKeyboardSettingPreferenceController;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->a:Lcom/coloros/settings/feature/othersettings/input/c;

    invoke-direct {v1, p0, v2}, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Lcom/coloros/settings/feature/othersettings/input/c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/coloros/settings/feature/othersettings/input/ColorIMEPositionPreferenceController;

    invoke-direct {v1, p1}, Lcom/coloros/settings/feature/othersettings/input/ColorIMEPositionPreferenceController;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v2, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v3, "ime_position_category"

    invoke-direct {v2, p1, v3}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/settingslib/core/a;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 111
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v1

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/android/settings/language/PointerSpeedController;

    invoke-direct {v1, p1}, Lcom/android/settings/language/PointerSpeedController;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "keyboardLayout"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Landroid/hardware/input/InputDeviceIdentifier;)V

    const/4 p1, 0x0

    .line 133
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 134
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150051

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/input/c;->a(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/input/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->a:Lcom/coloros/settings/feature/othersettings/input/c;

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/language/LanguageAndInputSettings;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/language/LanguageAndInputSettings;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 89
    invoke-super {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->onPause()V

    .line 90
    const-class v0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;

    .line 1075
    iget-object v0, v0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->b:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->a:Lcom/coloros/settings/feature/othersettings/input/c;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/othersettings/input/c;->b()Ljava/util/List;

    move-result-object v2

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 91
    invoke-static {p0, v1, v2, v0}, Lcom/coloros/settings/feature/othersettings/input/b;->a(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 122
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/language/LanguageAndInputSettings;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 76
    invoke-super {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->onResume()V

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->a:Lcom/coloros/settings/feature/othersettings/input/c;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/input/c;->a()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment$1;-><init>(Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
