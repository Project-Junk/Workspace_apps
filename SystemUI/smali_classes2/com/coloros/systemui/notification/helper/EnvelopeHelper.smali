.class public Lcom/coloros/systemui/notification/helper/EnvelopeHelper;
.super Lcom/coloros/systemui/notification/helper/Helper;
.source "EnvelopeHelper.java"

# interfaces
.implements Lcom/coloros/systemui/notification/helper/ListenerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/helper/EnvelopeHelper$EnvelopeStateChangeCallback;,
        Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/systemui/notification/helper/Helper;",
        "Lcom/coloros/systemui/notification/helper/ListenerController<",
        "Lcom/coloros/systemui/notification/helper/EnvelopeHelper$EnvelopeStateChangeCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUTO_CANCEL_TIME:I = 0x5265c00

.field public static final CANCEL_ENVELOPE:Ljava/lang/String; = "com.android.systemui.envelope.cancel_envelope"

.field public static final DENSITY_CHANGED_ACTION:Ljava/lang/String; = "oppo.intent.config.density.change"

.field public static final ENABLED:I = 0x1

.field public static final ENVELOPE_CATEGORY:Ljava/lang/String; = "envelope_category"

.field public static final ENVELOPE_COUNT_KEY:Ljava/lang/String; = "envelope_count_key"

.field public static final ENVELOPE_NOTIFICATION:Ljava/lang/String; = "com.android.systemui.envelope.envelope_notification"

.field public static final ENVELOPE_PRE_KEY:Ljava/lang/String; = "envelope_pre_key"

.field public static final ENVELOPE_RELATED_UID:Ljava/lang/String; = "envelope_related_uid"

.field public static final ENVELOPE_TAG:Ljava/lang/String; = "envelope"

