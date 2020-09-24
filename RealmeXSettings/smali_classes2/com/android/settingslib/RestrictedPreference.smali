.class public Lcom/android/settingslib/RestrictedPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "RestrictedPreference.java"


# instance fields
.field o:Lcom/android/settingslib/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 48
    sget v0, Lcom/android/settingslib/e$b;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    new-instance p3, Lcom/android/settingslib/i;

    invoke-direct {p3, p1, p0, p2}, Lcom/android/settingslib/i;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/settingslib/RestrictedPreference;->o:Lcom/android/settingslib/i;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .line 58
    sget v0, Lcom/android/settingslib/e$g;->restricted_icon:I

    return v0
.end method

.method public a(Lcom/android/settingslib/g$a;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreference;->o:Lcom/android/settingslib/i;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/i;->a(Lcom/android/settingslib/g$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreference;->o:Lcom/android/settingslib/i;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/i;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreference;->o:Lcom/android/settingslib/i;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/i;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreference;->o:Lcom/android/settingslib/i;

    .line 1104
    iput-boolean p1, v0, Lcom/android/settingslib/i;->b:Z

    return-void
.end method

.method protected b()Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreference;->o:Lcom/android/settingslib/i;

    .line 1161
    iget-boolean v0, v0, Lcom/android/settingslib/i;->a:Z

    return v0
.end method

.method public onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreference;->o:Lcom/android/settingslib/i;

    invoke-virtual {v0}, Lcom/android/settingslib/i;->b()V

    .line 90
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreference;->o:Lcom/android/settingslib/i;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/i;->a(Landroidx/preference/PreferenceViewHolder;)V

    .line 70
    sget v0, Lcom/android/settingslib/e$f;->restricted_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public performClick()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreference;->o:Lcom/android/settingslib/i;

    invoke-virtual {v0}, Lcom/android/settingslib/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-super {p0}, Lcom/android/settingslib/TwoTargetPreference;->performClick()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/android/settingslib/RestrictedPreference;->o:Lcom/android/settingslib/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/i;->a(Lcom/android/settingslib/g$a;)Z

    return-void

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->setEnabled(Z)V

    return-void
.end method
