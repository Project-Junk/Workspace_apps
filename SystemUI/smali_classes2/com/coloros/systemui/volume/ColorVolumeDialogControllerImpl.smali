.class public Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;
.super Ljava/lang/Object;
.source "ColorVolumeDialogControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/ColorVolumeDialogController;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$UserActivityListener;,
        Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;,
        Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;,
        Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;,
        Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;,
        Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final ACTION_VOLUME_BOOST:Ljava/lang/String; = "oppo.media.volume_boost"

.field private static final DYNAMIC_STREAM_START_INDEX:I = 0x64

.field private static final SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static final STREAMS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ColorVolumeDialogControllerImpl"

.field private static final TOUCH_FEEDBACK_TIMEOUT_MS:I = 0x3e8

.field private static final VIBRATE_HINT_DURATION:I = 0x32

.field private static final VOLUME_BOOST_KEY:Ljava/lang/String; = "volume_boost"


# instance fields
.field private mAudio:Landroid/media/AudioManager;

.field private mAudioService:Landroid/media/IAudioService;

.field protected mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

.field private mColorVolumeDialogReceiver:Lcom/coloros/systemui/volume/ColorVolumeDialogReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mHasVibrator:Z

.field private mLastToggledRingerOn:J

.field private final mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

.field private final mMediaSessionsCallbacksW:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mObserver:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;

.field private mShowA11yStream:Z

.field private mShowDndTile:Z

.field private mShowSafetyWarning:Z

.field private mShowVolumeDialog:Z

.field private final mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

.field private mUserActivityListener:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$UserActivityListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mVibrator:Landroid/os/Vibrator;

.field protected final mVolumeController:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private final mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

