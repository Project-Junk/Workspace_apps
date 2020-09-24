.class public Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;
.super Lcom/android/settings/core/a;
.source "UserDictionaryListPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;


# static fields
.field private static final TAG:Ljava/lang/String; = "UserDictionaryListPreferenceController"

.field public static final USER_DICTIONARY_SETTINGS_INTENT_ACTION:Ljava/lang/String; = "android.settings.USER_DICTIONARY_SETTINGS"


# instance fields
.field protected final KEY_ALL_LANGUAGE:Ljava/lang/String;

.field private mLocale:Ljava/lang/String;

.field protected mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "all_languages"

    .line 51
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->KEY_ALL_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method public static getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "locale"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    .line 98
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 101
    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, ""

    .line 102
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 106
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v0, "input_method"

    .line 117
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 118
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v3, 0x1

    .line 121
    invoke-virtual {p0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    .line 123
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 124
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 126
    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 136
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v1

    :catchall_0
    move-exception p0

    .line 106
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 107
    throw p0
.end method


# virtual methods
.method protected createUserDictSettings()V
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->getUserDictLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 155
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mLocale:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const-string v2, ""

    .line 163
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_1
    if-lez v1, :cond_4

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_4

    .line 169
    iget-object v3, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "all_languages"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 173
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    :cond_2
    iget-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 182
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->createUserDictionaryPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 184
    :cond_5
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->createUserDictionaryPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_6

    .line 187
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_7
    return-void
.end method

.method protected createUserDictionaryPreference(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 4

    .line 201
    new-instance v0, Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.USER_DICTIONARY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 204
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_1

    .line 207
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f12181a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "all_languages"

    .line 209
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 210
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_0

    .line 212
    :cond_1
    invoke-static {p1}, Lcom/android/settings/m;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    :goto_0
    const-string v2, "locale"

    .line 215
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {v0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 219
    const-class p1, Lcom/android/settings/inputmethod/UserDictionarySettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    return-object v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 74
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getUserDictLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-static {p1}, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object p1

    return-object p1
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->createUserDictSettings()V

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->mLocale:Ljava/lang/String;

    return-void
.end method
