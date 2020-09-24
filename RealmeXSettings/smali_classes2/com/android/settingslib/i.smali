.class public final Lcom/android/settingslib/i;
.super Ljava/lang/Object;
.source "RestrictedPreferenceHelper.java"


# instance fields
.field public a:Z

.field b:Z

.field private final c:Landroid/content/Context;

.field private final d:Landroidx/preference/Preference;

.field private e:Lcom/android/settingslib/g$a;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/settingslib/i;->f:Ljava/lang/String;

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcom/android/settingslib/i;->b:Z

    .line 47
    iput-object p1, p0, Lcom/android/settingslib/i;->c:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settingslib/i;->d:Landroidx/preference/Preference;

    if-eqz p3, :cond_5

    .line 51
    sget-object p2, Lcom/android/settingslib/e$i;->RestrictedPreference:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 53
    sget p3, Lcom/android/settingslib/e$i;->RestrictedPreference_userRestriction:I

    .line 54
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 56
    iget v2, p3, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 57
    iget v2, p3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    .line 58
    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_1

    .line 63
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/settingslib/i;->f:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/android/settingslib/i;->c:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settingslib/i;->f:Ljava/lang/String;

    .line 66
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 65
    invoke-static {p1, p3, v2}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 67
    iput-object v0, p0, Lcom/android/settingslib/i;->f:Ljava/lang/String;

    return-void

    .line 71
    :cond_3
    sget p1, Lcom/android/settingslib/e$i;->RestrictedPreference_useAdminDisabledSummary:I

    .line 72
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 74
    iget p2, p1, Landroid/util/TypedValue;->type:I

    const/16 p3, 0x12

    if-ne p2, p3, :cond_4

    iget p1, p1, Landroid/util/TypedValue;->data:I

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/android/settingslib/i;->b:Z

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 85
    iget-boolean v0, p0, Lcom/android/settingslib/i;->a:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/android/settingslib/i;->b:Z

    if-eqz v0, :cond_2

    const v0, 0x1020010

    .line 89
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settingslib/e$h;->disabled_by_admin_summary_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 93
    iget-boolean v1, p0, Lcom/android/settingslib/i;->a:Z

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/settingslib/i;->c:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/settingslib/i;->a(Lcom/android/settingslib/g$a;)Z

    return-void
.end method

.method public final a()Z
    .locals 2

    .line 113
    iget-boolean v0, p0, Lcom/android/settingslib/i;->a:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/i;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/i;->e:Lcom/android/settingslib/g$a;

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

    .line 150
    :goto_0
    iput-object p1, p0, Lcom/android/settingslib/i;->e:Lcom/android/settingslib/g$a;

    .line 152
    iget-boolean p1, p0, Lcom/android/settingslib/i;->a:Z

    if-eq p1, v2, :cond_1

    .line 153
    iput-boolean v2, p0, Lcom/android/settingslib/i;->a:Z

    move v0, v1

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/i;->d:Landroidx/preference/Preference;

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return v0
.end method

.method public final b()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/settingslib/i;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/i;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
