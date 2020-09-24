.class public Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;
.super Landroid/widget/FrameLayout;
.source "PreviewClockLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewClockLayout"


# instance fields
.field private childArrays:[Landroid/view/View;

.field private mAodClockModeObserver:Landroid/database/ContentObserver;

.field private mClockDigitalType:I

.field private mClockMode:I

.field private mClockPage:I

.field private mClockPosition:I

.field private mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

.field private mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

.field private mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

.field private mClockTab:I

.field private mContext:Landroid/content/Context;

.field private mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;

.field private mDialClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;

.field private mDp190:I

.field private mDp205:I

.field private final mTimeListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 68
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x5

    .line 46
    new-array p2, p2, [Landroid/view/View;

    iget-object p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    iget-object p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;

    const/4 v0, 0x1

    aput-object p3, p2, v0

    iget-object p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    const/4 v0, 0x2

    aput-object p3, p2, v0

    iget-object p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    const/4 v0, 0x3

    aput-object p3, p2, v0

    iget-object p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    const/4 v0, 0x4

    aput-object p3, p2, v0

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->childArrays:[Landroid/view/View;

    .line 57
    new-instance p2, Lcom/coloros/systemui/aod/aodclock/settings/clock/-$$Lambda$PreviewClockLayout$lpG9U1t6SMcAHnCTbZmuprKgSHU;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/-$$Lambda$PreviewClockLayout$lpG9U1t6SMcAHnCTbZmuprKgSHU;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;)V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mTimeListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 204
    new-instance p2, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout$1;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout$1;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mAodClockModeObserver:Landroid/database/ContentObserver;

    .line 69
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mContext:Landroid/content/Context;

    const-string p2, "Setting_AodClockMode"

    const/16 p3, 0x3e8

    .line 70
    invoke-static {p1, p2, p3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockMode:I

    .line 72
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x433e0000    # 190.0f

    invoke-static {p1, p2}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDp190:I

    .line 73
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x434d0000    # 205.0f

    invoke-static {p1, p2}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDp205:I

    .line 74
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockMode:I

    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->initClockData(I)V

    .line 75
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->showChildView()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockMode:I

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->initClockData(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->showChildView()V

    return-void
.end method

.method private addChildView(Landroid/view/View;II)V
    .locals 1

    .line 161
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x1

    .line 162
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 163
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initClockData(I)V
    .locals 2

    .line 79
    div-int/lit16 v0, p1, 0x3e8

    if-nez v0, :cond_0

    const/16 p1, 0x3e8

    .line 82
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockTab:I

    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockPage:I

    .line 84
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockDigitalType:I

    .line 85
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockPosition:I

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initClockData: clockMode is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Aod"

    const-string v0, "PreviewClockLayout"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$03QUN_Hd9ioxkU8A5k7Co1w8b6I(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->refreshTime()V

    return-void
.end method

.method private refreshTime()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mContext:Landroid/content/Context;

    const-string v1, "Setting_AodPreviewClockMode"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 169
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockTab:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 170
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockDigitalType:I

    if-ne v1, v2, :cond_0

    .line 171
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->refreshTime(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 173
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->refreshTime(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 175
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->refreshTime(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showChildView()V
    .locals 5

    .line 104
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockTab:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 105
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;

    .line 107
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->childArrays:[Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;

    aput-object v2, v0, v1

    .line 108
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDp190:I

    invoke-direct {p0, v2, v0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->addChildView(Landroid/view/View;II)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->switchChildVisiable(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockPosition:I

    invoke-virtual {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->updateClock(IZ)V

    goto/16 :goto_1

    .line 112
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockDigitalType:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 113
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    if-nez v0, :cond_2

    .line 114
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    .line 115
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->childArrays:[Landroid/view/View;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    aput-object v2, v0, v1

    .line 116
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDp190:I

    invoke-direct {p0, v2, v3, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->addChildView(Landroid/view/View;II)V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->switchChildVisiable(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockMode:I

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->refreshTime(I)V

    goto/16 :goto_1

    :cond_3
    if-ne v0, v2, :cond_5

    .line 121
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    if-nez v0, :cond_4

    .line 122
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->childArrays:[Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    aput-object v1, v0, v2

    .line 124
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDp190:I

    invoke-direct {p0, v1, v3, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->addChildView(Landroid/view/View;II)V

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->switchChildVisiable(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockMode:I

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->refreshTime(I)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 129
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    if-nez v0, :cond_6

    .line 130
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    .line 131
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->childArrays:[Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    aput-object v1, v0, v2

    .line 132
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDp205:I

    invoke-direct {p0, v1, v3, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->addChildView(Landroid/view/View;II)V

    .line 134
    :cond_6
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->switchChildVisiable(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockMode:I

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->refreshTime(I)V

    goto :goto_1

    .line 137
    :cond_7
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;

    if-nez v0, :cond_8

    .line 138
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;

    .line 139
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->childArrays:[Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;

    aput-object v2, v0, v4

    .line 140
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDp190:I

    invoke-direct {p0, v2, v0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->addChildView(Landroid/view/View;II)V

    .line 142
    :cond_8
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->switchChildVisiable(Landroid/view/View;)V

    .line 143
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockPage:I

    if-ne v0, v4, :cond_9

    .line 144
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0804e2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_9
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0804ba

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    :goto_0
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockPage:I

    if-ne p0, v4, :cond_a

    move v1, v4

    :cond_a
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->updateTime(Z)V

    :goto_1
    return-void
.end method

.method private switchChildVisiable(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 151
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->childArrays:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 152
    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    if-ne v2, p1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 156
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDialClockView;->clear()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->clear()V

    .line 199
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    if-eqz p0, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->clear()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$0$PreviewClockLayout(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 57
    new-instance p1, Lcom/coloros/systemui/aod/aodclock/settings/clock/-$$Lambda$PreviewClockLayout$03QUN_Hd9ioxkU8A5k7Co1w8b6I;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/-$$Lambda$PreviewClockLayout$03QUN_Hd9ioxkU8A5k7Co1w8b6I;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;)V

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mAodClockModeObserver:Landroid/database/ContentObserver;

    const-string v2, "Setting_AodPreviewClockMode"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerAsSecure(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/ContentObserver;)V

    .line 93
    invoke-static {}, Lcom/coloros/systemui/common/receiver/TimeReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/TimeReceiver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mTimeListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/receiver/TimeReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 98
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 99
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mAodClockModeObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->unregister(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 100
    invoke-static {}, Lcom/coloros/systemui/common/receiver/TimeReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/TimeReceiver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mTimeListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/receiver/TimeReceiver;->removeListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    return-void
.end method

.method public refreshVerticalPreview()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewDefaultClockView;->refreshTimeByHourFormat()V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->refreshTimeByHourFormat()V

    .line 187
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    if-eqz p0, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->refreshTimeByHourFormat()V

    :cond_2
    return-void
.end method
