.class public Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;
.super Lcom/color/support/preference/ColorEditTextPreference;
.source "ColorCustomEditTextPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/widget/TextView;

.field private c:Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorEditTextPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    sget-object v0, Lcom/android/settings/g$a;->SettingColorJumpPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->a:Z

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;)V
    .locals 0

    .line 1106
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->c:Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const v0, 0x1020003

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/16 v0, 0x4001

    .line 100
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 101
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorEditTextPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 70
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->b:Landroid/widget/TextView;

    .line 71
    iget-boolean p1, p0, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->a:Z

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060121

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060126

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
