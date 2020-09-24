.class public Lcom/coloros/systemui/common/observer/TalkbackObserver;
.super Lcom/coloros/systemui/common/observer/AbstractObserver;
.source "TalkbackObserver.java"


# static fields
.field public static final ACTION_TALKBACK_SWITCH_CHAGNED:Ljava/lang/String; = "app.intent.action.TALKBACK_SWITCH_CHAGNED"

.field public static final EXTRA_TALKBACK_ENABLED:Ljava/lang/String; = "talkback_enabled"

.field private static final TAG:Ljava/lang/String; = "TalkbackObserver"

.field private static final TALKBACK_PACKAGE:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field private static volatile sInstance:Lcom/coloros/systemui/common/observer/TalkbackObserver;


# instance fields
.field private final mNavListener:Lcom/coloros/systemui/common/observer/IObserverListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;-><init>()V

    .line 45
    new-instance v0, Lcom/coloros/systemui/common/observer/-$$Lambda$TalkbackObserver$8wuWqCRfa7TevHzoY4yLRW3QNN0;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/common/observer/-$$Lambda$TalkbackObserver$8wuWqCRfa7TevHzoY4yLRW3QNN0;-><init>(Lcom/coloros/systemui/common/observer/TalkbackObserver;)V

    iput-object v0, p0, Lcom/coloros/systemui/common/observer/TalkbackObserver;->mNavListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 71
    iget-object v0, p0, Lcom/coloros/systemui/common/observer/TalkbackObserver;->mNavListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/observer/TalkbackObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    return-void
.end method

.method private broadcastTalkbackSwitch(Landroid/content/Context;Z)V
    .locals 1

    .line 109
    new-instance p0, Landroid/content/Intent;

    const-string v0, "app.intent.action.TALKBACK_SWITCH_CHAGNED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "talkback_enabled"

    .line 110
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/common/observer/TalkbackObserver;
    .locals 2

    .line 75
    sget-object v0, Lcom/coloros/systemui/common/observer/TalkbackObserver;->sInstance:Lcom/coloros/systemui/common/observer/TalkbackObserver;

    if-nez v0, :cond_1

    .line 76
    const-class v0, Lcom/coloros/systemui/common/observer/TalkbackObserver;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/observer/TalkbackObserver;->sInstance:Lcom/coloros/systemui/common/observer/TalkbackObserver;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/coloros/systemui/common/observer/TalkbackObserver;

    invoke-direct {v1}, Lcom/coloros/systemui/common/observer/TalkbackObserver;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/observer/TalkbackObserver;->sInstance:Lcom/coloros/systemui/common/observer/TalkbackObserver;

    .line 80
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 82
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/observer/TalkbackObserver;->sInstance:Lcom/coloros/systemui/common/observer/TalkbackObserver;

    return-object v0
.end method

.method public static isTalkbackEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 96
    invoke-static {p0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 97
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 101
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.marvin.talkback"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "enabled_accessibility_services"

    return-object p0
.end method

.method protected getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/coloros/systemui/common/observer/TalkbackObserver;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$0$TalkbackObserver(Z)V
    .locals 4

    .line 46
    iget-object p1, p0, Lcom/coloros/systemui/common/observer/TalkbackObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/coloros/systemui/common/observer/TalkbackObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/common/observer/TalkbackObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 48
    invoke-static {p1}, Lcom/coloros/systemui/common/observer/TalkbackObserver;->isTalkbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/common/observer/TalkbackObserver;->broadcastTalkbackSwitch(Landroid/content/Context;Z)V

    .line 51
    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavType(Landroid/content/Context;)I

    move-result p0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange, navType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    const-string v3, "TalkbackObserver"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 53
    invoke-static {p1, v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setVirtualKeyHideEnable(Landroid/content/Context;I)V

    if-eqz p0, :cond_3

    if-eq p0, v0, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f11056e

    .line 61
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const p0, 0x7f11056f

    .line 58
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 66
    :cond_3
    :goto_0
    invoke-static {p1, v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    :cond_4
    :goto_1
    return-void
.end method
