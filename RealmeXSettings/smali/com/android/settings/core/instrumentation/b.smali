.class public final Lcom/android/settings/core/instrumentation/b;
.super Ljava/lang/Object;
.source "SettingsIntelligenceLogWriter.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/core/instrumentation/b$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/c/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/android/settings/core/instrumentation/b$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/android/settings/core/instrumentation/-$$Lambda$b$2Ct33PK9sMz6zp5EDOPvLNhTs90;

    invoke-direct {v0, p0}, Lcom/android/settings/core/instrumentation/-$$Lambda$b$2Ct33PK9sMz6zp5EDOPvLNhTs90;-><init>(Lcom/android/settings/core/instrumentation/b;)V

    iput-object v0, p0, Lcom/android/settings/core/instrumentation/b;->a:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/core/instrumentation/b;->b:Ljava/util/List;

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SettingsIntelligenceLogWriter"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v1, Lcom/android/settings/core/instrumentation/b$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/settings/core/instrumentation/b$a;-><init>(Lcom/android/settings/core/instrumentation/b;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/core/instrumentation/b;->c:Lcom/android/settings/core/instrumentation/b$a;

    return-void
.end method

.method private synthetic a()V
    .locals 4

    .line 173
    invoke-static {}, Lcom/android/settings/overlay/b;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "IntelligenceLogWriter"

    const-string v1, "context is null"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v1, 0x7f1205f7

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/core/instrumentation/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const v3, 0x7f1205f8

    .line 182
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/android/settings/core/instrumentation/b;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/android/settings/core/instrumentation/b;->a(Ljava/util/List;)[B

    move-result-object v1

    const-string v3, "logs"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 186
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method private synthetic a(Lcom/android/settings/c/b$a;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Ljava/util/List;)[B
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/c/b$a;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "close error"

    const-string v1, "IntelligenceLogWriter"

    .line 136
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 137
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 141
    :try_start_0
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 142
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/c/b$a;

    .line 143
    invoke-virtual {v2}, Lcom/android/settings/c/b$a;->toByteArray()[B

    move-result-object v2

    .line 144
    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 145
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 155
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_2
    const-string v2, "serialize error"

    .line 149
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 155
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 p0, 0x0

    return-object p0

    .line 153
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    .line 155
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    :goto_4
    throw p0
.end method

.method public static synthetic lambda$2Ct33PK9sMz6zp5EDOPvLNhTs90(Lcom/android/settings/core/instrumentation/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/b;->a()V

    return-void
.end method

.method public static synthetic lambda$qxVuC82Z1LEuSGIvJgfvXAzG4kw(Lcom/android/settings/core/instrumentation/b;Lcom/android/settings/c/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/core/instrumentation/b;->a(Lcom/android/settings/c/b$a;)V

    return-void
.end method


# virtual methods
.method public final a(IIILjava/lang/String;I)V
    .locals 2

    .line 119
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v0}, Ljava/time/ZonedDateTime;->now(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 120
    invoke-static {}, Lcom/android/settings/c/b$a;->a()Lcom/android/settings/c/b$a$a;

    move-result-object v1

    .line 121
    invoke-virtual {v1, p1}, Lcom/android/settings/c/b$a$a;->a(I)Lcom/android/settings/c/b$a$a;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p2}, Lcom/android/settings/c/b$a$a;->b(I)Lcom/android/settings/c/b$a$a;

    move-result-object p1

    .line 123
    invoke-virtual {p1, p3}, Lcom/android/settings/c/b$a$a;->c(I)Lcom/android/settings/c/b$a$a;

    move-result-object p1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, ""

    .line 124
    :goto_0
    invoke-virtual {p1, p4}, Lcom/android/settings/c/b$a$a;->a(Ljava/lang/String;)Lcom/android/settings/c/b$a$a;

    move-result-object p1

    .line 125
    invoke-virtual {p1, p5}, Lcom/android/settings/c/b$a$a;->d(I)Lcom/android/settings/c/b$a$a;

    move-result-object p1

    .line 126
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/c/b$a$a;->b(Ljava/lang/String;)Lcom/android/settings/c/b$a$a;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/android/settings/c/b$a$a;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/settings/c/b$a;

    .line 128
    iget-object p2, p0, Lcom/android/settings/core/instrumentation/b;->c:Lcom/android/settings/core/instrumentation/b$a;

    new-instance p3, Lcom/android/settings/core/instrumentation/-$$Lambda$b$qxVuC82Z1LEuSGIvJgfvXAzG4kw;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/core/instrumentation/-$$Lambda$b$qxVuC82Z1LEuSGIvJgfvXAzG4kw;-><init>(Lcom/android/settings/core/instrumentation/b;Lcom/android/settings/c/b$a;)V

    invoke-virtual {p2, p3}, Lcom/android/settings/core/instrumentation/b$a;->post(Ljava/lang/Runnable;)Z

    .line 131
    iget-object p1, p0, Lcom/android/settings/core/instrumentation/b;->c:Lcom/android/settings/core/instrumentation/b$a;

    invoke-virtual {p1}, Lcom/android/settings/core/instrumentation/b$a;->a()V

    return-void
.end method

.method public final varargs a(I[Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/core/instrumentation/b;->a(IIILjava/lang/String;I)V

    return-void
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/core/instrumentation/b;->a(IIILjava/lang/String;I)V

    return-void
.end method

.method public final a(Landroid/content/Context;II)V
    .locals 6

    const/4 v2, 0x1

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p3

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/core/instrumentation/b;->a(IIILjava/lang/String;I)V

    return-void
.end method

.method public final a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p3

    .line 110
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/core/instrumentation/b;->a(IIILjava/lang/String;I)V

    return-void
.end method

.method public final a(Landroid/content/Context;IZ)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    move-object v0, p0

    move v2, p2

    move v5, p3

    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/core/instrumentation/b;->a(IIILjava/lang/String;I)V

    return-void
.end method

.method public final b(Landroid/content/Context;II)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    move-object v0, p0

    move v2, p2

    move v5, p3

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/core/instrumentation/b;->a(IIILjava/lang/String;I)V

    return-void
.end method
