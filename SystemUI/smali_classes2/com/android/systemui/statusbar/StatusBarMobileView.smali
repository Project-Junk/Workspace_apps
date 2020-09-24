.class public Lcom/android/systemui/statusbar/StatusBarMobileView;
.super Landroid/widget/FrameLayout;
.source "StatusBarMobileView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBarMobileView"


# instance fields
.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mIn:Landroid/widget/ImageView;

.field private mInoutContainer:Landroid/view/View;

.field private mMobile:Landroid/widget/ImageView;

.field private mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

.field private mMobileGroup:Landroid/widget/LinearLayout;

.field private mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileRoamingSpace:Landroid/view/View;

.field private mMobileType:Landroid/widget/ImageView;

.field private mOut:Landroid/widget/ImageView;

.field private mSlot:Ljava/lang/String;

.field private mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

.field private mVisibleState:I

.field private mVolte:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    return-void
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarMobileView;
    .locals 2

    .line 67
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d01fb

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setSlot(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->init()V

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setVisibleState(I)V

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 106
    new-instance v0, Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    const v0, 0x7f0a038e

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0394

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    const v0, 0x7f0a039a

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    const v0, 0x7f0a0392

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    const v0, 0x7f0a0393

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoamingSpace:Landroid/view/View;

    const v0, 0x7f0a038f

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mIn:Landroid/widget/ImageView;

    const v0, 0x7f0a0391

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mOut:Landroid/widget/ImageView;

    const v0, 0x7f0a02d8

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mInoutContainer:Landroid/view/View;

    const v0, 0x7f0a039b

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 117
    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->initDotView()V

    return-void
.end method

.method private initDotView()V
    .locals 4

    .line 124
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 128
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v0, 0x800013

    .line 129
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initViewState()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    invoke-virtual {v0, v3}, Lcom/android/settingslib/graph/SignalDrawable;->setLevel(I)Z

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-lez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoamingSpace:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mIn:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mOut:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mInoutContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    move v3, v1

    goto :goto_7

    :cond_7
    :goto_6
    move v3, v2

    :goto_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    if-lez v0, :cond_8

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 190
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    return-void
.end method

.method private needFixInVisibleState()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private needFixVisibleState()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z
    .locals 6

    .line 197
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v4

    .line 202
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    if-eq v1, v5, :cond_2

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    invoke-virtual {v1, v5}, Lcom/android/settingslib/graph/SignalDrawable;->setLevel(I)Z

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-eq v1, v5, :cond_6

    .line 206
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    or-int/2addr v0, v1

    .line 207
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-eqz v1, :cond_5

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 212
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    if-eqz v5, :cond_7

    move v5, v4

    goto :goto_5

    :cond_7
    move v5, v3

    :goto_5
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoamingSpace:Landroid/view/View;

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    if-eqz v5, :cond_8

    move v5, v4

    goto :goto_6

    :cond_8
    move v5, v3

    :goto_6
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mIn:Landroid/widget/ImageView;

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    if-eqz v5, :cond_9

    move v5, v4

    goto :goto_7

    :cond_9
    move v5, v3

    :goto_7
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mOut:Landroid/widget/ImageView;

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    if-eqz v5, :cond_a

    move v5, v4

    goto :goto_8

    :cond_a
    move v5, v3

    :goto_8
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mInoutContainer:Landroid/view/View;

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    if-nez v5, :cond_c

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    if-eqz v5, :cond_b

    goto :goto_9

    :cond_b
    move v5, v3

    goto :goto_a

    :cond_c
    :goto_9
    move v5, v4

    :goto_a
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    if-eq v1, v5, :cond_e

    .line 224
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    if-eqz v1, :cond_d

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 228
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    :cond_e
    :goto_b
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    if-ne v1, v3, :cond_10

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    if-ne v1, v3, :cond_10

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    if-eq v1, v3, :cond_f

    goto :goto_c

    :cond_f
    move v2, v4

    :cond_10
    :goto_c
    or-int/2addr v0, v2

    .line 236
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return v0
.end method


# virtual methods
.method public applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getVisibility()I

    move-result p1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 137
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    goto :goto_1

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    if-nez v2, :cond_2

    .line 141
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->initViewState()V

    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->requestLayout()V

    .line 151
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->needFixVisibleState()Z

    move-result p1

    const-string v0, " height="

    const-string v2, "StatusBarMobileView"

    if-eqz p1, :cond_5

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fix VisibleState width="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getWidth()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    .line 154
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setVisibility(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->requestLayout()V

    goto :goto_2

    .line 156
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->needFixInVisibleState()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fix InVisibleState width="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 158
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    const/4 p1, 0x4

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setVisibility(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->requestLayout()V

    :cond_6
    :goto_2
    return-void
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getTranslationX()F

    move-result v0

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getTranslationY()F

    move-result p0

    .line 99
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 100
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 101
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 102
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 323
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-object p0
.end method

.method public getVisibleState()I
    .locals 0

    .line 318
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    return p0
.end method

.method public isIconVisible()Z
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    return p0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2

    .line 242
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 246
    invoke-virtual {v1, p2}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 245
    invoke-virtual {v0, p2}, Lcom/android/settingslib/graph/SignalDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 247
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 248
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mIn:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 249
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mOut:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 250
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 251
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 252
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 253
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 254
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    return-void
.end method

.method public setDecorColor(I)V
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 4

    .line 268
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 272
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 273
    invoke-virtual {v3, v1}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 272
    invoke-virtual {v2, v1}, Lcom/android/settingslib/graph/SignalDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 274
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mIn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 275
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mOut:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 276
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 278
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 279
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setVisibleState(IZ)V
    .locals 2

    .line 294
    iget p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    if-ne p1, p2, :cond_0

    return-void

    .line 298
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    .line 310
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarMobileView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
