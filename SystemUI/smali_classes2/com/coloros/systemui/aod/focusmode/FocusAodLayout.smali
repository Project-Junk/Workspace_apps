.class public Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;
.super Landroid/widget/RelativeLayout;
.source "FocusAodLayout.java"

# interfaces
.implements Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;


# static fields
.field private static final RAMLESS_CIRCLE_PROGRESS_VIEW_HEIGHT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "FocusAodLayout"


# instance fields
.field private final mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

.field private mCircleProgressView:Lcom/coloros/systemui/aod/focusmode/CircleProgressView;

.field private mClockAlarmManager:Landroid/app/AlarmManager;

.field private mClockIntent:Landroid/app/PendingIntent;

.field private mContext:Landroid/content/Context;

.field private mDurationMillis:J

.field private mFirstSetDozeDelay:I

.field private mFirstShowFromSleep:Z

.field private mFirstTimeInAod:Z

.field private mHadFocusMillis:J

.field private mHandler:Landroid/os/Handler;

.field private mLastShowPosition:I

.field private mLastUpdateMillis:J

.field private mNextUpdateMillis:J

.field private mSetDozeDelay:I

.field private mStop:Z

.field private final mSuspendSetRunnable:Ljava/lang/Runnable;

.field private mTextClock:Landroid/widget/TextClock;

.field private mTopOffset:I

.field private mTvDate:Landroid/widget/TextView;

.field private mTvFocusStop:Landroid/widget/TextView;

.field private mTvFocusTime:Landroid/widget/TextView;

