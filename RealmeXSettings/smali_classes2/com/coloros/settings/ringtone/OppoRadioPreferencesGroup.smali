.class public Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;
.super Landroidx/preference/PreferenceCategory;
.source "OppoRadioPreferencesGroup.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup$a;

.field c:Lcom/color/support/preference/ColorMarkPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->c:Lcom/color/support/preference/ColorMarkPreference;

    .line 44
    iput p1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a:I

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->c:Lcom/color/support/preference/ColorMarkPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a:I

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->c:Lcom/color/support/preference/ColorMarkPreference;

    return-void
.end method


# virtual methods
.method final a(Lcom/color/support/preference/ColorMarkPreference;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 103
    iget-object v0, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->c:Lcom/color/support/preference/ColorMarkPreference;

    if-ne v0, p1, :cond_1

    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->c:Lcom/color/support/preference/ColorMarkPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    if-eq v0, p1, :cond_2

    const/4 v2, 0x0

    .line 108
    iput v2, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a:I

    .line 109
    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->c:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->callChangeListener(Ljava/lang/Object;)Z

    .line 126
    iput v1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a:I

    goto :goto_1

    .line 112
    :cond_2
    iget p1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a:I

    if-nez p1, :cond_3

    .line 113
    iput v1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a:I

    goto :goto_0

    :cond_3
    const/4 p2, 0x2

    if-ne p1, v1, :cond_4

    .line 115
    iput p2, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a:I

    goto :goto_0

    :cond_4
    if-ne p1, p2, :cond_5

    .line 117
    iput v1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a:I

    .line 119
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->c:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {p1, v1}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 120
    iget-object p1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->c:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->callChangeListener(Ljava/lang/Object;)Z

    .line 121
    iget-object p1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->b:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup$a;

    if-eqz p1, :cond_6

    .line 122
    iget p2, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a:I

    invoke-interface {p1, p2}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup$a;->a(I)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    if-nez p2, :cond_8

    .line 130
    iput v1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a:I

    .line 132
    :cond_8
    iput-object p1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->c:Lcom/color/support/preference/ColorMarkPreference;

    .line 133
    iget-object p2, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->c:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {p2, v1}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->callChangeListener(Ljava/lang/Object;)Z

    .line 135
    iget-object p1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->b:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup$a;

    if-eqz p1, :cond_9

    .line 136
    iget p2, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a:I

    invoke-interface {p1, p2}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup$a;->a(I)V

    :cond_9
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->c:Lcom/color/support/preference/ColorMarkPreference;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->c:Lcom/color/support/preference/ColorMarkPreference;

    :cond_0
    return-void
.end method

.method public addPreference(Landroidx/preference/Preference;)Z
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/color/support/preference/ColorMarkPreference;

    invoke-direct {v1, v0}, Lcom/color/support/preference/ColorMarkPreference;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/color/support/preference/ColorMarkPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/color/support/preference/ColorMarkPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/color/support/preference/ColorMarkPreference;->setKey(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/color/support/preference/ColorMarkPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v1, p0}, Lcom/color/support/preference/ColorMarkPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 56
    invoke-virtual {v1, p0}, Lcom/color/support/preference/ColorMarkPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const/4 p1, 0x0

    .line 57
    invoke-virtual {v1, p1}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 58
    invoke-super {p0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 63
    check-cast p1, Lcom/color/support/preference/ColorMarkPreference;

    .line 64
    invoke-static {}, Lcom/coloros/settings/utils/al;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->c:Lcom/color/support/preference/ColorMarkPreference;

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0, v1}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a(Z)V

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->a(Lcom/color/support/preference/ColorMarkPreference;Z)V

    return v1
.end method
