.class public Lcom/coloros/systemui/notification/helper/PrivacyHelper;
.super Lcom/coloros/systemui/notification/helper/Helper;
.source "PrivacyHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PrivacyHelper"

.field private static final UPDATE_DELAY:J = 0x1f4L

.field private static final URI_PRIVARY_PROTECT_CHANGEDE:Landroid/net/Uri;


# instance fields
.field private volatile mHiddenApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mHiddenCloneApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mPackagesObserver:Landroid/database/ContentObserver;

.field private volatile mProtectedIsOn:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSwitchObserver:Landroid/database/ContentObserver;

.field private mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.color.provider.SafeProvider/app_encrypt_data_changed"

    .line 45
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->URI_PRIVARY_PROTECT_CHANGEDE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/Helper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mHiddenApps:Ljava/util/List;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mHiddenCloneApps:Ljava/util/List;

    .line 56
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mMainHandler:Landroid/os/Handler;

    .line 61
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/helper/PrivacyHelper;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->updateProtectedStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/helper/PrivacyHelper;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/notification/helper/PrivacyHelper;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/notification/helper/PrivacyHelper;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->updatePackages()V

    return-void
.end method

.method private createPackagesObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;
    .locals 1

    .line 109
    new-instance v0, Lcom/coloros/systemui/notification/helper/PrivacyHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/notification/helper/PrivacyHelper$2;-><init>(Lcom/coloros/systemui/notification/helper/PrivacyHelper;Landroid/os/Handler;)V

    return-object v0
.end method

.method private createSwitchObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;
    .locals 1

    .line 97
    new-instance v0, Lcom/coloros/systemui/notification/helper/PrivacyHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/notification/helper/PrivacyHelper$1;-><init>(Lcom/coloros/systemui/notification/helper/PrivacyHelper;Landroid/os/Handler;)V

    return-object v0
.end method

.method private declared-synchronized init()V
    .locals 4

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    const-string v0, "PrivacyHelper"

    const-string v1, "Privacy Config already init"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    :try_start_1
    const-class v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 70
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mResolver:Landroid/content/ContentResolver;

    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PrivacyHelper"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 73
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mWorkHandler:Landroid/os/Handler;

    .line 75
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->registerObserver(Landroid/os/Handler;)V

    .line 77
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/notification/helper/-$$Lambda$PrivacyHelper$MjlN9GaDqScLe0r4uoAMz45-mBw;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/notification/helper/-$$Lambda$PrivacyHelper$MjlN9GaDqScLe0r4uoAMz45-mBw;-><init>(Lcom/coloros/systemui/notification/helper/PrivacyHelper;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private registerObserver(Landroid/os/Handler;)V
    .locals 4

    .line 85
    :try_start_0
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->createSwitchObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mSwitchObserver:Landroid/database/ContentObserver;

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "access_control_lock_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->createPackagesObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mPackagesObserver:Landroid/database/ContentObserver;

    .line 90
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->URI_PRIVARY_PROTECT_CHANGEDE:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mPackagesObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PrivacyHelper"

    const-string v0, "register observer not success"

    .line 92
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private updatePackages()V
    .locals 4

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-static {}, Lcom/color/app/ColorAccessControlManager;->getInstance()Lcom/color/app/ColorAccessControlManager;

    move-result-object v2

    sget v3, Lcom/color/app/ColorAccessControlManager;->USER_CURRENT:I

    .line 153
    invoke-virtual {v2, v3}, Lcom/color/app/ColorAccessControlManager;->getPrivacyAppInfo(I)Ljava/util/Map;

    move-result-object v2

    .line 154
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 155
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_0
    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mHiddenApps:Ljava/util/List;

    .line 161
    invoke-static {}, Lcom/color/app/ColorAccessControlManager;->getInstance()Lcom/color/app/ColorAccessControlManager;

    move-result-object v0

    const/16 v2, 0x3e7

    .line 162
    invoke-virtual {v0, v2}, Lcom/color/app/ColorAccessControlManager;->getPrivacyAppInfo(I)Ljava/util/Map;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 164
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 166
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    :cond_1
    iput-object v1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mHiddenCloneApps:Ljava/util/List;

    return-void
.end method

.method private updateProtectedStatus()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "access_control_lock_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mProtectedIsOn:Z

    .line 144
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mProtectedIsOn:Z

    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->updatePackages()V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$init$0$PrivacyHelper()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->updateProtectedStatus()V

    .line 79
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->updatePackages()V

    return-void
.end method

.method public needEncrypted(Ljava/lang/String;I)Z
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mProtectedIsOn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 124
    :cond_0
    sget v0, Lcom/color/app/ColorAccessControlManager;->USER_CURRENT:I

    if-ne p2, v0, :cond_1

    .line 125
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mHiddenApps:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/16 v0, 0x3e7

    if-ne p2, v0, :cond_2

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mHiddenCloneApps:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivacyConfig: {Protected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mProtectedIsOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHiddenApps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mHiddenApps:Ljava/util/List;

    .line 136
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHiddenCloneApps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->mHiddenCloneApps:Ljava/util/List;

    .line 137
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateEncryptPublicContentView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 172
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 173
    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->needEncrypted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const p0, 0x7f11059f

    .line 174
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x1020016

    .line 175
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 178
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
