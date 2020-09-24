.class public Lcom/coloros/systemui/gesture/GestureAppList;
.super Ljava/lang/Object;
.source "GestureAppList.java"


# static fields
.field public static final DISABLE_GESTRUE_ANIM:Ljava/lang/String; = "Disable_Gesture_Anim"

.field public static final DISABLE_GESTRUE_ANIM_KEY:Ljava/lang/String; = "disbale_gesture_anim_list"

.field private static final TAG:Ljava/lang/String; = "GestureAppList"

.field private static sDefaultDisableGestureAnimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisableGestureAnimActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisableGestureAnimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/gesture/GestureAppList;->sDefaultDisableGestureAnimList:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/gesture/GestureAppList;->sDisableGestureAnimList:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/gesture/GestureAppList;->sDisableGestureAnimActivityList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultDisableGestureAnimList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/coloros/systemui/gesture/GestureAppList;->sDefaultDisableGestureAnimList:Ljava/util/List;

    return-object v0
.end method

.method public static getDisableGestureAnimActivityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/coloros/systemui/gesture/GestureAppList;->sDisableGestureAnimActivityList:Ljava/util/List;

    return-object v0
.end method

.method public static getDisableGestureAnimList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/coloros/systemui/gesture/GestureAppList;->sDisableGestureAnimList:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized getListFromLocalRomUpdateFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/coloros/systemui/gesture/GestureAppList;

    monitor-enter v0

    .line 81
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "disbale_gesture_anim_list"

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 89
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "sys_systemui_quicksettingstile_blacklist.xml"

    invoke-direct {p1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 91
    invoke-static {}, Lcom/coloros/systemui/gesture/GestureAppList;->getDefaultDisableGestureAnimList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 103
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    .line 113
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 114
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-eqz v3, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    goto :goto_1

    .line 121
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Disable_Gesture_Anim"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "value"

    .line 123
    invoke-interface {p1, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Common"

    const-string v5, "GestureAppList"

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getListFromLocalRomupdateFile_value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_2

    const-string v4, ""

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 127
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 143
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catch_0
    move-exception p0

    :try_start_4
    const-string p1, "NavBar"

    const-string v2, "GestureAppList"

    const-string v3, "Got execption close permReader."

    .line 146
    :goto_2
    invoke-static {p1, v2, v3, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_3

    :catch_3
    :try_start_5
    const-string v2, "NavBar"

    const-string v3, "GestureAppList"

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find or open alarm_filter_packages file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 108
    monitor-exit v0

    return-object p0

    :goto_3
    :try_start_6
    const-string p1, "NavBar"

    const-string v3, "GestureAppList"

    const-string v4, "Got execption parsing permissions."

    .line 139
    invoke-static {p1, v3, v4, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_4

    .line 143
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catch_4
    move-exception p0

    :try_start_8
    const-string p1, "NavBar"

    const-string v2, "GestureAppList"

    const-string v3, "Got execption close permReader."
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    .line 149
    :cond_4
    :goto_4
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    :goto_5
    if-eqz v2, :cond_5

    .line 143
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_6

    :catch_5
    move-exception p1

    :try_start_a
    const-string v1, "NavBar"

    const-string v2, "GestureAppList"

    const-string v3, "Got execption close permReader."

    .line 146
    invoke-static {v1, v2, v3, p1}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    :cond_5
    :goto_6
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 97
    :cond_6
    monitor-exit v0

    return-object v1

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 40
    sget-object p0, Lcom/coloros/systemui/gesture/GestureAppList;->sDefaultDisableGestureAnimList:Ljava/util/List;

    const-string v0, "com.vlocker.locker"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object p0, Lcom/coloros/systemui/gesture/GestureAppList;->sDefaultDisableGestureAnimList:Ljava/util/List;

    const-string v0, "com.sohu.kuaizhan.z3185627042"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object p0, Lcom/coloros/systemui/gesture/GestureAppList;->sDisableGestureAnimActivityList:Ljava/util/List;

    const-string v0, "com.android.systemui.pip.phone.PipMenuActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static initDisableGestureAnimList(Landroid/content/Context;)V
    .locals 1

    const-string v0, "disbale_gesture_anim_list"

    .line 53
    invoke-static {p0, v0}, Lcom/coloros/systemui/gesture/GestureAppList;->getListFromLocalRomUpdateFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 54
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcom/coloros/systemui/gesture/GestureAppList;->sDisableGestureAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    sget-object v0, Lcom/coloros/systemui/gesture/GestureAppList;->sDisableGestureAnimList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 58
    :cond_0
    sget-object p0, Lcom/coloros/systemui/gesture/GestureAppList;->sDisableGestureAnimList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 59
    sget-object p0, Lcom/coloros/systemui/gesture/GestureAppList;->sDisableGestureAnimList:Ljava/util/List;

    sget-object v0, Lcom/coloros/systemui/gesture/GestureAppList;->sDefaultDisableGestureAnimList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static setDisableGestureAnimList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 66
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/coloros/systemui/gesture/GestureAppList;->sDisableGestureAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    sget-object v0, Lcom/coloros/systemui/gesture/GestureAppList;->sDisableGestureAnimList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
