.class public Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;
.super Lcom/color/support/preference/ColorActivityDialogPreference;
.source "ColorFullScreenListPreference.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorActivityDialogPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorActivityDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    sget-object v0, Lcom/android/settings/g$a;->ColorFullScreenListPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->a:Z

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    sget-object v0, Lcom/android/settings/g$a;->SettingColorJumpPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 46
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->b:Z

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorActivityDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 73
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorActivityDialogPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 74
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->c:Landroid/widget/TextView;

    .line 75
    iget-boolean p1, p0, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->b:Z

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060121

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060126

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 57
    invoke-super {p0, v0}, Lcom/color/support/preference/ColorActivityDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->b(Ljava/lang/CharSequence;)V

    return-void

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorActivityDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
