.class public Lcom/android/settingslib/RestrictedSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "RestrictedSwitchPreference.java"


# instance fields
.field public a:Lcom/android/settingslib/i;

.field b:Z

.field c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 82
    sget v0, Lcom/android/settingslib/e$b;->switchPreferenceStyle:I

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 40
    iput-boolean p3, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->b:Z

    .line 46
    sget p4, Lcom/android/settingslib/e$g;->restricted_switch_widget:I

    invoke-virtual {p0, p4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setWidgetLayoutResource(I)V

    .line 47
    new-instance p4, Lcom/android/settingslib/i;

    invoke-direct {p4, p1, p0, p2}, Lcom/android/settingslib/i;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    if-eqz p2, :cond_3

    .line 49
    sget-object p4, Lcom/android/settingslib/e$i;->RestrictedSwitchPreference:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 51
    sget p4, Lcom/android/settingslib/e$i;->RestrictedSwitchPreference_useAdditionalSummary:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 54
    iget v0, p4, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    iget p4, p4, Landroid/util/TypedValue;->data:I

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    move p4, p3

    :goto_0
    iput-boolean p4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->b:Z

    .line 59
    :cond_1
    sget p4, Lcom/android/settingslib/e$i;->RestrictedSwitchPreference_restrictedSwitchSummary:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 61
    iget p4, p2, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_3

    .line 63
    iget p4, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p4, :cond_2

    .line 64
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->c:Ljava/lang/CharSequence;

    goto :goto_1

    .line 67
    :cond_2
    iget-object p1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->c:Ljava/lang/CharSequence;

    .line 71
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->b:Z

    if-eqz p1, :cond_4

    .line 72
    sget p1, Lcom/android/settingslib/e$g;->restricted_switch_preference:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setLayoutResource(I)V

    .line 1144
    iget-object p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    .line 2104
    iput-boolean p3, p1, Lcom/android/settingslib/i;->b:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settingslib/g$a;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/i;->a(Lcom/android/settingslib/g$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/i;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    invoke-virtual {v0}, Lcom/android/settingslib/i;->b()V

    .line 150
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 92
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/i;->a(Landroidx/preference/PreferenceViewHolder;)V

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settingslib/e$h;->enabled_by_admin:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/settingslib/e$h;->disabled_by_admin:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 103
    :cond_1
    sget v1, Lcom/android/settingslib/e$f;->restricted_icon:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020040

    .line 104
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 2177
    iget-object v5, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    .line 3161
    iget-boolean v5, v5, Lcom/android/settingslib/i;->a:Z

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    .line 106
    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v2, :cond_5

    .line 3177
    iget-object v1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    .line 4161
    iget-boolean v1, v1, Lcom/android/settingslib/i;->a:Z

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v4

    .line 109
    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_5
    iget-boolean v1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->b:Z

    if-eqz v1, :cond_8

    .line 113
    sget v1, Lcom/android/settingslib/e$f;->additional_summary:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 4177
    iget-object v1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    .line 5161
    iget-boolean v1, v1, Lcom/android/settingslib/i;->a:Z

    if-eqz v1, :cond_6

    .line 117
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 120
    :cond_6
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    return-void

    :cond_8
    const v1, 0x1020010

    .line 124
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 5177
    iget-object v1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    .line 6161
    iget-boolean v1, v1, Lcom/android/settingslib/i;->a:Z

    if-eqz v1, :cond_9

    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public performClick()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    invoke-virtual {v0}, Lcom/android/settingslib/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-super {p0}, Landroidx/preference/SwitchPreference;->performClick()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6177
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    .line 7161
    iget-boolean v0, v0, Lcom/android/settingslib/i;->a:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/i;->a(Lcom/android/settingslib/g$a;)Z

    return-void

    .line 167
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method
