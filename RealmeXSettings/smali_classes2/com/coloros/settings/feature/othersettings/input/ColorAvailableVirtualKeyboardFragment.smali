.class public Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;
.super Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;
.source "ColorAvailableVirtualKeyboardFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/text/Collator;Lcom/coloros/settingslib/inputmethod/InputMethodPreference;Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)I
    .locals 0

    .line 83
    invoke-virtual {p1, p2, p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->a(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;Ljava/text/Collator;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$tPrZOukEJKeWuPAlp7Kpy-NcSqw(Ljava/text/Collator;Lcom/coloros/settingslib/inputmethod/InputMethodPreference;Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->a(Ljava/text/Collator;Lcom/coloros/settingslib/inputmethod/InputMethodPreference;Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->b:Lcom/android/settingslib/inputmethod/c;

    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/c;->a()V

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->d:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    .line 70
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 71
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->b:Lcom/android/settingslib/inputmethod/c;

    invoke-virtual {v1}, Lcom/android/settingslib/inputmethod/c;->b()Ljava/util/List;

    move-result-object v8

    .line 72
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_2

    .line 74
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v5, v10

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    move v5, v1

    .line 77
    :goto_2
    new-instance v12, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;

    const/4 v4, 0x1

    move-object v1, v12

    move-object v2, v7

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/coloros/settingslib/inputmethod/InputMethodPreference$a;)V

    .line 80
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/coloros/settings/feature/othersettings/input/-$$Lambda$ColorAvailableVirtualKeyboardFragment$tPrZOukEJKeWuPAlp7Kpy-NcSqw;

    invoke-direct {v2, v0}, Lcom/coloros/settings/feature/othersettings/input/-$$Lambda$ColorAvailableVirtualKeyboardFragment$tPrZOukEJKeWuPAlp7Kpy-NcSqw;-><init>(Ljava/text/Collator;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 84
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 88
    :cond_3
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 89
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->shouldAddPreferenceHeader()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->addPreferenceHeader(Z)V

    .line 90
    new-instance v1, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    invoke-virtual {v1}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a()V

    .line 93
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :goto_3
    if-ge v10, v9, :cond_5

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;

    .line 96
    invoke-virtual {v0, v10}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setOrder(I)V

    add-int/lit8 v1, v9, -0x1

    if-ne v10, v1, :cond_4

    const v1, 0x7f0d00a7

    .line 98
    invoke-virtual {v0, v1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setLayoutResource(I)V

    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 101
    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/input/b;->a(Landroidx/preference/Preference;)V

    .line 102
    invoke-virtual {v0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->b()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const v0, 0x7f120b14

    .line 42
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/inputmethod/c;->a(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/c;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->b:Lcom/android/settingslib/inputmethod/c;

    .line 45
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->c:Landroid/view/inputmethod/InputMethodManager;

    .line 46
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->d:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->onResume()V

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;->setHasOptionsMenu(Z)V

    :cond_0
    return-void
.end method
