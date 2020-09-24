.class public final Lcom/coloros/settings/widget/preference/a;
.super Ljava/lang/Object;
.source "ColorRestrictedPreferenceHelper.java"


# instance fields
.field public a:Z

.field b:Z

.field private final c:Landroid/content/Context;

.field private final d:Landroidx/preference/Preference;

.field private e:Lcom/android/settingslib/g$a;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V
    .locals 5

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/coloros/settings/widget/preference/a;->f:Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/coloros/settings/widget/preference/a;->b:Z

    .line 51
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/a;->c:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/coloros/settings/widget/preference/a;->d:Landroidx/preference/Preference;

    if-eqz p3, :cond_4

    .line 55
    sget-object p2, Lcom/android/settingslib/e$i;->RestrictedPreference:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    .line 58
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 60
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 61
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_0

    .line 62
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 67
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/coloros/settings/widget/preference/a;->f:Ljava/lang/String;

    .line 80
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 82
    iget p2, p1, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_3

    iget p1, p1, Landroid/util/TypedValue;->data:I

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move p3, v1

    :goto_2
    iput-boolean p3, p0, Lcom/coloros/settings/widget/preference/a;->b:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 94
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/a;->b:Z

    if-eqz v0, :cond_2

    const v0, 0x1020010

    .line 98
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1207ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    iget-boolean v1, p0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/a;->c:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/a;->a(Lcom/android/settingslib/g$a;)Z

    return-void
.end method

.method public final a()Z
    .locals 2

    .line 144
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/widget/preference/a;->e:Lcom/android/settingslib/g$a;

    invoke-static {v0, v1}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/settingslib/g$a;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 184
    :goto_0
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/a;->e:Lcom/android/settingslib/g$a;

    .line 186
    iget-boolean p1, p0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-eq p1, v2, :cond_1

    .line 187
    iput-boolean v2, p0, Lcom/coloros/settings/widget/preference/a;->a:Z

    move v0, v1

    .line 190
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/a;->d:Landroidx/preference/Preference;

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return v0
.end method

.method public final b()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/widget/preference/a;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
