.class public Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;
.super Lcom/color/support/preference/ColorSwitchPreference;
.source "ColorRestrictedSwitchPreference.java"


# instance fields
.field public b:Lcom/coloros/settings/widget/preference/a;

.field c:Z

.field d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 99
    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->c:Z

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->d:Ljava/lang/String;

    const/4 v1, -0x1

    .line 45
    iput v1, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->e:I

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->c:Z

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->d:Ljava/lang/String;

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->e:I

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 43
    iput-boolean p3, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->c:Z

    const/4 p3, 0x0

    .line 44
    iput-object p3, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->d:Ljava/lang/String;

    const/4 p3, -0x1

    .line 45
    iput p3, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->e:I

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 43
    iput-boolean p3, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->c:Z

    const/4 p3, 0x0

    .line 44
    iput-object p3, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->d:Ljava/lang/String;

    const/4 p3, -0x1

    .line 45
    iput p3, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->e:I

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 54
    new-instance v0, Lcom/coloros/settings/widget/preference/a;

    invoke-direct {v0, p1, p0, p2}, Lcom/coloros/settings/widget/preference/a;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 56
    sget-object v1, Lcom/android/settingslib/e$i;->RestrictedSwitchPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x1

    .line 58
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 61
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_0

    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->c:Z

    .line 66
    :cond_1
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 69
    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 71
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_2

    .line 72
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 74
    :cond_2
    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_4

    goto :goto_2

    .line 77
    :cond_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->d:Ljava/lang/String;

    .line 78
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    :cond_5
    iget-object p2, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->d:Ljava/lang/String;

    if-nez p2, :cond_6

    const p2, 0x7f1207eb

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->d:Ljava/lang/String;

    .line 83
    :cond_6
    iget-boolean p1, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->c:Z

    if-eqz p1, :cond_7

    .line 84
    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settingslib/g$a;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/a;->a(Lcom/android/settingslib/g$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/widget/preference/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    if-eqz v0, :cond_0

    .line 4135
    iput-boolean p1, v0, Lcom/coloros/settings/widget/preference/a;->b:Z

    :cond_0
    return-void
.end method

.method public onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/a;->b()V

    .line 164
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorSwitchPreference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 105
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 106
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/a;->a(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a06b6

    .line 107
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1191
    iget-object v3, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 1195
    iget-boolean v3, v3, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 110
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_1
    iget v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->e:I

    if-lez v0, :cond_2

    const v0, 0x1020006

    .line 114
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 117
    iget v4, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->e:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 118
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->c:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0a0062

    .line 124
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 2191
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 2195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 131
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    const v0, 0x1020010

    .line 135
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 3191
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 3195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-eqz v0, :cond_6

    .line 138
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public performClick(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorSwitchPreference;->performClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4191
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 4195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/a;->a(Lcom/android/settingslib/g$a;)Z

    return-void

    .line 181
    :cond_0
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorSwitchPreference;->setEnabled(Z)V

    return-void
.end method
