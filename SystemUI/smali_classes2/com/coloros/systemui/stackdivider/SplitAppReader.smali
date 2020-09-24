.class public final Lcom/coloros/systemui/stackdivider/SplitAppReader;
.super Ljava/lang/Object;
.source "SplitAppReader.java"


# static fields
.field private static final ALLOW_PKG:Ljava/lang/String; = "com.tencent.mm"

.field private static final DEFAULT_FORCE_FULL_SCREEN_ACTIVITY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORCE_PKG_NAME:Ljava/lang/String; = "bp"

.field private static final FULL_NAME:Ljava/lang/String; = "full"

.field private static final PKG_ATTR:Ljava/lang/String; = "attr"

.field private static final PKG_NAME:Ljava/lang/String; = "p"

.field private static final SPLIT_WINDOW_APP_FILE_PATH:Ljava/lang/String; = "config/sys_wms_split_app.xml"

.field private static final TAG:Ljava/lang/String; = "SplitAppReader"

.field private static final TOAST_NAME:Ljava/lang/String; = "toast"

.field private static sHasUpdate:Z

.field private static volatile sIns:Lcom/coloros/systemui/stackdivider/SplitAppReader;


# instance fields
.field private mAllowPackageName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mForceFUllScreenActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForcePackageName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mToastPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 53
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/coloros/systemui/stackdivider/SplitAppReader;->DEFAULT_FORCE_FULL_SCREEN_ACTIVITY:Ljava/util/List;

    .line 55
    sput-boolean v0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->sHasUpdate:Z

    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->sIns:Lcom/coloros/systemui/stackdivider/SplitAppReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mAllowPackageName:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mForcePackageName:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mForceFUllScreenActivities:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mToastPackageList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mLock:Ljava/lang/Object;

    .line 80
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mContext:Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/SplitAppReader;->registerSplitWindowFileChangeListener()V

    .line 82
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/SplitAppReader;->getSplitWindowApp()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/stackdivider/SplitAppReader;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/SplitAppReader;->getSplitWindowApp()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/stackdivider/SplitAppReader;
    .locals 2

    .line 69
    sget-object v0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->sIns:Lcom/coloros/systemui/stackdivider/SplitAppReader;

    if-nez v0, :cond_1

    .line 70
    const-class v0, Lcom/coloros/systemui/stackdivider/SplitAppReader;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/stackdivider/SplitAppReader;->sIns:Lcom/coloros/systemui/stackdivider/SplitAppReader;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/coloros/systemui/stackdivider/SplitAppReader;

    invoke-direct {v1}, Lcom/coloros/systemui/stackdivider/SplitAppReader;-><init>()V

    sput-object v1, Lcom/coloros/systemui/stackdivider/SplitAppReader;->sIns:Lcom/coloros/systemui/stackdivider/SplitAppReader;

    .line 74
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 76
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->sIns:Lcom/coloros/systemui/stackdivider/SplitAppReader;

    return-object v0
.end method

.method private getSplitWindowApp()V
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mContext:Landroid/content/Context;

    const-string v3, "config/sys_wms_split_app.xml"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/color/settings/ColorSettings;->readConfig(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mAllowPackageName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mForcePackageName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 149
    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mForceFUllScreenActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 152
    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mToastPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 155
    invoke-direct {p0, v1}, Lcom/coloros/systemui/stackdivider/SplitAppReader;->readAppListFromXML(Ljava/io/InputStream;)V

    .line 157
    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mForceFUllScreenActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mForceFUllScreenActivities:Ljava/util/ArrayList;

    sget-object v2, Lcom/coloros/systemui/stackdivider/SplitAppReader;->DEFAULT_FORCE_FULL_SCREEN_ACTIVITY:Ljava/util/List;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 166
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p0, "SplitAppReader"

    const-string v1, "getSplitWindowApp() close inputStream error!"

    .line 168
    :goto_0
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    :try_start_3
    const-string p0, "SplitAppReader"

    const-string v2, "getSplitWindowApp() error!"

    .line 162
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    .line 166
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_2
    :try_start_5
    const-string p0, "SplitAppReader"

    const-string v1, "getSplitWindowApp() close inputStream error!"

    goto :goto_0

    .line 172
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :goto_2
    if-eqz v1, :cond_2

    .line 166
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catch_3
    :try_start_7
    const-string v1, "SplitAppReader"

    const-string v2, "getSplitWindowApp() close inputStream error!"

    .line 168
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_2
    :goto_3
    throw p0

    :catchall_1
    move-exception p0

    .line 172
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0
.end method

.method private readAppListFromXML(Ljava/io/InputStream;)V
    .locals 7

    .line 177
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 178
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 179
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const-string v3, "attr"

    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    :try_start_1
    const-string v5, "p"

    .line 182
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    iget-object v3, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mAllowPackageName:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sput-boolean v2, Lcom/coloros/systemui/stackdivider/SplitAppReader;->sHasUpdate:Z

    goto :goto_1

    :cond_0
    if-ne p1, v4, :cond_1

    const-string v5, "bp"

    .line 186
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 188
    iget-object v3, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mForcePackageName:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sput-boolean v2, Lcom/coloros/systemui/stackdivider/SplitAppReader;->sHasUpdate:Z

    goto :goto_1

    :cond_1
    if-ne p1, v4, :cond_2

    const-string v2, "full"

    .line 190
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 192
    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mForceFUllScreenActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-ne p1, v4, :cond_3

    const-string p1, "toast"

    .line 195
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 196
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 197
    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mToastPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_3
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SplitAppReader"

    const-string p1, "readAppListFromXML() error!"

    .line 203
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private registerSplitWindowFileChangeListener()V
    .locals 3

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SplitWindowFileChangeThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance v1, Lcom/coloros/systemui/stackdivider/SplitAppReader$1;

    new-instance v2, Landroid/os/Handler;

    .line 89
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/stackdivider/SplitAppReader$1;-><init>(Lcom/coloros/systemui/stackdivider/SplitAppReader;Landroid/os/Handler;)V

    .line 96
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mContext:Landroid/content/Context;

    const-string v0, "config/sys_wms_split_app.xml"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/color/settings/ColorSettings;->registerChangeListener(Landroid/content/Context;Ljava/lang/String;ILcom/color/settings/ColorSettingsChangeListener;)V

    return-void
.end method


# virtual methods
.method public isForceFullScreenActivity(Ljava/lang/String;)Z
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "StackDivider"

    const-string v2, "SplitAppReader"

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForceFullScreenActivity activityName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mForceFUllScreenActivities:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mForceFUllScreenActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mForceFUllScreenActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isInBlackList(Ljava/lang/String;)Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mForcePackageName:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 117
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mForcePackageName:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 119
    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isInConfigList(Ljava/lang/String;)Z
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mAllowPackageName:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 104
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mAllowPackageName:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 106
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    sget-boolean v0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->sHasUpdate:Z

    if-nez v0, :cond_1

    const-string p0, "com.tencent.mm"

    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :cond_1
    return p0

    :catchall_0
    move-exception p0

    .line 106
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isInToastList(Ljava/lang/String;)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/SplitAppReader;->mToastPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
