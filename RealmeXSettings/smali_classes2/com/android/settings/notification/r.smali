.class public Lcom/android/settings/notification/r;
.super Ljava/lang/Object;
.source "SettingPref.java"


# instance fields
.field private final a:[I

.field protected final b:I

.field final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:I

.field final f:Landroid/net/Uri;

.field protected g:Landroidx/preference/TwoStatePreference;

.field protected h:Landroidx/preference/DropDownPreference;

.field private i:Z


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/settings/notification/r;->i:Z

    .line 63
    iput p1, p0, Lcom/android/settings/notification/r;->b:I

    .line 64
    iput-object p2, p0, Lcom/android/settings/notification/r;->c:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/android/settings/notification/r;->d:Ljava/lang/String;

    .line 66
    iput p4, p0, Lcom/android/settings/notification/r;->e:I

    .line 67
    iput-object p5, p0, Lcom/android/settings/notification/r;->a:[I

    .line 68
    iget p1, p0, Lcom/android/settings/notification/r;->b:I

    iget-object p2, p0, Lcom/android/settings/notification/r;->d:Ljava/lang/String;

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

    .line 1154
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 1156
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1152
    :cond_1
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 1150
    :cond_2
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 68
    :goto_0
    iput-object p1, p0, Lcom/android/settings/notification/r;->f:Landroid/net/Uri;

    return-void
.end method

.method protected static a(ILandroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 178
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 180
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 176
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 174
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/settings/SettingsPreferenceFragment;)Landroidx/preference/Preference;
    .locals 7

    .line 80
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/r;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/r;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    move-object v1, v2

    .line 86
    :cond_0
    instance-of p1, v1, Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_1

    .line 87
    move-object p1, v1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/notification/r;->g:Landroidx/preference/TwoStatePreference;

    goto :goto_1

    .line 88
    :cond_1
    instance-of p1, v1, Landroidx/preference/DropDownPreference;

    if-eqz p1, :cond_3

    .line 89
    move-object p1, v1

    check-cast p1, Landroidx/preference/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/notification/r;->h:Landroidx/preference/DropDownPreference;

    .line 90
    iget-object p1, p0, Lcom/android/settings/notification/r;->a:[I

    array-length v3, p1

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 91
    array-length p1, p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    .line 92
    :goto_0
    iget-object v5, p0, Lcom/android/settings/notification/r;->a:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/r;->a:[I

    aget v6, v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/notification/r;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 94
    iget-object v5, p0, Lcom/android/settings/notification/r;->a:[I

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 96
    :cond_2
    iget-object v4, p0, Lcom/android/settings/notification/r;->h:Landroidx/preference/DropDownPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 97
    iget-object v3, p0, Lcom/android/settings/notification/r;->h:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3, p1}, Landroidx/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 101
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/settings/notification/r;->g:Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_4

    .line 102
    new-instance p1, Lcom/android/settings/notification/r$1;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/notification/r$1;-><init>(Lcom/android/settings/notification/r;Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/notification/r;->g:Landroidx/preference/TwoStatePreference;

    return-object p1

    .line 111
    :cond_4
    iget-object p1, p0, Lcom/android/settings/notification/r;->h:Landroidx/preference/DropDownPreference;

    if-eqz p1, :cond_5

    .line 112
    new-instance p1, Lcom/android/settings/notification/r$2;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/notification/r$2;-><init>(Lcom/android/settings/notification/r;Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object p1, p0, Lcom/android/settings/notification/r;->h:Landroidx/preference/DropDownPreference;

    return-object p1

    :cond_5
    return-object v2
.end method

.method protected a(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 0

    .line 76
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected a(Landroid/content/Context;I)Z
    .locals 3

    .line 124
    iget v0, p0, Lcom/android/settings/notification/r;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/notification/r;->d:Ljava/lang/String;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1166
    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1

    .line 1168
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1164
    :cond_1
    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1

    .line 1162
    :cond_2
    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;)V
    .locals 5

    .line 136
    iget v0, p0, Lcom/android/settings/notification/r;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/r;->d:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/notification/r;->e:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/notification/r;->a(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/android/settings/notification/r;->g:Landroidx/preference/TwoStatePreference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 138
    :goto_0
    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/r;->h:Landroidx/preference/DropDownPreference;

    if-eqz v1, :cond_2

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 1189
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/notification/r;->i:Z

    if-eqz v1, :cond_6

    .line 1193
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1194
    iget-object v4, p0, Lcom/android/settings/notification/r;->g:Landroidx/preference/TwoStatePreference;

    if-eqz v4, :cond_4

    .line 1195
    iget-object v4, p0, Lcom/android/settings/notification/r;->c:Ljava/lang/String;

    if-ne v0, v3, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    :cond_4
    iget-object v2, p0, Lcom/android/settings/notification/r;->h:Landroidx/preference/DropDownPreference;

    if-eqz v2, :cond_5

    .line 1198
    iget-object v2, p0, Lcom/android/settings/notification/r;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/notification/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_state_update"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "20012"

    .line 1201
    invoke-static {p1, v2, v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_6
    return-void
.end method
