.class public Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ColorQSBatteryPercentView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mCharging:Z

.field private mLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private updateContentDescription()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mContext:Landroid/content/Context;

    const v1, 0x7f11003b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mContext:Landroid/content/Context;

    const v2, 0x7f1100f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-boolean v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mCharging:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f110043

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mContext:Landroid/content/Context;

    const v7, 0x7f11003c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mLevel:I

    .line 96
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-virtual {v6, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mLevel:I

    .line 97
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 99
    :goto_0
    invoke-static {p0, v0, v1, v2}, Lcom/coloros/systemui/common/util/StatusBarUtils;->setContentDescription(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updatePercentText()V
    .locals 5

    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mLevel:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110719

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onAttachedToWindow()V

    .line 57
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 58
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 59
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mLevel:I

    .line 72
    iput-boolean p3, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mCharging:Z

    .line 73
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->updatePercentText()V

    .line 74
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->updateContentDescription()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getCommonNumFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSBatteryPercentView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    .line 65
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 66
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    return-void
.end method
