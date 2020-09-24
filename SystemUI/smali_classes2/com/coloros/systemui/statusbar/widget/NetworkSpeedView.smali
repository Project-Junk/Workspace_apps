.class public Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;
.super Landroid/widget/FrameLayout;
.source "NetworkSpeedView.java"


# static fields
.field private static final B_S:Ljava/lang/String; = "B/s"

.field private static final KB_S:Ljava/lang/String; = "KB/s"

.field private static final NETWORK_SPEED_SPIT_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NetworkSpeedView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultBoldFont:Landroid/graphics/Typeface;

.field private mDefaultFont:Landroid/graphics/Typeface;

.field private mEarSpeedRoot:Landroid/view/View;

.field private mSpeed:J

.field private mSpeedNumber:Landroid/widget/TextView;

.field private mSpeedUnit:Landroid/widget/TextView;

.field private mUtils:Lcom/color/util/ColorUnitConversionUtils;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mContext:Landroid/content/Context;

    .line 59
    new-instance p1, Lcom/color/util/ColorUnitConversionUtils;

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/color/util/ColorUnitConversionUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mUtils:Lcom/color/util/ColorUnitConversionUtils;

    const-string p1, "system/fonts/Roboto-Regular.ttf"

    .line 60
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mDefaultFont:Landroid/graphics/Typeface;

    const-string p1, "system/fonts/Roboto-Bold.ttf"

    .line 61
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mDefaultBoldFont:Landroid/graphics/Typeface;

    return-void
.end method

.method private formatLocalSpeed([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 158
    iget-wide v0, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeed:J

    const/16 v2, 0x400

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 159
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    iget-object v4, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v1, v4}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v4, "0"

    invoke-direct {v0, v4, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    const/4 v1, 0x0

    .line 161
    iget-wide v4, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeed:J

    div-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    const/4 p0, 0x1

    const-string v0, "KB/s"

    .line 162
    aput-object v0, p1, p0

    :cond_0
    return-object p1
.end method

.method private formatSpeed(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 7

    const-string v0, " "

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkSpeedView"

    if-eqz p1, :cond_4

    .line 113
    array-length v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x1

    .line 118
    aget-object v2, p1, v1

    .line 121
    :try_start_0
    aget-object v3, p1, v1

    const-string v4, "B/s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 122
    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/16 v5, 0x400

    int-to-double v5, v5

    div-double/2addr v2, v5

    const-string p0, "KB/s"

    goto :goto_0

    .line 125
    :cond_1
    aget-object v3, p1, v4

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    move-wide v2, v5

    .line 132
    :goto_0
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v5, Ljava/text/DecimalFormatSymbols;

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v5, v6}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, p2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    if-nez p3, :cond_2

    .line 134
    sget-object p2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    goto :goto_1

    .line 136
    :cond_2
    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 139
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 140
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/16 p3, 0x64

    int-to-double v5, p3

    cmpl-double p3, v2, v5

    if-ltz p3, :cond_3

    const/4 p3, 0x3

    .line 141
    invoke-virtual {p2, v4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    goto :goto_2

    :cond_3
    const/4 p3, 0x4

    .line 143
    invoke-virtual {p2, v4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    .line 145
    :goto_2
    aput-object p0, p1, v1

    return-object p1

    :catch_0
    move-exception p2

    .line 128
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkSpeed display exception "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->formatLocalSpeed([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 114
    :cond_4
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateNetworkSpeed error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private updateNetworkSpeed(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 79
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeedNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 84
    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeedUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 88
    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_2
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mContext:Landroid/content/Context;

    const v0, 0x7f110083

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mContext:Landroid/content/Context;

    const v1, 0x7f1100f7

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {p0, p2, v0, p1}, Lcom/coloros/systemui/common/util/StatusBarUtils;->setContentDescription(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getSpeedUnit()Landroid/widget/TextView;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeedUnit:Landroid/widget/TextView;

    return-object p0
.end method

.method public getUnlimitedViewWidth()I
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeedNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeedUnit:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeedNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeedUnit:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeedUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p0

    cmpl-float v1, v0, p0

    if-lez v1, :cond_0

    float-to-int p0, v0

    return p0

    :cond_0
    float-to-int p0, p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$speedChanged$0$NetworkSpeedView(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->setVisibility(I)V

    .line 103
    invoke-direct {p0, p2, p3}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->updateNetworkSpeed(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 66
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0232

    .line 68
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mEarSpeedRoot:Landroid/view/View;

    const v0, 0x7f0a0411

    .line 69
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeedNumber:Landroid/widget/TextView;

    const v0, 0x7f0a05fe

    .line 70
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeedUnit:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeedNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mDefaultBoldFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeedUnit:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mDefaultBoldFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 1

    .line 169
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeedNumber:Landroid/widget/TextView;

    invoke-static {p3, p2, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeedUnit:Landroid/widget/TextView;

    invoke-static {p3, p0, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public speedChanged(JI)V
    .locals 1

    .line 97
    iput-wide p1, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mSpeed:J

    .line 98
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->mUtils:Lcom/color/util/ColorUnitConversionUtils;

    invoke-virtual {v0, p1, p2}, Lcom/color/util/ColorUnitConversionUtils;->getSpeedValue(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "##0.00"

    const/4 v0, 0x1

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->formatSpeed(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p2

    .line 101
    new-instance v0, Lcom/coloros/systemui/statusbar/widget/-$$Lambda$NetworkSpeedView$Ecu1h6Gx9fsAnDH1ha0qRmoK5_k;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/coloros/systemui/statusbar/widget/-$$Lambda$NetworkSpeedView$Ecu1h6Gx9fsAnDH1ha0qRmoK5_k;-><init>(Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
