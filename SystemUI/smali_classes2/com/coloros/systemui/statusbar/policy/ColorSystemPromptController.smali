.class public Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;
.super Ljava/lang/Object;
.source "ColorSystemPromptController.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$IconVisibleChange;
    }
.end annotation


# static fields
.field private static final ACTION_OPEN_RECORDER:Ljava/lang/String; = "com.oppo.soundrecorder.open_recorder"

.field private static final ACTION_THIRDPART_BGRECORD_STATUSBAR_CLICK:Ljava/lang/String; = "com.systemui.ACTION_THIRDPART_BGRECORD_STATUSBAR_CLICK"

.field private static final CALL_STATE:Ljava/lang/String; = "call_state"

.field private static final DELAY_MILLIS:I = 0x7d0

.field private static final DELAY_MILLIS1:I = 0x3e8

.field private static final DELAY_MILLIS2:I = 0xc8

.field private static final EXTRA_RECORD_ACTION_PID:Ljava/lang/String; = "android.media.EXTRA_RECORD_ACTION_PID"

.field private static final HIGHLIGHT_MODE_INCALL:I = 0x2

.field private static final HIGHLIGHT_MODE_INCALL_RECORD:I = 0x1

.field private static final HIGHLIGHT_MODE_NORMAL:I = 0x0

.field private static final HIGHLIGHT_MODE_PAYMENT_DETECT_CODE:I = 0x20

.field private static final HIGHLIGHT_MODE_RECORDER:I = 0x8

.field private static final HIGHLIGHT_MODE_ROOT:I = 0x10

.field private static final HIGHLIGHT_MODE_THIRD_RECORDER:I = 0x4

.field private static final INCALLSCREEN_CLASS_NAME:Ljava/lang/String; = "com.android.incallui.OppoInCallActivity"

.field private static final INCALL_SCREEN_FORGROUND:Ljava/lang/String; = "incall_screen_forground"

.field private static final INCALL_SCREEN_NAME_TAG:Ljava/lang/String; = "incall_screen_name_tag"

.field private static final KEY_CALL_START_TIME:Ljava/lang/String; = "call_start_time"

.field private static final KEY_CALL_VIDEO_CALL:Ljava/lang/String; = "video_call"

.field private static final KEY_ERROR_CODE:Ljava/lang/String; = "errMsg"

.field private static final KEY_RECORDER_STATUS:Ljava/lang/String; = "recorder_status_for_statebar"

.field private static final KEY_RECORDER_TIME:Ljava/lang/String; = "recorder_time_for_statebar"

.field private static final PACKAGE_INCALLSCREEN:Ljava/lang/String; = "com.android.incallui"

.field private static final PROMOPT_TYPE_ICON_MODE:I = 0x1

.field private static final RECORDER_PAUSE:I = 0x2

.field private static final RECORDER_RECORDING:I = 0x1

.field private static final RECORDER_STOP:I = 0x0

.field private static final SERVICE_CENTER_NUMBER:Ljava/lang/String; = "4001666888"

.field private static final TAG:Ljava/lang/String; = "ColorSystemPromptController"

.field private static final TYPE_CALL:I = 0x2

.field private static final TYPE_RECORD:I = 0x1

.field private static sLastPromptIconVisible:Z = false

.field private static sMode:I


# instance fields
.field private mCallback:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$IconVisibleChange;

.field private mContext:Landroid/content/Context;

.field private mExcludeApplist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInCallScreen:Z

.field private mInCallScreenClassName:Ljava/lang/String;

.field private mInCallScreenFromBroadcast:Z

.field private mIncallStateChangedRunning:Ljava/lang/Runnable;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPackageRestartReceiver:Lcom/coloros/systemui/statusbar/receiver/PackageRestartReceiver;

.field private mPhoneStateIdle:Z

.field private mRecordName:Ljava/lang/String;

.field private mRecordPid:I

.field private mRecordPkgName:Ljava/lang/String;

.field private mRecordUid:I

.field private mRecorderStatus:I

.field private final mSystemPromptReceiver:Lcom/coloros/systemui/statusbar/receiver/SystemPromptReceiver;

