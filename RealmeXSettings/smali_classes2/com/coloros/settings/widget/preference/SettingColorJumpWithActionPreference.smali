.class public Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;
.super Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
.source "SettingColorJumpWithActionPreference.java"


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field private final b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;->a:Landroid/view/View$OnClickListener;

    .line 36
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;->a:Landroid/view/View$OnClickListener;

    .line 31
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;->a:Landroid/view/View$OnClickListener;

    .line 46
    iput-object p2, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a014e

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v1, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;->a:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v1, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;->b:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f0a0209

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
