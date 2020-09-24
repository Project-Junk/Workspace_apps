.class public abstract Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "ColorRadioButtonPickerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/g;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 44
    invoke-virtual {p3}, Lcom/android/settingslib/widget/g;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/settingslib/widget/g;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/af;->b(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 50
    invoke-static {p4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 51
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 55
    :goto_0
    iget-boolean p2, p3, Lcom/android/settingslib/widget/g;->g:Z

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setEnabled(Z)V

    .line 1069
    iput-object p0, p1, Lcom/android/settings/widget/RadioButtonPreference;->a:Lcom/android/settings/widget/RadioButtonPreference$a;

    return-object p1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 8

    .line 123
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "key_category"

    .line 126
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 127
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v1}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 134
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->i()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    goto :goto_2

    .line 137
    :cond_1
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 139
    :goto_2
    instance-of v5, v4, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v5, :cond_2

    .line 140
    move-object v5, v4

    check-cast v5, Lcom/android/settings/widget/RadioButtonPreference;

    .line 141
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 142
    invoke-virtual {v5}, Lcom/android/settings/widget/RadioButtonPreference;->isChecked()Z

    move-result v7

    if-eq v7, v6, :cond_2

    .line 143
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j_()V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/g;

    .line 66
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->f:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->b()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 74
    new-instance v2, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    invoke-virtual {v2}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a()V

    .line 77
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "key_category"

    .line 78
    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->g_()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 82
    new-instance v3, Lcom/coloros/settings/widget/preference/ColorRadioButtonPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/coloros/settings/widget/preference/ColorRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080807

    .line 86
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 85
    invoke-static {v4, v5}, Lcom/coloros/settings/utils/af;->b(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 87
    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/preference/ColorRadioButtonPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const v4, 0x7f1201ce

    .line 89
    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/preference/ColorRadioButtonPreference;->setTitle(I)V

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/preference/ColorRadioButtonPreference;->setChecked(Z)V

    .line 2069
    iput-object p0, v3, Lcom/android/settings/widget/RadioButtonPreference;->a:Lcom/android/settings/widget/RadioButtonPreference$a;

    .line 92
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->i()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 93
    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 98
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 99
    new-instance v5, Lcom/coloros/settings/widget/preference/ColorRadioButtonPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/coloros/settings/widget/preference/ColorRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/widget/g;

    invoke-virtual {p0, v5, v6, v7, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->a(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/g;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;

    .line 101
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/widget/g;

    invoke-virtual {p0, v5, v6, v4}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->a(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/g;)V

    .line 102
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->i()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 103
    invoke-virtual {v2, v5}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 105
    :cond_5
    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 108
    :cond_6
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->g()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 113
    invoke-super {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onResume()V

    .line 114
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 118
    invoke-virtual {v0, v2, v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    :cond_0
    return-void
.end method