.field private mThirdPartRecording:Z

.field private mTint:I

.field private mUpdateStateRunning:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mInCallScreen:Z

    const/4 v1, 0x1

    .line 131
    iput-boolean v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mPhoneStateIdle:Z

    const-string v1, "com.android.incallui.OppoInCallActivity"

    .line 133
    iput-object v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mInCallScreenClassName:Ljava/lang/String;

    .line 134
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mInCallScreenFromBroadcast:Z

    const/4 v1, -0x1

    .line 137
    iput v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mTint:I

    .line 145
    new-instance v1, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$1;-><init>(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)V

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mIncallStateChangedRunning:Ljava/lang/Runnable;

    .line 152
    new-instance v1, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$2;-><init>(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)V

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mUpdateStateRunning:Ljava/lang/Runnable;

    .line 170
    iput v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mRecorderStatus:I

    .line 175
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mThirdPartRecording:Z

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mExcludeApplist:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$3;-><init>(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mPackageRestartReceiver:Lcom/coloros/systemui/statusbar/receiver/PackageRestartReceiver;

    .line 192
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;-><init>(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mSystemPromptReceiver:Lcom/coloros/systemui/statusbar/receiver/SystemPromptReceiver;

    .line 284
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    .line 285
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 286
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->initRecordExcludeAppList()V

    .line 288
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result p1

    if-nez p1, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->initDeveloperMode()V

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->initErrorCodeMode()V

    .line 294
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mPackageRestartReceiver:Lcom/coloros/systemui/statusbar/receiver/PackageRestartReceiver;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/coloros/systemui/statusbar/receiver/PackageRestartReceiver;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 295
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mSystemPromptReceiver:Lcom/coloros/systemui/statusbar/receiver/SystemPromptReceiver;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v2}, Lcom/coloros/systemui/statusbar/receiver/SystemPromptReceiver;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 296
    const-class p1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->changeInCallState()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mThirdPartRecording:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mPhoneStateIdle:Z

    return p1
.end method

.method static synthetic access$102(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mThirdPartRecording:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mInCallScreenFromBroadcast:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mInCallScreenFromBroadcast:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mInCallScreenClassName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mInCallScreenClassName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->updateMode(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;ZLjava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->setErrorCodeMode(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->closeDeveloperMode()V

    return-void
.end method

.method static synthetic access$1700(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->clearPromptMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mRecordPkgName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->setThirdRecorderMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->setRecorderMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->setRecorderStatus(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Ljava/lang/Runnable;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mIncallStateChangedRunning:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Landroid/os/Handler;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->setInCallMode(Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mInCallScreen:Z

    return p1
.end method

.method private backToRecorder()V
    .locals 4

    const-string v0, "ColorSystemPromptController"

    const-string v1, "Statusbar"

    const-string v2, "backToRecorder"

    .line 733
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 734
    invoke-direct {p0, v2}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->setRecorderMode(Z)V

    .line 735
    new-instance p0, Landroid/content/Intent;

    const-string v2, "com.oppo.soundrecorder.open_recorder"

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 736
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 739
    :try_start_0
    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v3, 0x1

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start Recorder failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private changeInCallState()V
    .locals 5

    .line 317
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mInCallScreenClassName:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/coloros/common/util/Util;->isActivityAtTop(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 318
    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mInCallScreenFromBroadcast:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mInCallScreen:Z

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeInCallState() mInCallScreenFromBroadcast = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mInCallScreenFromBroadcast:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", inCallScreenFromTopStack = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mInCallScreen = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mInCallScreen:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mPhoneStateIdle="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mPhoneStateIdle:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v4, "ColorSystemPromptController"

    invoke-static {v1, v4, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mInCallScreen:Z

    if-nez v0, :cond_2

    .line 325
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mPhoneStateIdle:Z

    if-nez v0, :cond_3

    .line 326
    invoke-direct {p0, v3}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->setInCallMode(Z)V

    goto :goto_2

    .line 329
    :cond_2
    invoke-direct {p0, v2}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->setInCallMode(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method private clearPromptMode()V
    .locals 1

    const/4 v0, 0x0

    .line 609
    sput v0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    .line 610
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->updatePromptIcon()V

    return-void
.end method

.method private closeDeveloperMode()V
    .locals 2

    .line 571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.action_dissable_development"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/coloros/common/util/Util;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 574
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private static getFormatTime(J)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3e8

    int-to-long v0, v0

    .line 678
    div-long/2addr p0, v0

    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIconTintResId(II)I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, -0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    const p0, 0x7f080edb

    goto :goto_0

    :cond_1
    const p0, 0x7f080eda

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    const p0, 0x7f080edd

    goto :goto_0

    :cond_3
    const p0, 0x7f080edc

    :goto_0
    return p0
.end method

.method private getProcessPid(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 512
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 513
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 514
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 515
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 517
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 518
    iget p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return p0

    :cond_2
    return v0
.end method

.method private initDeveloperMode()V
    .locals 2

    .line 529
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isHighlightNoDeveloper()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 532
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/observer/DevelopmentSettingsObserver;->getInstance()Lcom/coloros/systemui/common/observer/DevelopmentSettingsObserver;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/statusbar/policy/-$$Lambda$ColorSystemPromptController$fdaYXYWmEp2MWpgpog2SXquSb9k;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/statusbar/policy/-$$Lambda$ColorSystemPromptController$fdaYXYWmEp2MWpgpog2SXquSb9k;-><init>(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)V

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/observer/DevelopmentSettingsObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    .line 533
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->updateDeveloperMode()V

    return-void
.end method

.method private initErrorCodeMode()V
    .locals 2

    const-string v0, "-1"

    const-string v1, "persist.sys.errmsg"

    .line 386
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 388
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->setErrorCodeMode(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 390
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->setErrorCodeMode(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initRecordExcludeAppList()V
    .locals 1

    .line 465
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mExcludeApplist:Ljava/util/ArrayList;

    invoke-static {}, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->getBgExcludeAppList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private isDisableCallRecordHighlight(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.android.incallui"

    .line 469
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isDisableCallRecordHighlight()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isExcludeApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mExcludeApplist:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 453
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->isInputMethodApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isHighlightMode()Z
    .locals 2

    .line 747
    sget v0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    const/4 v1, 0x0

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isInputMethodApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-string p0, "Error; "

    const-string v0, "ColorSystemPromptController"

    const-string v1, "Statusbar"

    .line 476
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 479
    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 480
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz p1, :cond_1

    move p2, v3

    .line 482
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_1

    .line 483
    aget-object v2, p1, p2

    .line 484
    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v4, "android.permission.BIND_INPUT_METHOD"

    .line 485
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    move v3, p0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 494
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 492
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v3
.end method

.method private isPaymentDetectMode()Z
    .locals 0

    .line 755
    sget p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPromptMode()Z
    .locals 2

    .line 585
    sget v0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    const/4 v1, 0x0

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->isHighlightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isRecorderMode()Z
    .locals 0

    .line 346
    sget p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRootMode()Z
    .locals 0

    .line 751
    sget p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 460
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 461
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0

    return p0
.end method

.method private isThirdRecorderMode()Z
    .locals 0

    .line 372
    sget p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onModeChanged(III)V
    .locals 0

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne p1, p3, :cond_1

    .line 628
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->updatePromptIcon()V

    :cond_1
    return-void
.end method

.method private removePromptMode(II)V
    .locals 3

    .line 614
    sget v0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    and-int v1, v0, p1

    if-eqz v1, :cond_0

    not-int v1, v0

    or-int/2addr v1, p1

    not-int v1, v1

    .line 616
    sput v1, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    .line 618
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePromptMode() oldMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", sMode:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Statusbar"

    const-string v2, "ColorSystemPromptController"

    .line 618
    invoke-static {v1, v2, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    sget p1, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    invoke-direct {p0, v0, p1, p2}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->onModeChanged(III)V

    return-void
.end method

.method private returnToInCallScreen()V
    .locals 4

    const-string v0, "ColorSystemPromptController"

    const-string v1, "Statusbar"

    :try_start_0
    const-string v2, "returnToInCallScreen"

    .line 722
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    .line 725
    invoke-virtual {p0, v2}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showInCallScreen failed e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private sendNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 555
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 557
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 558
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 559
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const-string v0, "sys"

    .line 560
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 561
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 562
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 563
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 564
    invoke-virtual {p1, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 567
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 p2, 0x0

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p2, p5, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private setErrorCodeMode(ZLjava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 396
    new-instance p1, Landroid/content/Intent;

    const-string v0, "tel:4001666888"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 397
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 398
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    const v0, 0x7f1107c0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 400
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    const p2, 0x7f110383

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v4, 0x7f080ede

    const/16 v7, 0x2713

    move-object v2, p0

    .line 401
    invoke-direct/range {v2 .. v7}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sendNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 404
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p1, 0x2713

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_1
    return-void
.end method

.method private setInCallMode(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 305
    invoke-virtual {p0, v1, v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->addPromptMode(II)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->removePromptMode(II)V

    :goto_0
    return-void
.end method

.method private setRecorderMode(Z)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p0, v1, v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->addPromptMode(II)V

    goto :goto_0

    .line 341
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->removePromptMode(II)V

    :goto_0
    return-void
.end method

.method private setRecorderStatus(I)V
    .locals 2

    .line 350
    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mRecorderStatus:I

    .line 351
    iget p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mRecorderStatus:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 352
    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->setRecorderMode(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 353
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mPhoneStateIdle:Z

    if-eqz p1, :cond_1

    .line 354
    invoke-direct {p0, v1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->setRecorderMode(Z)V

    goto :goto_0

    .line 355
    :cond_1
    iget p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mRecorderStatus:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 356
    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->setRecorderMode(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setThirdRecorderMode(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    .line 363
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCtaSupport()Z

    move-result p1

    if-nez p1, :cond_0

    .line 364
    invoke-virtual {p0, v1, v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->addPromptMode(II)V

    goto :goto_0

    .line 366
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->removePromptMode(II)V

    :goto_0
    return-void
.end method

.method private updateDeveloperMode()V
    .locals 9

    .line 537
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 542
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/observer/DevelopmentSettingsObserver;->getInstance()Lcom/coloros/systemui/common/observer/DevelopmentSettingsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/DevelopmentSettingsObserver;->isDevelopmentSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.action_dissable_development"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 545
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    const v1, 0x7f1102f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 546
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    const v1, 0x7f1102f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v5, 0x7f080ede

    const/16 v8, 0x2712

    move-object v3, p0

    .line 547
    invoke-direct/range {v3 .. v8}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sendNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 550
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void
.end method

.method private updateMode(I)V
    .locals 9

    const-string v0, "ColorSystemPromptController"

    const-string v1, "Statusbar"

    .line 409
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 410
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 411
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 412
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 413
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 414
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 416
    :try_start_0
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    .line 417
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 418
    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v6, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mRecordPid:I

    .line 419
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v6, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mRecordPkgName:Ljava/lang/String;

    .line 420
    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iput v6, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mRecordUid:I

    .line 421
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mRecordName:Ljava/lang/String;

    .line 423
    invoke-static {}, Lcom/coloros/common/util/Util;->getCurrentTopAppPackageName()Ljava/lang/String;

    move-result-object v6

    .line 425
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ProcessName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Label: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " UID:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " currentTopApp: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 425
    invoke-static {v1, v0, v5}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v5, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p0, v5, v7}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->isExcludeApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->isSystemApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mPhoneStateIdle:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 431
    iput-boolean v4, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mThirdPartRecording:Z

    .line 437
    iget-object v4, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mRecordPkgName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 438
    iget-object v4, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mUpdateStateRunning:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v4

    .line 444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error>> :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addCabllback(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$IconVisibleChange;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mCallback:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$IconVisibleChange;

    return-void
.end method

.method public addPromptMode(II)V
    .locals 3

    .line 596
    sget v0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    or-int v1, v0, p1

    .line 597
    sput v1, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPromptMode() oldMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", sMode="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    .line 600
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Statusbar"

    const-string v2, "ColorSystemPromptController"

    .line 598
    invoke-static {v1, v2, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    sget p1, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    invoke-direct {p0, v0, p1, p2}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->onModeChanged(III)V

    return-void
.end method

.method public checkThirdPartRecord()V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mUpdateStateRunning:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mUpdateStateRunning:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getHighLightMode()I
    .locals 0

    .line 605
    sget p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    return p0
.end method

.method public handleClick(F)Z
    .locals 4

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClick: x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->getHighLightMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "ColorSystemPromptController"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mCallback:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$IconVisibleChange;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    float-to-int p1, p1

    invoke-interface {v0, p1, v1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$IconVisibleChange;->isTouch(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 692
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->isInCallMode()Z

    move-result p1

    const-string v0, "click_status_bar"

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mInCallScreen:Z

    if-nez p1, :cond_0

    .line 693
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->returnToInCallScreen()V

    .line 695
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    .line 696
    invoke-static {p0}, Lcom/coloros/common/util/Util;->getCurrentTopActivityNameInActivityStack(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "incall"

    .line 695
    invoke-static {p0, v0, v1, p1}, Lcom/coloros/systemui/statusbar/phone/StatusBarStatistic;->collectStatusBarClickEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 697
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->isRecorderMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 698
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->backToRecorder()V

    .line 700
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    .line 701
    invoke-static {p0}, Lcom/coloros/common/util/Util;->getCurrentTopActivityNameInActivityStack(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "recorder"

    .line 700
    invoke-static {p0, v0, v1, p1}, Lcom/coloros/systemui/statusbar/phone/StatusBarStatistic;->collectStatusBarClickEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->isThirdRecorderMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 703
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mThirdPartRecording:Z

    if-eqz p1, :cond_2

    .line 704
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.systemui.ACTION_THIRDPART_BGRECORD_STATUSBAR_CLICK"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    iget v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mRecordUid:I

    const-string v3, "uid"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    iget v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mRecordPid:I

    const-string v3, "pid"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mRecordName:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mRecordPkgName:Ljava/lang/String;

    const-string v3, "packagename"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.coloros.securitypermission"

    .line 709
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 713
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mContext:Landroid/content/Context;

    .line 714
    invoke-static {p0}, Lcom/coloros/common/util/Util;->getCurrentTopActivityNameInActivityStack(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "thirdrecorder"

    .line 713
    invoke-static {p0, v0, v1, p1}, Lcom/coloros/systemui/statusbar/phone/StatusBarStatistic;->collectStatusBarClickEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    return v2
.end method

.method public isInCallMode()Z
    .locals 0

    .line 312
    sget p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$initDeveloperMode$0$ColorSystemPromptController(Z)V
    .locals 0

    .line 532
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->updateDeveloperMode()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged() sMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    .line 684
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "ColorSystemPromptController"

    .line 683
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->updatePromptIcon()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 760
    iput p3, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mTint:I

    .line 761
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->updatePromptIcon()V

    return-void
.end method

.method public updatePromptIcon()V
    .locals 6

    .line 635
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->isInCallMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 636
    iget v3, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mTint:I

    invoke-direct {p0, v0, v3}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->getIconTintResId(II)I

    move-result v0

    :goto_0
    move v3, v0

    move v0, v2

    goto :goto_1

    .line 638
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->isThirdRecorderMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    iget v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mTint:I

    invoke-direct {p0, v2, v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->getIconTintResId(II)I

    move-result v0

    goto :goto_0

    .line 641
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->isRecorderMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    iget v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mTint:I

    invoke-direct {p0, v2, v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->getIconTintResId(II)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    move v3, v0

    :goto_1
    if-eqz v0, :cond_3

    .line 645
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v4, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->isIsHeadsUp()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    .line 646
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePromptIcon: sLastPromptIconVisible = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sLastPromptIconVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",visible = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",sMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->sMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mCallback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mCallback:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$IconVisibleChange;

    if-nez v5, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    const-string v4, "ColorSystemPromptController"

    invoke-static {v2, v4, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->mCallback:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$IconVisibleChange;

    if-eqz p0, :cond_5

    .line 649
    invoke-interface {p0, v3, v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$IconVisibleChange;->updateIcon(IZ)V

    :cond_5
    return-void
.end method
