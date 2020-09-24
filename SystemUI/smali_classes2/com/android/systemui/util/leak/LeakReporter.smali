.class public Lcom/android/systemui/util/leak/LeakReporter;
.super Ljava/lang/Object;
.source "LeakReporter.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final FILEPROVIDER_AUTHORITY:Ljava/lang/String; = "com.android.systemui.fileprovider"

.field static final LEAK_DIR:Ljava/lang/String; = "leak"

.field static final LEAK_DUMP:Ljava/lang/String; = "leak.dump"

.field static final LEAK_HPROF:Ljava/lang/String; = "leak.hprof"

.field static final TAG:Ljava/lang/String; = "LeakReporter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

.field private final mLeakReportEmail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/leak/LeakDetector;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "leak_report_email"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    .line 73
    iput-object p3, p0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakReportEmail:Ljava/lang/String;

    return-void
.end method

.method private getIntent(Ljava/io/File;Ljava/io/File;)Landroid/content/Intent;
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    const-string v1, "com.android.systemui.fileprovider"

    invoke-static {v0, v1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 119
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    .line 125
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "application/vnd.android.leakreport"

    .line 126
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "SystemUI leak report"

    .line 129
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Build info: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "ro.build.description"

    .line 135
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    new-instance v3, Landroid/content/ClipData;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/content/ClipData$Item;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v5, p2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-direct {v3, v5, v2, v4}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 139
    new-array v2, v1, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    .line 141
    new-instance v2, Landroid/content/ClipData$Item;

    invoke-direct {v2, v5, v5, v5, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-virtual {v3, v2}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 142
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const-string p1, "android.intent.extra.STREAM"

    .line 145
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 147
    iget-object p0, p0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakReportEmail:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 149
    new-array p1, v1, [Ljava/lang/String;

    aput-object p0, p1, v4

    const-string p0, "android.intent.extra.EMAIL"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public dumpLeak(I)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "leak"

    const-string v2, "LeakReporter"

    .line 78
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 81
    new-instance v4, Ljava/io/File;

    const-string v5, "leak.hprof"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 84
    new-instance v5, Ljava/io/File;

    const-string v6, "leak.dump"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v6, 0x0

    .line 86
    :try_start_1
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    const-string v8, "Build: "

    .line 87
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "ro.build.description"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 89
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 90
    iget-object v8, v0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/String;

    invoke-virtual {v8, v9, v7, v11}, Lcom/android/systemui/util/leak/LeakDetector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 91
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 94
    iget-object v3, v0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/NotificationManager;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 96
    new-instance v6, Landroid/app/NotificationChannel;

    const-string v7, "Leak Alerts"

    const/4 v8, 0x4

    invoke-direct {v6, v1, v7, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v6, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 100
    invoke-virtual {v3, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 101
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, v0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 103
    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string v7, "Memory Leak Detected"

    .line 104
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string v7, "SystemUI has detected %d leaked objects. Tap to send"

    new-array v1, v1, [Ljava/lang/Object;

    .line 106
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v10

    .line 105
    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v6, Lcom/coloros/common/util/ResourceUtil;->android_drawable_stat_sys_adb:I

    .line 107
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v11, v0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    .line 109
    invoke-direct {v0, v4, v5}, Lcom/android/systemui/util/leak/LeakReporter;->getIntent(Ljava/io/File;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v13

    const/high16 v14, 0x8000000

    const/4 v15, 0x0

    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 108
    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v3, v2, v10, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 85
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v6, :cond_0

    .line 92
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    const-string v1, "Couldn\'t dump heap for leak"

    .line 113
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
