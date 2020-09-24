.class public Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModePriorityMessagesPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final a:Lcom/android/settings/notification/w;

.field private b:Landroidx/preference/ListPreference;

.field private final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_mode_messages"

    .line 41
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 42
    invoke-static {p1}, Lcom/android/settings/notification/w;->a(Landroid/content/Context;)Lcom/android/settings/notification/w;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->a:Lcom/android/settings/notification/w;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030125

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->c:[Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->c:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 101
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    return p1
.end method

.method private a(Landroidx/preference/Preference;)V
    .locals 3

    .line 77
    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->b:Landroidx/preference/ListPreference;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->b()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->a:Lcom/android/settings/notification/w;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/w;->h(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 91
    iget-object p1, p0, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->a:Lcom/android/settings/notification/w;

    .line 92
    invoke-virtual {p1}, Lcom/android/settings/notification/w;->d()I

    move-result p1

    .line 91
    invoke-static {p1}, Lcom/android/settings/notification/w;->f(I)Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->b:Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->c:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->a(Ljava/lang/String;)I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->b:Landroidx/preference/ListPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->b:Landroidx/preference/ListPreference;

    const-string v0, "zen_mode_from_none"

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->b:Landroidx/preference/ListPreference;

    invoke-static {v2}, Lcom/android/settings/notification/w;->g(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "zen_mode_messages"

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->b:Landroidx/preference/ListPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_messages"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->a:Lcom/android/settings/notification/w;

    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/notification/w;->b(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x4

    .line 70
    invoke-virtual {v0, v1, p2}, Lcom/android/settings/notification/w;->a(II)V

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->a(Landroidx/preference/Preference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;->a(Landroidx/preference/Preference;)V

    return-void
.end method
