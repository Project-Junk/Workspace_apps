.class public Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;
.super Ljava/lang/Object;
.source "NavigationBarStatisticUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavBarClickHelper"
.end annotation


# static fields
.field private static final BACK_CNT:Ljava/lang/String; = "back_cnt"

.field public static final BACK_CODE:I = 0x4

.field private static final BACK_LONG_CNT:Ljava/lang/String; = "back_long_cnt"

.field private static final EVENT_ID:Ljava/lang/String; = "nav_bar_click"

.field private static final HIDE_CNT:Ljava/lang/String; = "hide_cnt"

.field public static final HIDE_CODE:I = 0x4891

.field private static final HOME_CNT:Ljava/lang/String; = "home_cnt"

.field public static final HOME_CODE:I = 0x3

.field private static final HOME_LONG_CNT:Ljava/lang/String; = "home_long_cnt"

.field private static final MAX_TOTAL_CNT:I = 0x14

.field private static final MENU_CNT:Ljava/lang/String; = "menu_cnt"

.field public static final MENU_CODE:I = 0x52

.field private static final QUICK_SCRUB_CNT:Ljava/lang/String; = "quick_scrub_cnt"

.field public static final QUICK_SCRUB_GESTURE_TYPE:I = 0x1

.field private static final SWIPE_UP_CNT:Ljava/lang/String; = "swipe_up_cnt"

.field public static final SWIPE_UP_GESTURE_TYPE:I = 0x0

.field private static final SWITCH_CNT:Ljava/lang/String; = "switch_cnt"

.field public static final SWITCH_CODE:I = 0xbb

.field private static final SWITCH_LONG_CNT:Ljava/lang/String; = "switch_long_cnt"

.field private static final UPLOAD_INTERVAL:J = 0x6ddd00L

.field private static sInstance:Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;


# instance fields
.field private mBackCnt:I

.field private mBackLongCnt:I

.field private mContext:Landroid/content/Context;

.field private mHideCnt:I

.field private mHomeCnt:I

.field private mHomeLongCnt:I

.field private mLastSendTime:J

.field private mMenuCnt:I

.field private mQuickScrubCnt:I

.field private mSwipeUpCnt:I

.field private mSwitchCnt:I

.field private mSwitchLongCnt:I

.field private mTotal:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mHomeCnt:I

    .line 131
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mSwitchCnt:I

    .line 132
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mBackCnt:I

    .line 133
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mHomeLongCnt:I

    .line 134
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mSwitchLongCnt:I

    .line 135
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mBackLongCnt:I

    .line 136
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mMenuCnt:I

    .line 137
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mHideCnt:I

    .line 138
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mSwipeUpCnt:I

    .line 139
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mQuickScrubCnt:I

    .line 140
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mTotal:I

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mLastSendTime:J

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkForUploading()V
    .locals 4

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mLastSendTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 225
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTotal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mTotal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isNeedUploadNow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    const-string v3, "NavigationBarStatisticUtil"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget v1, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mTotal:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_2

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->sendData()V

    :cond_2
    return-void
.end method

.method private clearData()V
    .locals 1

    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mHomeCnt:I

    .line 234
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mSwitchCnt:I

    .line 235
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mBackCnt:I

    .line 236
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mHomeLongCnt:I

    .line 237
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mSwitchLongCnt:I

    .line 238
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mBackLongCnt:I

    .line 239
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mMenuCnt:I

    .line 240
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mHideCnt:I

    .line 241
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mSwipeUpCnt:I

    .line 242
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mQuickScrubCnt:I

    .line 243
    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mTotal:I

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;
    .locals 2

    const-class v0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;

    monitor-enter v0

    .line 144
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->sInstance:Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->sInstance:Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;

    .line 147
    :cond_0
    sget-object p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->sInstance:Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private sendData()V
    .locals 4

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mLastSendTime:J

    .line 249
    iget-object v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 252
    iget v1, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mHomeCnt:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "home_cnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget v1, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mSwitchCnt:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "switch_cnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget v1, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mBackCnt:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "back_cnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget v1, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mHomeLongCnt:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "home_long_cnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget v1, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mSwitchLongCnt:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "switch_long_cnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget v1, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mBackLongCnt:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "back_long_cnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget v1, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mMenuCnt:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "menu_cnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget v1, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mHideCnt:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hide_cnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget v1, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mSwipeUpCnt:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "swipe_up_cnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget v1, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mQuickScrubCnt:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "quick_scrub_cnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v1, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mContext:Landroid/content/Context;

    const-string v2, "20082002"

    const-string v3, "nav_bar_click"

    invoke-static {v1, v2, v3, v0}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v0, "NavBar"

    const-string v1, "NavigationBarStatisticUtil"

    const-string v2, "NavBarClickHelper sendData error: context is null"

    .line 264
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_0
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->clearData()V

    return-void
.end method


# virtual methods
.method public onReceive(I)V
    .locals 2

    .line 203
    iget v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mTotal:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mTotal:I

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    .line 214
    iget v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mTotal:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mTotal:I

    goto :goto_0

    .line 210
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mQuickScrubCnt:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mQuickScrubCnt:I

    goto :goto_0

    .line 207
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mSwipeUpCnt:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mSwipeUpCnt:I

    .line 218
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavBarClickHelper onReceive: gestureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NavBar"

    const-string v1, "NavigationBarStatisticUtil"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->checkForUploading()V

    return-void
.end method

.method public onReceive(IZ)V
    .locals 2

    .line 155
    iget v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mTotal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mTotal:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x52

    if-eq p1, v0, :cond_3

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4891

    if-eq p1, v0, :cond_0

    .line 192
    iget v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mTotal:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mTotal:I

    goto :goto_0

    .line 187
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mHideCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mHideCnt:I

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 168
    iget v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mSwitchLongCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mSwitchLongCnt:I

    goto :goto_0

    .line 170
    :cond_2
    iget v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mSwitchCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mSwitchCnt:I

    goto :goto_0

    .line 183
    :cond_3
    iget v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mMenuCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mMenuCnt:I

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 176
    iget v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mBackLongCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mBackLongCnt:I

    goto :goto_0

    .line 178
    :cond_5
    iget v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mBackCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mBackCnt:I

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    .line 160
    iget v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mHomeLongCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mHomeLongCnt:I

    goto :goto_0

    .line 162
    :cond_7
    iget v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mHomeCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->mHomeCnt:I

    .line 197
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavBarClickHelper onReceive: code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isLongPress = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NavBar"

    const-string v0, "NavigationBarStatisticUtil"

    invoke-static {p2, v0, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil$NavBarClickHelper;->checkForUploading()V

    return-void
.end method
