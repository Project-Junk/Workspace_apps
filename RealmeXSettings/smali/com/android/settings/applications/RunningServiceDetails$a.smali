.class public final Lcom/android/settings/applications/RunningServiceDetails$a;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningServiceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field public b:Landroid/widget/Button;

.field c:Landroid/widget/Button;

.field public d:Lcom/android/settings/applications/y$g;

.field public e:Lcom/android/settings/applications/RunningProcessesView$a;

.field f:Lcom/android/settings/applications/RunningProcessesView$c;

.field g:Landroid/app/PendingIntent;

.field h:Landroid/content/ComponentName;

.field final synthetic i:Lcom/android/settings/applications/RunningServiceDetails;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->d:Lcom/android/settings/applications/y$g;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 101
    iget-object p1, v0, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-static {p1, v0}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V

    return-void

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {p1}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v0, v0, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->stopService(Landroid/content/Intent;)Z

    .line 107
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->i:Lcom/android/settings/applications/y$d;

    if-nez p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->c:Lcom/android/settings/applications/y;

    invoke-virtual {p1}, Lcom/android/settings/applications/y;->a()V

    .line 110
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {p1}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    iget-boolean p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->h:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->i:Lcom/android/settings/applications/y$d;

    iget-object p1, p1, Lcom/android/settings/applications/y$d;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v1, :cond_2

    .line 114
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->c:Lcom/android/settings/applications/y;

    invoke-virtual {p1}, Lcom/android/settings/applications/y;->a()V

    .line 115
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {p1}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->c:Lcom/android/settings/applications/y;

    invoke-virtual {p1}, Lcom/android/settings/applications/y;->a()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 122
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    const-string v2, "RunningServicesDetails"

    if-ne p1, v0, :cond_6

    .line 123
    new-instance p1, Landroid/app/ApplicationErrorReport;

    invoke-direct {p1}, Landroid/app/ApplicationErrorReport;-><init>()V

    const/4 v0, 0x5

    .line 124
    iput v0, p1, Landroid/app/ApplicationErrorReport;->type:I

    .line 125
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->d:Lcom/android/settings/applications/y$g;

    iget-object v0, v0, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->h:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->d:Lcom/android/settings/applications/y$g;

    iget-object v0, v0, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    iput-object v0, p1, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Landroid/app/ApplicationErrorReport;->time:J

    .line 129
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->d:Lcom/android/settings/applications/y$g;

    iget-object v0, v0, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 131
    new-instance v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>()V

    .line 133
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->e:Lcom/android/settings/applications/RunningProcessesView$a;

    iget-wide v4, v4, Lcom/android/settings/applications/RunningProcessesView$a;->d:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->e:Lcom/android/settings/applications/RunningProcessesView$a;

    iget-wide v6, v6, Lcom/android/settings/applications/RunningProcessesView$a;->d:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    goto :goto_1

    :cond_1
    const-wide/16 v4, -0x1

    .line 136
    iput-wide v4, v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    .line 138
    :goto_1
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->d:Lcom/android/settings/applications/y$g;

    iget-object v5, v5, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->d:Lcom/android/settings/applications/y$g;

    iget-object v6, v6, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v5}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v6, "service_dump.txt"

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    .line 143
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v8, "activity"

    .line 144
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "-a"

    aput-object v11, v10, v1

    const-string v1, "service"

    aput-object v1, v10, v3

    const/4 v1, 0x2

    .line 145
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v1

    .line 144
    invoke-static {v8, v9, v10}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v7, v6

    goto/16 :goto_8

    :catch_1
    move-exception v1

    move-object v7, v6

    :goto_3
    :try_start_3
    const-string v3, "Can\'t dump service: "

    .line 147
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_2

    goto :goto_2

    .line 153
    :catch_2
    :cond_2
    :goto_4
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 154
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    new-array v3, v3, [B

    .line 155
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 156
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v6, v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 160
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_7

    :catch_3
    move-exception v3

    move-object v6, v1

    goto :goto_5

    :catchall_3
    move-exception p1

    move-object v1, v6

    goto :goto_7

    :catch_4
    move-exception v3

    :goto_5
    :try_start_7
    const-string v1, "Can\'t read service dump: "

    .line 158
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v6, :cond_3

    .line 160
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 162
    :catch_5
    :cond_3
    :goto_6
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Details: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iput-object v0, p1, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APP_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->h:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.BUG_REPORT"

    .line 167
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 168
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/RunningServiceDetails;->startActivity(Landroid/content/Intent;)V

    return-void

    :goto_7
    if-eqz v1, :cond_4

    .line 160
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 161
    :catch_6
    :cond_4
    throw p1

    :goto_8
    if-eqz v7, :cond_5

    .line 149
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 150
    :catch_7
    :cond_5
    throw p1

    .line 173
    :cond_6
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->g:Landroid/app/PendingIntent;

    if-eqz p1, :cond_7

    .line 175
    :try_start_b
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {p1}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->g:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x10080000

    const/high16 v7, 0x80000

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroidx/fragment/app/FragmentActivity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_b
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_b} :catch_8

    return-void

    :catch_8
    move-exception p1

    .line 184
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_9
    move-exception p1

    .line 182
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_a
    move-exception p1

    .line 180
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 186
    :cond_7
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->d:Lcom/android/settings/applications/y$g;

    if-eqz p1, :cond_8

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningServiceDetails$a;->a(Z)V

    return-void

    .line 188
    :cond_8
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->e:Lcom/android/settings/applications/RunningProcessesView$a;

    iget-object p1, p1, Lcom/android/settings/applications/RunningProcessesView$a;->b:Lcom/android/settings/applications/y$c;

    iget-boolean p1, p1, Lcom/android/settings/applications/y$c;->m:Z

    if-eqz p1, :cond_9

    .line 190
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->a:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->e:Lcom/android/settings/applications/RunningProcessesView$a;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$a;->b:Lcom/android/settings/applications/y$c;

    iget-object v0, v0, Lcom/android/settings/applications/y$c;->c:Landroid/content/pm/PackageItemInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {p1}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void

    .line 194
    :cond_9
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->a:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->e:Lcom/android/settings/applications/RunningProcessesView$a;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$a;->b:Lcom/android/settings/applications/y$c;

    iget-object v0, v0, Lcom/android/settings/applications/y$c;->c:Landroid/content/pm/PackageItemInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$a;->i:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {p1}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void
.end method