.field private static final LOCAL_LIST:[Ljava/lang/String;

.field public static final LOCK_SCREEN_VISIBILITY:Ljava/lang/String; = "lock_screen_visibility"

.field public static final MULTI_USER_ID:I = 0x3e7

.field public static final NONE_ENVELOPE:I = 0x0

.field public static final NOTIFICATION_SOURCE:Ljava/lang/String; = "notification_source"

.field public static final QQ_ENVELOPE:I = 0x2

.field public static final RELATED_KEY:Ljava/lang/String; = "related_key"

.field public static final SOURCE_FROM_QQ:Ljava/lang/String; = "source_from_qq"

.field public static final SOURCE_FROM_WECHAT:Ljava/lang/String; = "source_from_wechat"

.field public static final TAG:Ljava/lang/String; = "Notification--EnvelopeHelper"

.field public static final TRANSITIVE_ENVELOPE:Ljava/lang/String; = "transitive_envelope"

.field public static final USER_ID:I = 0x0

.field public static final WECHAT_ENVELOPE:I = 0x1

.field public static final WECHAT_GROUP_TAG:Ljava/lang/String; = "@chatroom"

.field public static final WECHAT_USER:Ljava/lang/String; = "Main_User"

.field private static final mBaseNotificationID:I = 0x4e20


# instance fields
.field private mAutoOpenNotificationHandler:Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;

.field private mCloneQqEnvelopeList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCloneWeChatEnvelopeList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mEnvelopeAssistantStatus:I

.field private mEnvelopeAutoOpenObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

.field private mEnvelopeCallBack:Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;

.field private mEnvelopeEnableObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

.field private final mEnvelopeNotificationLock:Ljava/lang/Object;

.field private mEnvelopeSoundObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

.field private mEnvelopeStateChangeCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/coloros/systemui/notification/helper/EnvelopeHelper$EnvelopeStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEnvelopeViewManager:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoOpen:I

.field private mQqEnvelopeHandler:Lcom/coloros/systemui/notification/envelope/QqEnvelopeHandler;

.field private mQqEnvelopeList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundEnable:I

.field private mSplitScreenReplyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mWeChatEnvelopeHandler:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;

.field private mWeChatEnvelopeList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "com.android.mms"

    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mobileqq"

    const-string v3, "com.sina.weibo"

    const-string v4, "com.twitter.android"

    const-string v5, "org.telegram.messenger"

    const-string v6, "com.whatsapp"

    const-string v7, "com.facebook.orca"

    const-string v8, "com.viber.voip"

    const-string v9, "com.imo.android.imoim"

    const-string v10, "jp.naver.line.android"

    .line 88
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->LOCAL_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/Helper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    sget-object p2, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->LOCAL_LIST:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mSplitScreenReplyList:Ljava/util/List;

    .line 105
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeNotificationLock:Ljava/lang/Object;

    .line 109
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mWeChatEnvelopeList:Ljava/util/HashMap;

    .line 110
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mCloneWeChatEnvelopeList:Ljava/util/HashMap;

    .line 111
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mQqEnvelopeList:Ljava/util/HashMap;

    .line 112
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mCloneQqEnvelopeList:Ljava/util/HashMap;

    .line 119
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeStateChangeCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 121
    new-instance p1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$1;-><init>(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeEnableObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

    .line 139
    new-instance p1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$2;-><init>(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeAutoOpenObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

    .line 148
    new-instance p1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$3;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$3;-><init>(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeSoundObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

    .line 386
    new-instance p1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$4;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$4;-><init>(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeCallBack:Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeAssistantStatus:I

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeAssistantStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeStateChangeCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeViewManager:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    return-object p0
.end method

.method static synthetic access$302(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mIsAutoOpen:I

    return p1
.end method

.method static synthetic access$402(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mSoundEnable:I

    return p1
.end method

.method static synthetic access$600(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mAutoOpenNotificationHandler:Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;

    return-object p0
.end method

.method private cancelAllQqEnvelope()V
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    .line 340
    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mQqEnvelopeList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;

    .line 341
    invoke-static {v3}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->access$500(Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mQqEnvelopeList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 344
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private cancelAllWeChatEnvelope(I)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_1

    .line 299
    :try_start_0
    sget-boolean p1, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p1, :cond_0

    const-string p1, "Notification--EnvelopeHelper"

    const-string v1, "clear wechat envelope list"

    .line 300
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mWeChatEnvelopeList:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->clearEnvelope(Ljava/util/HashMap;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/16 v1, 0x3e7

    if-ne p1, v1, :cond_3

    .line 304
    sget-boolean p1, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p1, :cond_2

    const-string p1, "Notification--EnvelopeHelper"

    const-string v1, "clear wechat clone envelope list"

    .line 305
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mCloneWeChatEnvelopeList:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->clearEnvelope(Ljava/util/HashMap;)V

    .line 309
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeViewManager:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->removeHeadUpViewImmediately()V

    .line 310
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private clearEnvelope(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;",
            ">;)V"
        }
    .end annotation

    .line 314
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    .line 315
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;

    .line 316
    invoke-static {v1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->access$500(Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private generateNotificationID(Ljava/lang/String;)I
    .locals 4

    .line 322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/16 v0, 0x4e20

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "\\|"

    .line 325
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 327
    array-length v2, p0

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 329
    :try_start_0
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateNotificationID error--key:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Notification"

    const-string v2, "Notification--EnvelopeHelper"

    invoke-static {p1, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method private getEnvelopeRecord(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;"
        }
    .end annotation

    .line 277
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;

    .line 279
    invoke-virtual {p0, p3}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->setKey(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, p4}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->setLockScreenVisibility(I)V

    .line 281
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->increaseCount()V

    goto :goto_0

    .line 283
    :cond_0
    new-instance v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;

    invoke-direct {p0, p3}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->generateNotificationID(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1, p3, p4}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;-><init>(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;ILjava/lang/String;I)V

    .line 284
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private increaseEnvelopeCount()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeCount(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 292
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setEnvelopeCount(Landroid/content/Context;I)V

    .line 293
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->notifyEnvelopeCountChanged(Landroid/content/Context;)V

    return-void
.end method

.method private shouldReceive(Landroid/app/Notification;)Z
    .locals 1

    .line 348
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.text"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 349
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getInstance()Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    move-result-object p1

    const-string v0, "envelope_content_tag"

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getEnvelopeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 351
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 353
    sget-boolean p1, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p1, :cond_0

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notification content = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Notification--EnvelopeHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static updateEnvelopePublicContentView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 468
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 469
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_2

    .line 470
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v1

    const-class v2, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 471
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->isEnvelopeNotification(Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const v1, 0x7f1108bb

    .line 473
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v1, 0x1020016

    .line 474
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 475
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 478
    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_id_app_name_text:I

    invoke-virtual {p1, v1}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    :cond_0
    const/4 p1, 0x0

    if-eqz v1, :cond_1

    .line 481
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f110327

    .line 482
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    if-eqz v0, :cond_2

    .line 485
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 486
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lcom/coloros/systemui/notification/helper/EnvelopeHelper$EnvelopeStateChangeCallback;)V
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeStateChangeCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$EnvelopeStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->addListener(Lcom/coloros/systemui/notification/helper/EnvelopeHelper$EnvelopeStateChangeCallback;)V

    return-void
.end method

.method public cancelAllEnvelope(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 224
    invoke-direct {p0, p2}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->cancelAllWeChatEnvelope(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->cancelAllQqEnvelope()V

    :cond_1
    :goto_0
    return-void
.end method

.method public enqueueEnvelopeNotification(ILandroid/app/Notification;Ljava/lang/String;II)V
    .locals 13

    move-object v0, p0

    move v6, p1

    move-object v5, p2

    move-object/from16 v1, p3

    move/from16 v2, p5

    if-eqz v6, :cond_7

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 184
    :cond_0
    invoke-direct {p0, p2}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->shouldReceive(Landroid/app/Notification;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "Notification--EnvelopeHelper"

    const-string v1, "enqueueEnvelopeNotification: intercept envelope"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 188
    :cond_1
    sget-boolean v3, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v3, :cond_2

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueueEnvelopeNotification: category = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " notification = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " relatedKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lockScreenVisibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Notification--EnvelopeHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move/from16 v7, p4

    .line 195
    :goto_0
    iget-object v11, v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeNotificationLock:Ljava/lang/Object;

    monitor-enter v11

    .line 196
    :try_start_0
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getInstance()Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    move-result-object v3

    const-string v4, "envelope_user_field"

    invoke-virtual {v3, v4}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getEnvelopeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    iget-object v4, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v0, "Notification--EnvelopeHelper"

    const-string v1, "enqueueEnvelopeNotification: wechatUserID is null"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    monitor-exit v11

    return-void

    .line 202
    :cond_3
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getInstance()Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    move-result-object v3

    const-string v4, "envelope_group_tag"

    invoke-virtual {v3, v4}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getEnvelopeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v6, v4, :cond_6

    .line 205
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-nez v4, :cond_4

    .line 206
    iget-object v3, v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mWeChatEnvelopeList:Ljava/util/HashMap;

    invoke-direct {p0, v3, v8, v1, v2}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->getEnvelopeRecord(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/16 v4, 0x3e7

    .line 207
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v4, v9, :cond_5

    .line 208
    iget-object v3, v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mCloneWeChatEnvelopeList:Ljava/util/HashMap;

    invoke-direct {p0, v3, v8, v1, v2}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->getEnvelopeRecord(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;

    move-result-object v3

    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 211
    iget-object v1, v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mWeChatEnvelopeHandler:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;

    iget-object v2, v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    .line 212
    invoke-static {v3}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->access$500(Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;)I

    move-result v4

    invoke-virtual {v3}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->getCount()I

    move-result v9

    iget v12, v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mIsAutoOpen:I

    move v3, v4

    move v4, v9

    move-object v5, p2

    move v6, p1

    move/from16 v7, p4

    move v9, v12

    .line 211
    invoke-virtual/range {v1 .. v10}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;->handleEnvelopeNotification(Landroid/content/Context;IILandroid/app/Notification;IILjava/lang/String;IZ)V

    .line 218
    :cond_6
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->increaseEnvelopeCount()V

    .line 219
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :goto_2
    const-string v0, "Notification--EnvelopeHelper"

    const-string v1, "enqueueEnvelopeNotification: category or notification is null"

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAutoOpenStatus()I
    .locals 0

    .line 267
    iget p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mIsAutoOpen:I

    return p0
.end method

.method public getSoundStatus()I
    .locals 0

    .line 263
    iget p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mSoundEnable:I

    return p0
.end method

.method public headsUpAppNotSupportMultiWindow(Ljava/lang/String;I)Z
    .locals 0

    .line 372
    invoke-static {p1, p2}, Lcom/coloros/common/util/AppInfoUtil;->isAppAtTop(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 373
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->isSplitScreenReplyApp(Ljava/lang/String;)Z

    move-result p0

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

.method public initHelper(Landroid/os/Handler;)V
    .locals 3

    .line 162
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mHandler:Landroid/os/Handler;

    .line 163
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 164
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeAssistantEnable(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeAssistantStatus:I

    .line 165
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeAutoOpenEnable(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mIsAutoOpen:I

    .line 166
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeNoticeSoundEnable(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mSoundEnable:I

    .line 167
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeEnableObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 168
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeAutoOpenObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 169
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeSoundObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 170
    new-instance p1, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeCallBack:Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;

    invoke-direct {p1, v0}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;-><init>(Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mWeChatEnvelopeHandler:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;

    .line 171
    new-instance p1, Lcom/coloros/systemui/notification/envelope/QqEnvelopeHandler;

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeCallBack:Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;

    invoke-direct {p1, v0}, Lcom/coloros/systemui/notification/envelope/QqEnvelopeHandler;-><init>(Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mQqEnvelopeHandler:Lcom/coloros/systemui/notification/envelope/QqEnvelopeHandler;

    .line 172
    new-instance p1, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mAutoOpenNotificationHandler:Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;

    .line 173
    new-instance p1, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p1, v0, v1, v2}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeViewManager:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    .line 174
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeViewManager:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->registerReceiver()V

    .line 175
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getInstance()Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->init(Landroid/content/Context;)V

    return-void
.end method

.method public isClickHeadUp()Z
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeViewManager:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->isClickHeadUp()Z

    move-result p0

    return p0
.end method

.method public isEnvelopeNotification(Landroid/app/Notification;)Z
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "Notification--EnvelopeHelper"

    const-string v0, "isEnvelopeNotification: notification is null"

    .line 232
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 234
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "notification_source"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isSplitScreenReplyApp(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 377
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mSplitScreenReplyList:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 379
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUpgradeFromOldVersion(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    const-string v0, "envelope_pre_key"

    .line 497
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "envelope_count_key"

    .line 498
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public removeListener(Lcom/coloros/systemui/notification/helper/EnvelopeHelper$EnvelopeStateChangeCallback;)V
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mEnvelopeStateChangeCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeListener(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$EnvelopeStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->removeListener(Lcom/coloros/systemui/notification/helper/EnvelopeHelper$EnvelopeStateChangeCallback;)V

    return-void
.end method

.method public restoreEnvelopeCount(Landroid/content/Context;)V
    .locals 3

    const/4 p0, 0x0

    const-string v0, "envelope_pre_key"

    .line 503
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "envelope_count_key"

    .line 504
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    invoke-static {p1, v2}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setEnvelopeCount(Landroid/content/Context;I)V

    .line 508
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 509
    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 510
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public shouldEncrypted(Landroid/app/Notification;I)Z
    .locals 1

    .line 249
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "notification_source"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "source_from_wechat"

    .line 250
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 251
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class p1, Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    const-string p1, "com.tencent.mm"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->needEncrypted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_0
    const-string p1, "source_from_qq"

    .line 254
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 255
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class p1, Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    const-string p1, "com.tencent.mobileqq"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->needEncrypted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public shouldEnvelopeShowSplitReply(Ljava/lang/String;I)Z
    .locals 1

    .line 365
    invoke-static {}, Lcom/coloros/common/util/FreeformUtil;->inMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    .line 366
    invoke-static {v0}, Lcom/coloros/common/util/FreeformUtil;->foregroundAppNotSupportMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->headsUpAppNotSupportMultiWindow(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    .line 368
    invoke-static {p0}, Lcom/coloros/common/util/FreeformUtil;->inFreeForm(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public suppressByTag(Landroid/app/Notification;)Z
    .locals 2

    .line 241
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v0, 0x0

    const-string v1, "envelope"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "notification_source"

    .line 242
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateSplitScreenReplyList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mSplitScreenReplyList:Ljava/util/List;

    return-void
.end method
