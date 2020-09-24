.class public Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "DebugNonRectClipOperationsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;->a:[Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300d6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;->b:[Ljava/lang/String;

    return-void
.end method

.method private c()V
    .locals 5

    const-string v0, "debug.hwui.show_non_rect_clip"

    const-string v1, "hide"

    .line 72
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 76
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;->a:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 77
    aget-object v3, v3, v2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    .line 83
    iget-object v2, p0, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;->b:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "show_non_rect_clip"

    return-object v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    if-nez p2, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 1067
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "debug.hwui.show_non_rect_clip"

    .line 1066
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-static {}, Lcom/android/settingslib/development/d;->a()Lcom/android/settingslib/development/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/development/d;->b()V

    .line 56
    invoke-direct {p0}, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;->c()V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;->c()V

    return-void
.end method
