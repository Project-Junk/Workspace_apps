.class public Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorInstalledImePreferenceController.java"

# interfaces
.implements Lcom/coloros/settingslib/inputmethod/InputMethodPreference$a;


# static fields
.field public static final KEY_INPUT_METHOD_MANAGER:Ljava/lang/String; = "input_method_manager"

.field public static final KEY_INSTALLED_IME_CATEGORY:Ljava/lang/String; = "installed_ime_category"

.field private static final KEY_PREVIOUSLY_ENABLED_SUBTYPES:Ljava/lang/String; = "previously_enabled_subtypes"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mHostFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodSettingValues:Lcom/coloros/settings/feature/othersettings/input/c;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mShowsOnlyFullImeAndKeyboardList:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Lcom/coloros/settings/feature/othersettings/input/c;)V
    .locals 2

    .line 63
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "installed_ime_category"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 64
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mHostFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 65
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mActivity:Landroid/app/Activity;

    .line 66
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mActivity:Landroid/app/Activity;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 67
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mActivity:Landroid/app/Activity;

    .line 68
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.settings.INPUT_METHOD_SETTINGS"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mShowsOnlyFullImeAndKeyboardList:Z

    .line 69
    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mInputMethodSettingValues:Lcom/coloros/settings/feature/othersettings/input/c;

    .line 70
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mActivity:Landroid/app/Activity;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method static synthetic lambda$updateInputMethodPreferenceViews$0(Ljava/text/Collator;Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;)I
    .locals 3

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1363
    :cond_0
    iget-boolean v0, p1, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->a:Z

    iget-boolean v1, p2, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->a:Z

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2

    .line 1364
    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 1365
    invoke-virtual {p2}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    .line 1366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1369
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1372
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1375
    :cond_2
    iget-boolean p0, p1, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->a:Z

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "previously_enabled_subtypes"

    const/4 v2, 0x0

    .line 194
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/input/b;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 3

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    .line 181
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 182
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v1

    .line 187
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    return-void
.end method

.method private savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/input/b;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "previously_enabled_subtypes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateCurrentImeName()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "current_input_method"

    .line 139
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_1

    .line 141
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mInputMethodSettingValues:Lcom/coloros/settings/feature/othersettings/input/c;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/othersettings/input/c;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 142
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private updateInputMethodPreferenceViews(Landroidx/preference/PreferenceCategory;)V
    .locals 13

    .line 93
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 94
    :try_start_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 95
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 96
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v1

    .line 97
    iget-boolean v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mInputMethodSettingValues:Lcom/coloros/settings/feature/othersettings/input/c;

    .line 98
    invoke-virtual {v2}, Lcom/coloros/settings/feature/othersettings/input/c;->b()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 99
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v4, v3

    goto :goto_1

    .line 100
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_4

    .line 102
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v1, :cond_3

    .line 104
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    move v11, v3

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v6, 0x1

    move v11, v6

    .line 105
    :goto_4
    new-instance v6, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;

    iget-object v8, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mContext:Landroid/content/Context;

    iget-boolean v10, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mShowsOnlyFullImeAndKeyboardList:Z

    move-object v7, v6

    move-object v12, p0

    invoke-direct/range {v7 .. v12}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/coloros/settingslib/inputmethod/InputMethodPreference$a;)V

    .line 108
    iget-object v7, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 110
    :cond_4
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v5, Lcom/coloros/settings/feature/othersettings/input/-$$Lambda$ColorInstalledImePreferenceController$0YGbvwNrM4U2oBfzuk325vPc0iw;

    invoke-direct {v5, v1}, Lcom/coloros/settings/feature/othersettings/input/-$$Lambda$ColorInstalledImePreferenceController$0YGbvwNrM4U2oBfzuk325vPc0iw;-><init>(Ljava/text/Collator;)V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_5
    if-ge v3, v4, :cond_5

    .line 113
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;

    .line 115
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 116
    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/input/b;->a(Landroidx/preference/Preference;)V

    .line 117
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->b()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 119
    :cond_5
    new-instance v1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    const-string v2, "input_method_manager"

    .line 120
    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f120b14

    .line 121
    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(I)V

    .line 122
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setIntent(Landroid/content/Intent;)V

    const v2, 0x7f0d00a7

    .line 123
    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setLayoutResource(I)V

    .line 124
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 125
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->updateCurrentImeName()V

    .line 131
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mHostFragment:Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mInputMethodSettingValues:Lcom/coloros/settings/feature/othersettings/input/c;

    .line 133
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/input/c;->b()Ljava/util/List;

    move-result-object v1

    .line 131
    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/othersettings/input/b;->a(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p1

    .line 125
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 76
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInputMethodPreference(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)V
    .locals 3

    .line 152
    invoke-virtual {p1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->a()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 159
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mHostFragment:Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 164
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 163
    invoke-static {v0, v1, v2, p1}, Lcom/coloros/settings/feature/othersettings/input/b;->a(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 166
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mInputMethodSettingValues:Lcom/coloros/settings/feature/othersettings/input/c;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/input/c;->a()V

    .line 172
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;

    .line 173
    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreference;->b()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 86
    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 87
    check-cast p1, Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/input/ColorInstalledImePreferenceController;->updateInputMethodPreferenceViews(Landroidx/preference/PreferenceCategory;)V

    :cond_0
    return-void
.end method
