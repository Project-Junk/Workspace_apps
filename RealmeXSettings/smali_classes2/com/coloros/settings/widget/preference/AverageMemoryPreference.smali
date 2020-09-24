.class public Lcom/coloros/settings/widget/preference/AverageMemoryPreference;
.super Lcom/color/support/preference/ColorPreference;
.source "AverageMemoryPreference.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Landroid/widget/TextView;

.field public d:Landroid/view/View$OnClickListener;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->b:Z

    const v0, 0x7f0d0250

    .line 51
    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->setLayoutResource(I)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->setSelectable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->b:Z

    const p2, 0x7f0d0250

    .line 45
    invoke-virtual {p0, p2}, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->setLayoutResource(I)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->setSelectable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->b:Z

    const p2, 0x7f0d0250

    .line 39
    invoke-virtual {p0, p2}, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->setLayoutResource(I)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->e:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0740

    .line 94
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->c:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 96
    iget-boolean v1, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    const v0, 0x7f0a072a

    .line 105
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->f:Landroid/widget/TextView;

    .line 106
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 107
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/widget/preference/AverageMemoryPreference;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
