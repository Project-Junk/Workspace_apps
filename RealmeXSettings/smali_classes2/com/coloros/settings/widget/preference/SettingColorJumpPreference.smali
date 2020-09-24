.class public Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
.super Lcom/color/support/preference/ColorJumpPreference;
.source "SettingColorJumpPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/widget/preference/SettingColorJumpPreference$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private i:Z

.field public j:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorJumpPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/color/support/preference/ColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 80
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->k:Landroid/content/Context;

    .line 81
    sget-object v0, Lcom/android/settings/g$a;->SettingColorJumpPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 83
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->j:Ljava/lang/String;

    const/4 p2, 0x1

    .line 84
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a:Z

    const/4 v0, 0x4

    .line 85
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b:Z

    .line 86
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b:Z

    xor-int/2addr p2, v0

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->c:Z

    const/4 p2, 0x2

    .line 87
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->i:Z

    .line 88
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 169
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorJumpPreference;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected a(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 102
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->i:Z

    const v1, 0x7f06012b

    const v2, 0x1020016

    if-eqz v0, :cond_0

    const v0, 0x1020010

    .line 103
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->m:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->l:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060121

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    :cond_0
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06012c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/coloros/settings/widget/preference/SettingColorJumpPreference$a;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->n:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference$a;

    .line 202
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->notifyChanged()V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->c:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 156
    :cond_0
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 185
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->i:Z

    .line 186
    iget-boolean p1, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->i:Z

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->l:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06012d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->m:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060128

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 173
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorJumpPreference;->b(I)V

    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d()I
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/color/support/preference/ColorJumpPreference;->d()I

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/CharSequence;)V
    .locals 0

    .line 162
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorJumpPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroidx/preference/PreferenceViewHolder;)V

    .line 96
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->n:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference$a;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference$a;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 3

    .line 207
    invoke-super {p0}, Lcom/color/support/preference/ColorJumpPreference;->onClick()V

    .line 208
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "dcs_event_id"

    .line 210
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "1"

    .line 213
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v2, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->k:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setSummary(I)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->k:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
