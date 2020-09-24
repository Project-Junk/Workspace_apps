.class public Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "ColorRestrictedPreference.java"


# instance fields
.field private a:I

.field public b:Lcom/coloros/settings/widget/preference/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d00a7

    .line 66
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Lcom/coloros/settings/widget/preference/a;

    invoke-direct {v0, p1, p0, p2}, Lcom/coloros/settings/widget/preference/a;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    const p1, 0x7f0d0100

    .line 3061
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p3, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance p3, Lcom/coloros/settings/widget/preference/a;

    invoke-direct {p3, p1, p0, p2}, Lcom/coloros/settings/widget/preference/a;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    const p1, 0x7f0d0100

    .line 2061
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance p3, Lcom/coloros/settings/widget/preference/a;

    invoke-direct {p3, p1, p0, p2}, Lcom/coloros/settings/widget/preference/a;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    const p1, 0x7f0d0100

    .line 1061
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f0d02a2

    return v0
.end method

.method public final a(Lcom/android/settingslib/g$a;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/a;->a(Lcom/android/settingslib/g$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/widget/preference/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/widget/preference/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 5135
    iput-boolean p1, v0, Lcom/coloros/settings/widget/preference/a;->b:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 3153
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 3195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 6195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    return v0
.end method

.method public onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/a;->b()V

    .line 121
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/a;->a(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a056b

    .line 83
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4153
    iget-object v1, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 4195
    iget-boolean v1, v1, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 85
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :cond_1
    iget v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->a:I

    if-lez v0, :cond_2

    .line 89
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_2
    return-void
.end method

.method public performClick(Landroid/view/View;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->performClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5153
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 5195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->b:Lcom/coloros/settings/widget/preference/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/a;->a(Lcom/android/settingslib/g$a;)Z

    return-void

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method

.method public setViewId(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;->a:I

    return-void
.end method
