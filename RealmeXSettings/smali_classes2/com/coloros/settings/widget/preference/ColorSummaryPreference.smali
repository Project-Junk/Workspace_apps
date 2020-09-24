.class public Lcom/coloros/settings/widget/preference/ColorSummaryPreference;
.super Lcom/android/settings/SummaryPreference;
.source "ColorSummaryPreference.java"


# instance fields
.field public a:Z

.field public b:Landroid/widget/TextView;

.field public c:Landroid/view/View$OnClickListener;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SummaryPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->a:Z

    const p1, 0x7f0d0127

    .line 36
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->d:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SummaryPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0740

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->b:Landroid/widget/TextView;

    .line 68
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 69
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSummaryPreference;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
