.class public Lcom/android/settings/accessibility/BalanceSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "BalanceSeekBarPreference.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/android/settings/accessibility/BalanceSeekBar;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0404a8

    const v1, 0x101008e

    .line 46
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->a:Landroid/content/Context;

    const p1, 0x7f0d0251

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const-string v0, "com.android.internal.R.id.seekbar"

    .line 56
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/BalanceSeekBar;

    iput-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->b:Lcom/android/settings/accessibility/BalanceSeekBar;

    const-string v0, "com.android.internal.R.id.icon"

    .line 57
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->c:Landroid/widget/ImageView;

    .line 1062
    iget-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->b:Lcom/android/settings/accessibility/BalanceSeekBar;

    if-eqz p1, :cond_0

    .line 1065
    iget-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->a:Landroid/content/Context;

    .line 1066
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x2

    const-string v2, "master_balance"

    .line 1065
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p1

    .line 1069
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->b:Lcom/android/settings/accessibility/BalanceSeekBar;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/BalanceSeekBar;->setMax(I)V

    .line 1070
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->b:Lcom/android/settings/accessibility/BalanceSeekBar;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x64

    invoke-virtual {v0, p1}, Lcom/android/settings/accessibility/BalanceSeekBar;->setProgress(I)V

    .line 1071
    iget-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->b:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/BalanceSeekBarPreference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/BalanceSeekBar;->setEnabled(Z)V

    :cond_0
    return-void
.end method