.field private final mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 104
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v2, 0xd

    .line 105
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    .line 110
    sget-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1107da

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1107db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1107dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1107dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1107d9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1107de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1107df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1107e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1107e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1107e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1107e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)V

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    .line 133
    new-instance v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    .line 134
    new-instance v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)V

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mShowDndTile:Z

    .line 148
    new-instance v1, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogControllerImpl$fDlq_7nhb41GJxvaAXJ_oJymsdA;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogControllerImpl$fDlq_7nhb41GJxvaAXJ_oJymsdA;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)V

    iput-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 153
    new-instance v1, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;)V

    iput-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mVolumeController:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;

    .line 1108
    new-instance v1, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)V

    iput-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mColorVolumeDialogReceiver:Lcom/coloros/systemui/volume/ColorVolumeDialogReceiver;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    .line 158
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 160
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-static {v1, v5, v4}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 161
    new-instance v1, Landroid/os/HandlerThread;

    const-class v4, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorkerThread:Landroid/os/HandlerThread;

    .line 162
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 163
    new-instance v1, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    iget-object v4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    .line 164
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-virtual {p0, v1, v4, v5}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->createMediaSessions(Landroid/content/Context;Landroid/os/Looper;Lcom/android/settingslib/volume/MediaSessions$Callbacks;)Lcom/android/settingslib/volume/MediaSessions;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    .line 166
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 167
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 168
    new-instance v1, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;

    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mObserver:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;

    .line 169
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mObserver:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;

    invoke-virtual {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->init()V

    .line 170
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mColorVolumeDialogReceiver:Lcom/coloros/systemui/volume/ColorVolumeDialogReceiver;

    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    invoke-virtual {v1, v2, v5}, Lcom/coloros/systemui/volume/ColorVolumeDialogReceiver;->register(Landroid/content/Context;Landroid/os/Handler;)V

    .line 171
    invoke-static {}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    .line 172
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mVibrator:Landroid/os/Vibrator;

    .line 173
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mHasVibrator:Z

    .line 175
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudioService:Landroid/media/IAudioService;

    .line 176
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateStatusBar()V

    .line 178
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 179
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result p1

    .line 180
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mVolumeController:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->setA11yMode(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;IZ)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->onSetStreamMuteW(IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;II)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->onSetStreamVolumeW(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->onSetActiveStreamW(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Z)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->onNotifyVisibleW(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->onUserActivityW()V

    return-void
.end method

.method static synthetic access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->onShowSafetyWarningW(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Z)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->onGetCaptionsComponentStateW(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Ljava/lang/Boolean;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Landroid/content/Context;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Z
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateZenModeW()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Z
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateZenConfig()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;II)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateRingerModeExternalW(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateRingerModeInternalW(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;IZ)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateStreamMuteW(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Landroid/app/NotificationManager;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Landroid/content/ComponentName;)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->makeToastWhenBoostChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->shouldShowUI(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/settingslib/volume/MediaSessions;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mShowA11yStream:Z

    return p0
.end method

.method static synthetic access$402(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic access$500(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->onDismissRequestedW(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->onGetStateW()V

    return-void
.end method

.method static synthetic access$700(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;IZ)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->onSetRingerModeW(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->onSetZenModeW(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Landroid/service/notification/Condition;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->onSetExitConditionW(Landroid/service/notification/Condition;)V

    return-void
.end method

.method private checkRoutedToBluetoothW(I)Z
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 479
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 480
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x380

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 484
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method private checkRoutedToWiredW(I)Z
    .locals 5

    const/4 v0, 0x1

    const v1, 0x400000c

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    .line 494
    iget-object v4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 495
    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 498
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateStreamRoutedToWiredW(IZ)Z

    move-result p0

    :goto_1
    or-int/2addr v3, p0

    goto :goto_3

    :cond_1
    if-nez p1, :cond_3

    .line 500
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 501
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    .line 504
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateStreamRoutedToWiredW(IZ)Z

    move-result p0

    goto :goto_1

    :cond_3
    :goto_3
    return v3
.end method

.method private static getApplicationName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 672
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 673
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 675
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 676
    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 677
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_1

    return-object p0

    :catch_0
    :cond_1
    return-object p1
.end method

.method private static isLogWorthy(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static isRinger(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

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

.method private makeToastWhenBoostChanged(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1203
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/volume/KeyguardToast;->getInstance()Lcom/coloros/systemui/volume/KeyguardToast;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f110635

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/coloros/systemui/volume/KeyguardToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1200
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/volume/KeyguardToast;->getInstance()Lcom/coloros/systemui/volume/KeyguardToast;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f110634

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/coloros/systemui/volume/KeyguardToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1208
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    if-ne p1, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-static {p0, v0}, Lcom/coloros/systemui/volume/VolumeStatisticsUtil;->collectVolumeboostState(Landroid/content/Context;Z)V

    return-void
.end method

.method private onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method private onDismissRequestedW(I)V
    .locals 0

    .line 777
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onDismissRequested(I)V

    return-void
.end method

.method private onGetCaptionsComponentStateW(Z)V
    .locals 7

    const-string v0, "ColorVolumeDialogControllerImpl"

    const/4 v1, 0x0

    .line 444
    :try_start_0
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/coloros/common/util/ResourceUtil;->android_string_config_defaultSystemCaptionsService:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void

    :cond_0
    const-string v3, "Volume"

    const-string v4, "isCaptionsServiceEnabled componentNameString=%s"

    const/4 v5, 0x1

    .line 452
    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 457
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void

    .line 461
    :cond_1
    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 462
    iget-object v4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    .line 463
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 464
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 462
    invoke-virtual {v4, v2, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "isCaptionsServiceEnabled failed to check for captions component"

    .line 466
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :goto_1
    return-void
.end method

.method private onGetStateW()V
    .locals 5

    .line 583
    sget-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 584
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->getAudioManagerStreamVolume(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    .line 585
    invoke-direct {p0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->getAudioManagerStreamMinVolume(I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMin:I

    .line 586
    invoke-direct {p0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->getAudioManagerStreamMaxVolume(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMax:I

    .line 587
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateStreamMuteW(IZ)Z

    .line 588
    invoke-direct {p0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v2

    .line 589
    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->isStreamAffectedByMute(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->muteSupported:Z

    .line 590
    sget-object v3, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->name:I

    .line 591
    invoke-direct {p0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    goto :goto_0

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateRingerModeExternalW(I)Z

    .line 594
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateZenModeW()Z

    .line 595
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateZenConfig()Z

    .line 596
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    .line 597
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V

    return-void
.end method

.method private onNotifyVisibleW(Z)V
    .locals 2

    .line 419
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mVolumeController:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 422
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 423
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V

    :cond_1
    return-void
.end method

.method private onSetActiveStreamW(I)V
    .locals 0

    .line 761
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 763
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V

    :cond_0
    return-void
.end method

.method private onSetExitConditionW(Landroid/service/notification/Condition;)V
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget p0, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->zenMode:I

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "ColorVolumeDialogControllerImpl"

    invoke-virtual {v0, p0, p1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private onSetRingerModeW(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 740
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 742
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :goto_0
    return-void
.end method

.method private onSetStreamMuteW(IZ)V
    .locals 1

    .line 747
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    if-eqz p2, :cond_0

    const/16 p2, -0x64

    goto :goto_0

    :cond_0
    const/16 p2, 0x64

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void
.end method

.method private onSetStreamVolumeW(II)V
    .locals 3

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetStreamVolume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volume"

    const-string v2, "ColorVolumeDialogControllerImpl"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 754
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->setStreamVolume(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 757
    invoke-virtual {p0, p1, p2, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->setAudioManagerStreamVolume(III)V

    return-void
.end method

.method private onSetZenModeW(I)V
    .locals 3

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetZenModeW "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorVolumeDialogControllerImpl"

    const-string v2, "Volume"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private onShowSafetyWarningW(I)V
    .locals 1

    .line 437
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mShowSafetyWarning:Z

    if-eqz v0, :cond_0

    .line 438
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onShowSafetyWarning(I)V

    :cond_0
    return-void
.end method

.method private onUserActivityW()V
    .locals 1

    .line 429
    monitor-enter p0

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mUserActivityListener:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$UserActivityListener;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mUserActivityListener:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$UserActivityListener;

    invoke-interface {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$UserActivityListener;->onUserActivity()V

    .line 433
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private playTouchFeedback()V
    .locals 4

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mLastToggledRingerOn:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 381
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudioService:Landroid/media/IAudioService;

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private shouldShowUI(I)Z
    .locals 4

    .line 517
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateStatusBar()V

    .line 520
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getWakefulnessState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 522
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getWakefulnessState()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 524
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    and-int/2addr p1, v2

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mShowVolumeDialog:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mShowVolumeDialog:Z

    if-eqz p0, :cond_1

    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_1

    :goto_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private streamStateW(I)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-object v0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    if-nez v0, :cond_0

    .line 576
    new-instance v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;-><init>()V

    .line 577
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-object p0, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private updateActiveStreamW(I)Z
    .locals 6

    .line 564
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->activeStream:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iput p1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->activeStream:I

    .line 566
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v2, v4}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 568
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 569
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateActiveStreamW "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", forceVolumeControlStream "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Volume"

    const-string v0, "ColorVolumeDialogControllerImpl"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private updateEffectsSuppressorW(Landroid/content/ComponentName;)Z
    .locals 4

    .line 662
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-object v0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iput-object p1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 664
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-static {p1, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->getApplicationName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    .line 665
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/16 v0, 0xe

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-object v3, v3, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    aput-object v3, v2, v1

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-object p0, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v2, v1

    invoke-static {p1, v0, v2}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    return v1
.end method

.method private updateRingerModeExternalW(I)Z
    .locals 4

    .line 720
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeExternal:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iput p1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeExternal:I

    .line 722
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/16 v0, 0xc

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p0, v0, v3}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    return v2
.end method

.method private updateRingerModeInternalW(I)Z
    .locals 5

    .line 727
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iput p1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    .line 729
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/16 v2, 0xb

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v0, v2, v4}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 731
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget p1, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 732
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->playTouchFeedback()V

    :cond_1
    return v3
.end method

.method private updateStatusBar()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    :cond_0
    return-void
.end method

.method private updateStreamLevelW(II)Z
    .locals 4

    .line 622
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v0

    .line 623
    iget v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    const/4 v2, 0x0

    if-ne v1, p2, :cond_0

    return v2

    .line 624
    :cond_0
    iput p2, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    .line 625
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->isLogWorthy(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 626
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/16 v0, 0xa

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p0, v0, v3}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    :cond_1
    return v1
.end method

.method private updateStreamMuteW(IZ)Z
    .locals 6

    .line 645
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v0

    .line 646
    iget-boolean v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->muted:Z

    const/4 v2, 0x0

    if-ne v1, p2, :cond_0

    return v2

    .line 647
    :cond_0
    iput-boolean p2, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->muted:Z

    .line 648
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->isLogWorthy(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/16 v3, 0xf

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 651
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->isRinger(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 652
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateRingerModeInternalW(I)Z

    :cond_2
    return v1
.end method

.method private updateStreamRoutedToBluetoothW(IZ)Z
    .locals 1

    .line 601
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object p0

    .line 602
    iget-boolean v0, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->routedToBluetooth:Z

    if-ne v0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 603
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 604
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateStreamRoutedToBluetoothW stream="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " routedToBluetooth="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Volume"

    const-string p2, "ColorVolumeDialogControllerImpl"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateStreamRoutedToWiredW(IZ)Z
    .locals 1

    .line 612
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object p0

    .line 613
    iget-boolean v0, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->routedToWired:Z

    if-ne v0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 614
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->routedToWired:Z

    .line 615
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateStreamRoutedToWiredW stream="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " routedToWired="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Volume"

    const-string p2, "ColorVolumeDialogControllerImpl"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateZenConfig()Z
    .locals 10

    .line 694
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 695
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 696
    iget v1, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 698
    :goto_0
    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 700
    :goto_1
    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    .line 702
    :goto_2
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v0

    .line 703
    iget-object v6, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-boolean v6, v6, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowAlarms:Z

    if-ne v6, v1, :cond_3

    iget-object v6, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-boolean v6, v6, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowMedia:Z

    if-ne v6, v4, :cond_3

    iget-object v6, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-boolean v6, v6, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowRinger:Z

    if-ne v6, v0, :cond_3

    iget-object v6, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-boolean v6, v6, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowSystem:Z

    if-ne v6, v5, :cond_3

    return v3

    .line 709
    :cond_3
    iget-object v6, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iput-boolean v1, v6, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowAlarms:Z

    .line 710
    iput-boolean v4, v6, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowMedia:Z

    .line 711
    iput-boolean v5, v6, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowSystem:Z

    .line 712
    iput-boolean v0, v6, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowRinger:Z

    .line 713
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/16 v6, 0x11

    new-array v7, v2, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "disallowAlarms="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " disallowMedia="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " disallowSystem="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " disallowRinger="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {p0, v6, v7}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    return v2
.end method

.method private updateZenModeW()Z
    .locals 5

    .line 685
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 687
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->zenMode:I

    if-ne v2, v0, :cond_0

    return v1

    .line 688
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iput v0, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->zenMode:I

    .line 689
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/16 v2, 0xd

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p0, v2, v4}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    return v3
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;Landroid/os/Handler;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->add(Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 272
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mShowA11yStream:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method public areCaptionsEnabled()Z
    .locals 2

    .line 292
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "odi_captions_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method protected createMediaSessions(Landroid/content/Context;Landroid/os/Looper;Lcom/android/settingslib/volume/MediaSessions$Callbacks;)Lcom/android/settingslib/volume/MediaSessions;
    .locals 0

    .line 241
    new-instance p0, Lcom/android/settingslib/volume/MediaSessions;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/volume/MediaSessions;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/settingslib/volume/MediaSessions$Callbacks;)V

    return-object p0
.end method

.method public destroy()V
    .locals 3

    const-string v0, "Volume"

    const-string v1, "ColorVolumeDialogControllerImpl"

    const-string v2, "destroy"

    .line 245
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    .line 248
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    invoke-virtual {v0}, Lcom/android/settingslib/volume/MediaSessions;->destroy()V

    .line 250
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mObserver:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;

    invoke-virtual {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->destroy()V

    .line 251
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mColorVolumeDialogReceiver:Lcom/coloros/systemui/volume/ColorVolumeDialogReceiver;

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogReceiver;->unregister(Landroid/content/Context;)V

    .line 252
    invoke-static {}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->removeListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    .line 253
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 190
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onDismissRequested(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " state:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mDestroyed: "

    .line 258
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mVolumePolicy: "

    .line 259
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mState: "

    .line 260
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mShowDndTile: "

    .line 261
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mShowDndTile:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mHasVibrator: "

    .line 262
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mHasVibrator:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mRemoteStreams: "

    .line 263
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->access$100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;)Ljava/util/HashMap;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 263
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mShowA11yStream: "

    .line 265
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mShowA11yStream:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 266
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 267
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/volume/MediaSessions;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    return-object p0
.end method

.method protected getAudioManagerStreamMaxVolume(I)I
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method protected getAudioManagerStreamMinVolume(I)I
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result p0

    return p0
.end method

.method protected getAudioManagerStreamVolume(I)I
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public getCaptionsComponentState(Z)V
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    const/16 v0, 0x10

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getState()V
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->sendEmptyMessage(I)Z

    return-void
.end method

.method public hasVibrator()Z
    .locals 0

    .line 415
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mHasVibrator:Z

    return p0
.end method

.method public isCaptionStreamOptedOut()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$new$0$ColorVolumeDialogControllerImpl(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "Volume"

    const-string p2, "ColorVolumeDialogControllerImpl"

    const-string v0, "onReceive ACTION_CLOSE_SYSTEM_DIALOGS"

    .line 149
    invoke-static {p1, p2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->dismiss()V

    return-void
.end method

.method public notifyVisible(Z)V
    .locals 2

    .line 314
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method onVolumeChangedW(II)Z
    .locals 9

    .line 530
    invoke-direct {p0, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->shouldShowUI(I)Z

    move-result v0

    and-int/lit16 v1, p2, 0x1000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/lit16 v4, p2, 0x800

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_2

    :cond_2
    move p2, v3

    :goto_2
    if-eqz v0, :cond_3

    .line 536
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result v5

    or-int/2addr v5, v3

    goto :goto_3

    :cond_3
    move v5, v3

    .line 538
    :goto_3
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->getAudioManagerStreamVolume(I)I

    move-result v6

    .line 539
    invoke-direct {p0, p1, v6}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    move-result v7

    or-int/2addr v5, v7

    const/4 v7, 0x3

    if-eqz v0, :cond_4

    move v8, v7

    goto :goto_4

    :cond_4
    move v8, p1

    .line 540
    :goto_4
    invoke-direct {p0, v8}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    move-result v8

    or-int/2addr v5, v8

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v7, p1

    .line 543
    :goto_5
    invoke-direct {p0, v7}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->checkRoutedToWiredW(I)Z

    move-result v7

    or-int/2addr v5, v7

    if-eqz v5, :cond_6

    .line 546
    iget-object v7, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    iget-object v8, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    invoke-virtual {v7, v8}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V

    :cond_6
    if-eqz v0, :cond_7

    .line 549
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onShowRequested(I)V

    :cond_7
    if-eqz v4, :cond_8

    .line 552
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-virtual {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onShowVibrateHint()V

    :cond_8
    if-eqz p2, :cond_9

    .line 555
    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-virtual {p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onShowSilentHint()V

    :cond_9
    if-eqz v5, :cond_a

    if-eqz v1, :cond_a

    .line 558
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const/4 p2, 0x4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {p0, p2, v0}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    :cond_a
    return v5
.end method

.method public register()V
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->setVolumeController()V

    .line 220
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 221
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mShowDndTile:Z

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->showDndTile(Z)V

    .line 223
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    invoke-virtual {p0}, Lcom/android/settingslib/volume/MediaSessions;->init()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ColorVolumeDialogControllerImpl"

    const-string v1, "No access to media sessions"

    .line 225
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;)V
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->remove(Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;)V

    return-void
.end method

.method public removeSetStreamMessage()Z
    .locals 3

    .line 357
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    invoke-virtual {p0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->removeMessages(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public scheduleTouchFeedback()V
    .locals 2

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mLastToggledRingerOn:J

    return-void
.end method

.method public setActiveStream(I)V
    .locals 2

    .line 350
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected setAudioManagerStreamVolume(III)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public setCaptionsEnabled(Z)V
    .locals 1

    .line 298
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "odi_captions_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setEnableDialogs(ZZ)V
    .locals 0

    .line 369
    iput-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mShowVolumeDialog:Z

    .line 370
    iput-boolean p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mShowSafetyWarning:Z

    return-void
.end method

.method public setExitCondition(Landroid/service/notification/Condition;)V
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 336
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setRingerMode(IZ)V
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 326
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setStreamMute(IZ)V
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setStreamVolume(II)V
    .locals 1

    .line 345
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 346
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setUserActivityListener(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$UserActivityListener;)V
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    monitor-enter p0

    .line 278
    :try_start_0
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mUserActivityListener:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$UserActivityListener;

    .line 279
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected setVolumeController()V
    .locals 2

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mVolumeController:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "ColorVolumeDialogControllerImpl"

    const-string v1, "Unable to set the volume controller"

    .line 197
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 231
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    if-nez p1, :cond_0

    return-void

    .line 233
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ColorVolumeDialogControllerImpl"

    const-string p1, "No volume policy api"

    .line 235
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setZenMode(I)V
    .locals 2

    .line 330
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 331
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showDndTile(Z)V
    .locals 3

    const-string v0, "Volume"

    const-string v1, "ColorVolumeDialogControllerImpl"

    const-string v2, "showDndTile"

    .line 781
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/DndTile;->setVisible(Landroid/content/Context;Z)V

    return-void
.end method

.method public userActivity()V
    .locals 2

    .line 319
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->removeMessages(I)V

    .line 321
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mWorker:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->sendEmptyMessage(I)Z

    return-void
.end method

.method public vibrate(Landroid/os/VibrationEffect;)V
    .locals 3

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "linearmotor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/os/LinearmotorVibrator;

    if-eqz v0, :cond_0

    .line 400
    new-instance v1, Lcom/oppo/os/WaveformEffect$Builder;

    invoke-direct {v1}, Lcom/oppo/os/WaveformEffect$Builder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/oppo/os/WaveformEffect$Builder;->setEffectType(I)Lcom/oppo/os/WaveformEffect$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/os/WaveformEffect$Builder;->build()Lcom/oppo/os/WaveformEffect;

    move-result-object v1

    .line 401
    invoke-virtual {v0, v1}, Lcom/oppo/os/LinearmotorVibrator;->vibrate(Lcom/oppo/os/WaveformEffect;)V

    goto :goto_0

    .line 403
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mHasVibrator:Z

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    :catch_0
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mHasVibrator:Z

    if-eqz v0, :cond_1

    .line 409
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mVibrator:Landroid/os/Vibrator;

    sget-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :cond_1
    :goto_0
    return-void
.end method