.field private mUpdateCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 94
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mFirstShowFromSleep:Z

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mTopOffset:I

    .line 219
    new-instance p1, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout$1;-><init>(Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;)V

    iput-object p1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    new-instance p1, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout$2;-><init>(Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;)V

    iput-object p1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mSuspendSetRunnable:Ljava/lang/Runnable;

    .line 95
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->initAodData()V

    .line 98
    invoke-direct {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->initFocusData()V

    .line 99
    invoke-direct {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->initView()V

    .line 100
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->registerAlarmBroadcast()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->setClockAlarm()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initAodData()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    iget-object v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    const/16 v0, 0x7d0

    .line 108
    iput v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mFirstSetDozeDelay:I

    const/16 v0, 0x3e8

    .line 109
    iput v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mSetDozeDelay:I

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mUpdateCount:I

    .line 112
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v2, v0, v1

    .line 115
    iput v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mTopOffset:I

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLockIconHeight-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  mStatusBarHeight-->"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  mTopOffset-->"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mTopOffset:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Aod"

    const-string v1, "FocusAodLayout"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initFocusData()V
    .locals 8

    const/4 v0, 0x0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "content://com.coloros.focusmode.provider/focus_data"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "duration"

    .line 129
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 130
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mDurationMillis:J

    const-string v1, "had_focus_millis"

    .line 132
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 133
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mHadFocusMillis:J

    const-string v1, "stop"

    .line 135
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 136
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mStop:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 139
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 142
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_3
    throw p0
.end method

.method private initView()V
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f0d00bc

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a05e2

    .line 149
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mTvFocusTime:Landroid/widget/TextView;

    const v0, 0x7f0a05e1

    .line 150
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mTvFocusStop:Landroid/widget/TextView;

    const v0, 0x7f0a05dc

    .line 151
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mTvDate:Landroid/widget/TextView;

    const v0, 0x7f0a05dd

    .line 152
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mTextClock:Landroid/widget/TextClock;

    const v0, 0x7f0a0166

    .line 153
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;

    iput-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mCircleProgressView:Lcom/coloros/systemui/aod/focusmode/CircleProgressView;

    .line 155
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a035d

    .line 156
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 157
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/16 v3, 0x32

    .line 158
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 159
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a04c0

    .line 161
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 162
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v3, 0x1f4

    .line 163
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 164
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/16 v4, 0x2a

    const/4 v5, 0x0

    .line 165
    invoke-virtual {v2, v5, v4, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 166
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mCircleProgressView:Lcom/coloros/systemui/aod/focusmode/CircleProgressView;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 169
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 171
    iget-object v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mCircleProgressView:Lcom/coloros/systemui/aod/focusmode/CircleProgressView;

    invoke-virtual {v2, v0}, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a035b

    .line 173
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 174
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/16 v3, 0x28

    .line 175
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mTvFocusTime:Landroid/widget/TextView;

    const/high16 v2, 0x42100000    # 36.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f0a05f1

    .line 180
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a05f0

    .line 181
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$TBF1fQNWwBd9kgH6XL2efb3h6VE(Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->updateContentAndPosition()V

    return-void
.end method

.method private setClockAlarm()V
    .locals 4

    .line 200
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mStop:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/util/CalendarUtils;->getNextRtcTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mNextUpdateMillis:J

    .line 202
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mClockAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mNextUpdateMillis:J

    iget-object p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mClockIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->refreshFocusTime()V

    .line 205
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mClockAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mNextUpdateMillis:J

    iget-object p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mClockIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method private unregisterAodBroadcast()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mClockAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mClockIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateContentAndPosition()V
    .locals 8

    .line 254
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result v0

    .line 256
    iget v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mUpdateCount:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const/4 v5, 0x3

    if-eqz v0, :cond_2

    .line 257
    iget-object v6, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coloros/systemui/aod/common/AodManager;->getScreenState()I

    move-result v6

    if-eq v6, v5, :cond_1

    goto :goto_1

    :cond_1
    move v6, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v3

    :goto_2
    if-eqz v1, :cond_3

    if-nez v6, :cond_4

    .line 258
    :cond_3
    iget-boolean v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mFirstShowFromSleep:Z

    if-eqz v1, :cond_9

    .line 259
    :cond_4
    iget-object v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/common/AodManager;->getNextPosition()I

    move-result v1

    .line 260
    :goto_3
    iget v6, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mLastShowPosition:I

    sub-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_5

    .line 261
    iget-object v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/common/AodManager;->getNextPosition()I

    move-result v1

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 264
    iget-boolean v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mFirstShowFromSleep:Z

    if-eqz v2, :cond_6

    .line 265
    iget-object v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/coloros/systemui/aod/common/AodManager;->getNextFocusPosition(I)I

    move-result v1

    .line 266
    iput v4, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mLastShowPosition:I

    goto :goto_4

    .line 268
    :cond_6
    iget-object v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/coloros/systemui/aod/common/AodManager;->getNextFocusPosition(I)I

    move-result v2

    .line 269
    iput v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mLastShowPosition:I

    move v1, v2

    .line 271
    :goto_4
    iget v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mTopOffset:I

    if-ge v1, v2, :cond_7

    move v1, v2

    .line 272
    :cond_7
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->updateNextPosition(I)V

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateContentAndPosition: position = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Aod"

    const-string v7, "FocusAodLayout"

    invoke-static {v6, v7, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    const/4 v2, 0x4

    .line 276
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->updateAodDozeStateAndStart(I)V

    .line 277
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSAodManager;

    move-result-object v2

    iget-object v6, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, v1}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->updateFocusAodArea(Landroid/content/Context;I)V

    .line 279
    :cond_8
    iput-boolean v4, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mFirstShowFromSleep:Z

    .line 282
    :cond_9
    invoke-virtual {p0, v5}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->updateAodDozeStateAndStart(I)V

    .line 283
    iget v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mUpdateCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mUpdateCount:I

    .line 285
    invoke-direct {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->updateView()V

    if-eqz v0, :cond_a

    const/high16 v0, 0x3f800000    # 1.0f

    .line 288
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->setAlpha(F)V

    .line 291
    :cond_a
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->setAodSuspendState()V

    return-void
.end method

.method private updateView()V
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mTvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/focusmode/DateUtils;->dateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mTextClock:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->refresh()V

    .line 297
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mTvFocusTime:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mHadFocusMillis:J

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-wide v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mCircleProgressView:Lcom/coloros/systemui/aod/focusmode/CircleProgressView;

    iget-wide v3, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mHadFocusMillis:J

    long-to-float v3, v3

    long-to-float v0, v0

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->setProgress(F)V

    .line 301
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mStop:Z

    if-nez v0, :cond_1

    .line 302
    iget-object p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mTvFocusStop:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 304
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mTvFocusStop:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hideClock()V
    .locals 1

    const/16 v0, 0x8

    .line 345
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 346
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->updateAodDozeStateAndStart(I)V

    return-void
.end method

.method public onFocusClockLayoutDestroy()V
    .locals 0

    .line 350
    invoke-direct {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->unregisterAodBroadcast()V

    return-void
.end method

.method public onFocusDreamingStopped()V
    .locals 0

    return-void
.end method

.method public performTimeUpdate()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->updateInfo()V

    .line 244
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->isLowBattery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->hideClock()V

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    .line 250
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/aod/focusmode/-$$Lambda$FocusAodLayout$TBF1fQNWwBd9kgH6XL2efb3h6VE;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/aod/focusmode/-$$Lambda$FocusAodLayout$TBF1fQNWwBd9kgH6XL2efb3h6VE;-><init>(Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public refreshFocusTime()V
    .locals 6

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 211
    iget-wide v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mHadFocusMillis:J

    iget-wide v4, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mLastUpdateMillis:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mHadFocusMillis:J

    .line 212
    iget-wide v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mHadFocusMillis:J

    iget-wide v4, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mDurationMillis:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 213
    iput-wide v4, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mHadFocusMillis:J

    .line 215
    :cond_0
    iput-wide v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mLastUpdateMillis:J

    .line 216
    iget-wide v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mHadFocusMillis:J

    const-wide/32 v4, 0xea60

    rem-long/2addr v2, v4

    sub-long/2addr v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mNextUpdateMillis:J

    return-void
.end method

.method public registerAlarmBroadcast()V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mClockAlarmManager:Landroid/app/AlarmManager;

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.aod.UPDATE_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mClockIntent:Landroid/app/PendingIntent;

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mLastUpdateMillis:J

    .line 196
    invoke-direct {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->setClockAlarm()V

    return-void
.end method

.method public setAodSuspendState()V
    .locals 4

    .line 310
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mFirstTimeInAod:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mSuspendSetRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mFirstSetDozeDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mFirstTimeInAod:Z

    goto :goto_0

    .line 314
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isMtkPlatform()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e8

    .line 315
    iput v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mSetDozeDelay:I

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mSuspendSetRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mSetDozeDelay:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public setFocusDozeScreenState(I)V
    .locals 0

    .line 358
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/common/DreamHelper;->setAodDozeScreenState(I)V

    return-void
.end method

.method public showClock()V
    .locals 4

    const/4 v0, 0x0

    .line 330
    iput v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mUpdateCount:I

    const/4 v1, 0x1

    .line 331
    iput-boolean v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mFirstShowFromSleep:Z

    .line 332
    iget-object v1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    .line 333
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->setVisibility(I)V

    .line 334
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->performTimeUpdate()V

    return-void
.end method

.method public startShowFocus()V
    .locals 1

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->mFirstTimeInAod:Z

    .line 236
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->performTimeUpdate()V

    return-void
.end method

.method public updateAodDozeStateAndStart(I)V
    .locals 0

    .line 339
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/common/DreamHelper;->setAodDozeScreenState(I)V

    .line 340
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/common/DreamHelper;->onStartDozing()V

    return-void
.end method

.method public updateNextPosition(I)V
    .locals 0

    .line 354
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/common/DreamHelper;->updateNextPosition(I)V

    return-void
.end method
