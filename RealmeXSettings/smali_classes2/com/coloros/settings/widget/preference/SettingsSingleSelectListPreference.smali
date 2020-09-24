.class public Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;
.super Lcom/color/support/preference/ColorListPreference;
.source "SettingsSingleSelectListPreference.java"


# instance fields
.field private f:Z

.field private g:Lcom/coloros/settings/widget/preference/a;

.field private h:Z

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->g:Lcom/coloros/settings/widget/preference/a;

    .line 46
    sget-object v0, Lcom/android/settings/g$a;->SettingsColorPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->f:Z

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    sget-object v0, Lcom/android/settings/g$a;->SettingColorJumpPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x2

    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->h:Z

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->f:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Lcom/coloros/settings/widget/preference/a;

    invoke-direct {v0, p1, p0, p2}, Lcom/coloros/settings/widget/preference/a;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->g:Lcom/coloros/settings/widget/preference/a;

    :cond_0
    return-void
.end method

.method private synthetic a(Lcom/android/settingslib/g$a;Landroidx/preference/Preference;)Z
    .locals 0

    .line 165
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$kspwgrgUH5mCTh5z1PJdR7fd4YA(Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;Lcom/android/settingslib/g$a;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a(Lcom/android/settingslib/g$a;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 64
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->h:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 65
    iput-boolean v1, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->h:Z

    .line 66
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final a(JLcom/android/settingslib/g$a;)V
    .locals 8

    if-nez p3, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p3, :cond_2

    const-wide p1, 0x7fffffffffffffffL

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 152
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_4

    .line 153
    aget-object v6, v0, v5

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-gtz v6, :cond_3

    .line 155
    aget-object v6, v1, v5

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    aget-object v6, v0, v5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 162
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 163
    invoke-virtual {p0, p3}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 164
    new-instance p1, Lcom/coloros/settings/widget/preference/-$$Lambda$SettingsSingleSelectListPreference$kspwgrgUH5mCTh5z1PJdR7fd4YA;

    invoke-direct {p1, p0, p3}, Lcom/coloros/settings/widget/preference/-$$Lambda$SettingsSingleSelectListPreference$kspwgrgUH5mCTh5z1PJdR7fd4YA;-><init>(Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;Lcom/android/settingslib/g$a;)V

    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void

    :cond_5
    const/4 p3, 0x0

    .line 170
    invoke-virtual {p0, p3}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 173
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-eq p3, v0, :cond_8

    .line 174
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 175
    new-array v0, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 176
    new-array v0, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    int-to-long v0, p3

    cmp-long v0, v0, p1

    if-gtz v0, :cond_6

    .line 178
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    return-void

    .line 179
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_7

    .line 180
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p3, v0, p1

    if-nez p3, :cond_7

    .line 183
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    return-void

    .line 187
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public final a(Lcom/android/settingslib/g$a;)V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->g:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/a;->a(Lcom/android/settingslib/g$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->g:Lcom/coloros/settings/widget/preference/a;

    .line 1195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->f:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->g:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/a;->b()V

    .line 100
    :cond_0
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorListPreference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 72
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 74
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->h:Z

    if-eqz v0, :cond_0

    const v0, 0x1020010

    .line 75
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->i:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060121

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->f:Z

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->g:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/a;->a(Landroidx/preference/PreferenceViewHolder;)V

    :cond_1
    return-void
.end method

.method public performClick(Landroid/view/View;)V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->g:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorListPreference;->performClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->f:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->g:Lcom/coloros/settings/widget/preference/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/a;->a(Lcom/android/settingslib/g$a;)Z

    return-void

    .line 119
    :cond_0
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorListPreference;->setEnabled(Z)V

    return-void
.end method
