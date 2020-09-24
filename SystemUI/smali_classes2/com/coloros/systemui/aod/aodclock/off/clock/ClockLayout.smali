.class public Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;
.super Landroid/widget/FrameLayout;
.source "ClockLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockLayout"


# instance fields
.field private mAlarmIntent:Landroid/app/PendingIntent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mClockDigitalType:I

.field private mClockMode:I

.field private mClockPage:I

.field private mClockPosition:I

.field private mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

.field private mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

.field private mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

.field private mClockTab:I

.field private mContext:Landroid/content/Context;

.field private mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;

.field private mDialClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;

.field private mGlobalClockType:I

.field private mHasRegisterReceiver:Z

.field private mIsDefaultTheme:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 69
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 282
    new-instance p2, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout$1;-><init>(Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;)V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportAod()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodClose()Z

    move-result p1

    if-nez p1, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->checkTheme()V

    .line 73
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mContext:Landroid/content/Context;

    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mAlarmManager:Landroid/app/AlarmManager;

    .line 74
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d003b

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a008d

    .line 75
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;

    const p1, 0x7f0a0081

    .line 76
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;

    const p1, 0x7f0a009e

    .line 77
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    const p1, 0x7f0a009f

    .line 78
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    const p1, 0x7f0a00b5

    .line 79
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    .line 80
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->registerAlarmBroadcast()V

    .line 81
    iget-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mIsDefaultTheme:Z

    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->initDefaultTheme()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->initGlobalTheme()V

    :cond_1
    :goto_0
    return-void
.end method

.method private addDefaultClock(Z)V
    .locals 2

    .line 151
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->checkStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;

    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mIsDefaultTheme:Z

    invoke-virtual {v0, p1, p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->updateTime(ZZ)V

    return-void
.end method

.method private addDialClock()V
    .locals 2

    .line 182
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->checkStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockPosition:I

    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mIsDefaultTheme:Z

    invoke-virtual {v0, v1, p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->initClock(IZ)V

    return-void
.end method

.method private addGlobalClock(Z)V
    .locals 2

    .line 168
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->checkStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;

    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mIsDefaultTheme:Z

    invoke-virtual {v0, p1, p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->updateTime(ZZ)V

    return-void
.end method

.method private addHorizontalOneClock(I)V
    .locals 2

    .line 206
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->checkStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->setVisibility(I)V

    .line 214
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->refreshTime(I)V

    return-void
.end method

.method private addHorizontalTwoClock(I)V
    .locals 2

    .line 218
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->checkStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->setVisibility(I)V

    .line 226
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->refreshTime(I)V

    return-void
.end method

.method private addVerticalOneClock(I)V
    .locals 2

    .line 194
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->checkStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->setVisibility(I)V

    .line 202
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->refreshTime(I)V

    return-void
.end method

.method private cancelAlarmIntent()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mAlarmIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private checkStatus()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private checkTheme()V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mGlobalClockType:I

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkTheme: mGlobalClockType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mGlobalClockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aod"

    const-string v2, "ClockLayout"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mGlobalClockType:I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mIsDefaultTheme:Z

    return-void
.end method

.method private initClockData(I)V
    .locals 2

    .line 90
    div-int/lit16 v0, p1, 0x3e8

    if-nez v0, :cond_0

    const/16 p1, 0x3e8

    .line 93
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

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockTab:I

    .line 94
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockPage:I

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockDigitalType:I

    .line 96
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockPosition:I

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initClockData: clockMode is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Aod"

    const-string v0, "ClockLayout"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initDefaultTheme()V
    .locals 4

    .line 107
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 108
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockPage:I

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->addDefaultClock(Z)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodClockMode()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockMode:I

    .line 111
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockMode:I

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->initClockData(I)V

    .line 112
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockTab:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->addDialClock()V

    goto :goto_0

    .line 115
    :cond_2
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockDigitalType:I

    if-nez v0, :cond_4

    .line 116
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockPage:I

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-direct {p0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->addDefaultClock(Z)V

    goto :goto_0

    :cond_4
    if-ne v0, v2, :cond_5

    .line 118
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockMode:I

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->addVerticalOneClock(I)V

    goto :goto_0

    :cond_5
    if-ne v0, v3, :cond_6

    .line 120
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockMode:I

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->addHorizontalOneClock(I)V

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    if-ne v0, v3, :cond_7

    .line 122
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockMode:I

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->addHorizontalTwoClock(I)V

    goto :goto_0

    .line 124
    :cond_7
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockPage:I

    if-ne v0, v2, :cond_8

    move v1, v2

    :cond_8
    invoke-direct {p0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->addDefaultClock(Z)V

    :goto_0
    return-void
.end method

.method private initGlobalTheme()V
    .locals 3

    .line 131
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mGlobalClockType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->addGlobalClock(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 134
    invoke-direct {p0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->addGlobalClock(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 136
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->addDialClock()V

    goto :goto_0

    .line 138
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->initDefaultTheme()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClockLayoutDestroy()V
    .locals 3

    const-string v0, "Aod"

    const-string v1, "ClockLayout"

    const-string v2, "onClockLayoutDestroy: "

    .line 143
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->cancelAlarmIntent()V

    .line 145
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mHasRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public registerAlarmBroadcast()V
    .locals 6

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.aod.UPDATE_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 276
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 278
    iput-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mHasRegisterReceiver:Z

    .line 279
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mAlarmIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setExactTimeForAlarm(J)V
    .locals 3

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExactTimeForAlarm: timeToAlarm is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aod"

    const-string v2, "ClockLayout"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mAlarmIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public updateClock()V
    .locals 5

    .line 246
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mIsDefaultTheme:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 247
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockTab:I

    if-ne v0, v2, :cond_0

    .line 248
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->updateTime()V

    goto :goto_0

    .line 250
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockDigitalType:I

    if-nez v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockPage:I

    if-ne v1, v4, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v3, v4}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->updateTime(ZZ)V

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    .line 253
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleVerticalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockMode:I

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleVerticalOne;->refreshTime(I)V

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    .line 255
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalOne:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockMode:I

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalOne;->refreshTime(I)V

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_8

    .line 257
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockStyleHorizontalTwo:Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mClockMode:I

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/ClockStyleHorizontalTwo;->refreshTime(I)V

    goto :goto_0

    .line 261
    :cond_5
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mGlobalClockType:I

    if-ne v0, v4, :cond_6

    .line 262
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;

    invoke-virtual {v0, v3, v3}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->updateTime(ZZ)V

    goto :goto_0

    :cond_6
    if-ne v0, v2, :cond_7

    .line 264
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDefaultClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;

    invoke-virtual {v0, v4, v3}, Lcom/coloros/systemui/aod/aodclock/off/clock/DefaultClockView;->updateTime(ZZ)V

    goto :goto_0

    :cond_7
    if-ne v0, v1, :cond_8

    .line 266
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->mDialClockView:Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/clock/DialClockView;->updateTime()V

    .line 269
    :cond_8
    :goto_0
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/util/CalendarUtils;->getNextRtcTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/clock/ClockLayout;->setExactTimeForAlarm(J)V

    return-void
.end method
