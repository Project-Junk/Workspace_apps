.class final Lcom/android/settings/applications/c$a;
.super Ljava/lang/Object;
.source "AppRecommendedController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Void:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/android/settings/applications/c$a;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "AppRecommendedController"

    .line 452
    invoke-static {p0}, Lcom/android/settings/applications/c$a;->d(Landroid/content/Context;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    .line 456
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v1, v3, :cond_1

    const-string p0, "Cannot call in the main thread, You must call in the other thread"

    .line 457
    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 460
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.android.vending"

    const/4 v4, 0x0

    .line 461
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 462
    new-instance v1, Lcom/android/settings/applications/c$b;

    invoke-direct {v1, v4}, Lcom/android/settings/applications/c$b;-><init>(B)V

    .line 463
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gms"

    .line 465
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    .line 466
    invoke-virtual {p0, v3, v1, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    .line 468
    :try_start_1
    new-instance v3, Lcom/android/settings/applications/c$c;

    .line 18598
    iget-boolean v5, v1, Lcom/android/settings/applications/c$b;->a:Z

    if-nez v5, :cond_2

    .line 18601
    iput-boolean v4, v1, Lcom/android/settings/applications/c$b;->a:Z

    .line 18602
    iget-object v4, v1, Lcom/android/settings/applications/c$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 469
    invoke-direct {v3, v4}, Lcom/android/settings/applications/c$c;-><init>(Landroid/os/IBinder;)V

    .line 470
    invoke-virtual {v3}, Lcom/android/settings/applications/c$c;->a()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    :try_start_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    .line 18599
    :cond_2
    :try_start_3
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    .line 472
    :try_start_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 473
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getGoogleAdId "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 418
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 422
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 423
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 425
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getVersionCode "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppRecommendedController"

    invoke-static {p1, p0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static a(Lokhttp3/Response;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 311
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closeResponse "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppRecommendedController"

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lokhttp3/Response;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 272
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v1

    const-string v2, "AppRecommendedController"

    const/16 v3, 0xc8

    if-ne v3, v1, :cond_d

    .line 273
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/os/a/a/a/a/a/a$af;->a([B)Lcom/oppo/os/a/a/a/a/a/a$af;

    move-result-object v1

    .line 274
    invoke-static {p0}, Lcom/android/settings/applications/c$a;->a(Lokhttp3/Response;)V

    .line 15630
    iget p0, v1, Lcom/oppo/os/a/a/a/a/a/a$af;->b:I

    if-eqz p0, :cond_2

    .line 276
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "doInBackground execute StrategyResponse.code:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16630
    iget p1, v1, Lcom/oppo/os/a/a/a/a/a/a$af;->b:I

    .line 276
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16641
    iget-object p1, v1, Lcom/oppo/os/a/a/a/a/a/a$af;->c:Ljava/lang/Object;

    .line 16642
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 16643
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 16645
    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString;

    .line 16647
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 16648
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16649
    iput-object v0, v1, Lcom/oppo/os/a/a/a/a/a/a$af;->c:Ljava/lang/Object;

    :cond_1
    move-object p1, v0

    .line 276
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 279
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "resp : { "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oppo/os/a/a/a/a/a/a$af;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " } "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16698
    iget-object p0, v1, Lcom/oppo/os/a/a/a/a/a/a$af;->d:Ljava/util/List;

    .line 280
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/a/a/a/a/a/a$z;

    if-eqz p1, :cond_3

    .line 17574
    iget-object v1, p1, Lcom/oppo/os/a/a/a/a/a/a$z;->b:Ljava/lang/Object;

    .line 17575
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 17576
    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 17578
    :cond_4
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17580
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 17581
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17582
    iput-object v3, p1, Lcom/oppo/os/a/a/a/a/a/a$z;->b:Ljava/lang/Object;

    :cond_5
    move-object v1, v3

    :goto_1
    const-string v3, "59574"

    .line 281
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17610
    iget-object v1, p1, Lcom/oppo/os/a/a/a/a/a/a$z;->c:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    .line 284
    sget-object v4, Lcom/oppo/os/a/a/a/a/a/a$z$b;->b:Lcom/oppo/os/a/a/a/a/a/a$z$b;

    const-string v5, "coloros_settings_recommend_app_visibility"

    if-ne v1, v4, :cond_6

    .line 285
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "get visibility true"

    .line 286
    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 288
    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "get visibility false"

    .line 289
    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17653
    :goto_2
    iget-object p1, p1, Lcom/oppo/os/a/a/a/a/a/a$z;->d:Ljava/util/List;

    .line 291
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/os/a/a/a/a/a/a$h;

    if-eqz v1, :cond_7

    .line 17777
    iget-object v4, v1, Lcom/oppo/os/a/a/a/a/a/a$h;->d:Ljava/lang/Object;

    .line 17778
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 17779
    check-cast v4, Ljava/lang/String;

    goto :goto_4

    .line 17781
    :cond_8
    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 17783
    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v5

    .line 17784
    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 17785
    iput-object v5, v1, Lcom/oppo/os/a/a/a/a/a/a$h;->d:Ljava/lang/Object;

    :cond_9
    move-object v4, v5

    .line 292
    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 17849
    iget-object v4, v1, Lcom/oppo/os/a/a/a/a/a/a$h;->f:Ljava/lang/Object;

    .line 17850
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 17851
    check-cast v4, Ljava/lang/String;

    goto :goto_5

    .line 17853
    :cond_a
    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 17855
    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v5

    .line 17856
    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 17857
    iput-object v5, v1, Lcom/oppo/os/a/a/a/a/a/a$h;->f:Ljava/lang/Object;

    :cond_b
    move-object v4, v5

    .line 296
    :goto_5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "coloros_settings_recommend_oaps_link"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "get oasp "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " time "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    return-void

    .line 301
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doInBackground execute response.code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 483
    invoke-static {p0}, Lcom/android/settings/applications/c$a;->d(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "com.android.id.impl.IdProviderImpl"

    .line 488
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getOAID"

    const/4 v4, 0x1

    .line 490
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 491
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getOAID "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppRecommendedController"

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 435
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 439
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 440
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getVersionName "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppRecommendedController"

    invoke-static {p1, p0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 499
    invoke-static {p0}, Lcom/android/settings/applications/c$a;->d(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "com.android.id.impl.IdProviderImpl"

    .line 504
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getVAID"

    const/4 v4, 0x1

    .line 506
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 507
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getVAID "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppRecommendedController"

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 1

    .line 563
    invoke-static {p0}, Lcom/android/settings/applications/c$a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "com.android.settings"

    .line 568
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 572
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 573
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 574
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 575
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    .line 576
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "ro.electronic.label"

    const-string v2, "phone"

    const-string v3, ""

    .line 227
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    const-string v4, "CN"

    const-string v5, "persist.sys.oppo.region"

    .line 13047
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "IN"

    .line 13048
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "https://adx-in.ads.oppomobile.com/ads/mix-frgn/V1/stg"

    goto :goto_0

    :cond_0
    const-string v6, "https://adx-id.ads.oppomobile.com/ads/mix-frgn/V1/stg"

    :goto_0
    const-string v7, "queryUrl = "

    .line 229
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "AppRecommendedController"

    invoke-static {v8, v7}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "application/pb; charset=utf-8"

    .line 230
    invoke-static {v7}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v7

    .line 13319
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v9

    .line 13320
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$x;->e()Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v10

    .line 13321
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v10

    .line 13431
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/settings/applications/c$a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 13322
    invoke-static {v11}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->b(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v10

    .line 14414
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/settings/applications/c$a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 13323
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a(I)Lcom/oppo/os/a/a/a/a/a/a$x$a;

    move-result-object v10

    .line 13324
    invoke-virtual {v10}, Lcom/oppo/os/a/a/a/a/a/a$x$a;->a()Lcom/oppo/os/a/a/a/a/a/a$x;

    move-result-object v10

    .line 13326
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$a;->e()Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v11

    const-string v12, "59572"

    .line 13327
    invoke-virtual {v11, v12}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v11

    .line 13328
    invoke-virtual {v11, v10}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a(Lcom/oppo/os/a/a/a/a/a/a$x;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v10

    const-string v11, "20012"

    .line 13329
    invoke-virtual {v10, v11}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->b(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$a$a;

    move-result-object v10

    .line 13330
    invoke-virtual {v10}, Lcom/oppo/os/a/a/a/a/a/a$a$a;->a()Lcom/oppo/os/a/a/a/a/a/a$a;

    move-result-object v10

    .line 13332
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$ab;->d()Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object v11

    const/16 v12, 0x6e

    .line 13333
    invoke-virtual {v11, v12}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a(I)Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object v11

    .line 13334
    invoke-virtual {v11, v3}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$ab$a;

    move-result-object v11

    .line 13335
    invoke-virtual {v11}, Lcom/oppo/os/a/a/a/a/a/a$ab$a;->a()Lcom/oppo/os/a/a/a/a/a/a$ab;

    move-result-object v11

    .line 13337
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " real region "

    .line 13338
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13339
    invoke-static {}, Lcom/coloros/settings/utils/x;->a()Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 13342
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 13344
    :goto_1
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$v;->e()Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v12

    .line 13345
    invoke-static {v4}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v12

    .line 13346
    invoke-static {v5}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->b(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v5

    .line 13347
    invoke-static {v4}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->c(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$v$a;

    move-result-object v4

    .line 13348
    invoke-virtual {v4}, Lcom/oppo/os/a/a/a/a/a/a$v$a;->a()Lcom/oppo/os/a/a/a/a/a/a$v;

    move-result-object v4

    .line 13350
    invoke-virtual {v9, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 13352
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "android_id"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 13353
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    const/4 v14, 0x0

    if-nez v13, :cond_2

    move-object v13, v14

    goto :goto_2

    .line 13354
    :cond_2
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    :goto_2
    if-eqz v13, :cond_3

    .line 13355
    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->hasRealMacAddress()Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x1

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    :goto_3
    if-eqz v16, :cond_4

    .line 13356
    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v14

    :cond_4
    const-string v13, "http.agent"

    .line 13357
    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 13358
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$l;->j()Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v17, v8

    :try_start_1
    invoke-static {v3}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v8

    .line 13359
    invoke-static {v12}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->b(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v8

    .line 13360
    invoke-static {v14}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->c(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v8

    .line 13361
    invoke-static {v9}, Lcom/android/settings/applications/c$a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->d(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v8

    .line 13362
    invoke-static {v9}, Lcom/android/settings/applications/c$a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->e(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v8

    .line 13363
    invoke-static {v13}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->f(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v8

    .line 13364
    invoke-static {v9}, Lcom/android/settings/applications/c$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->g(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v8

    .line 13365
    invoke-virtual {v8, v3}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->h(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$l$a;

    move-result-object v8

    .line 13366
    invoke-virtual {v8}, Lcom/oppo/os/a/a/a/a/a/a$l$a;->a()Lcom/oppo/os/a/a/a/a/a/a$l;

    move-result-object v8

    .line 13368
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    if-nez v5, :cond_5

    move-object v5, v3

    goto :goto_4

    .line 13369
    :cond_5
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    .line 13370
    :goto_4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_6

    .line 13371
    :goto_5
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_6
    const-string v0, "ro.product.brand.sub"

    goto :goto_5

    :goto_6
    const-string v13, "ro.build.time.fix"

    .line 13372
    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "sys.build.display.id"

    .line 13373
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 13374
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    sget-object v14, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 13375
    :cond_7
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object v13, v14

    .line 13376
    :cond_8
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$n;->i()Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v14

    .line 13377
    invoke-virtual {v14, v8}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->a(Lcom/oppo/os/a/a/a/a/a/a$l;)Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v8

    .line 13378
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$p;->e()Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v14

    .line 13379
    invoke-static {}, Lcom/coloros/settings/utils/ad;->a()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v14

    .line 13380
    invoke-static {v13}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->b(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v13

    .line 15106
    sget-object v14, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v14}, Lcom/coloros/settings/utils/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 13381
    invoke-static {v14}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->c(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$p$a;

    move-result-object v13

    .line 13382
    invoke-virtual {v13}, Lcom/oppo/os/a/a/a/a/a/a$p$a;->a()Lcom/oppo/os/a/a/a/a/a/a$p;

    move-result-object v13

    .line 13378
    invoke-virtual {v8, v13}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->a(Lcom/oppo/os/a/a/a/a/a/a$p;)Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v8

    .line 13383
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$r;->e()Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v13

    iget v14, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13384
    invoke-virtual {v13, v14}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(I)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v13

    iget v14, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 13385
    invoke-virtual {v13, v14}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->b(I)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v13

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    .line 13386
    invoke-virtual {v13, v12}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a(F)Lcom/oppo/os/a/a/a/a/a/a$r$a;

    move-result-object v12

    .line 13387
    invoke-virtual {v12}, Lcom/oppo/os/a/a/a/a/a/a$r$a;->a()Lcom/oppo/os/a/a/a/a/a/a$r;

    move-result-object v12

    .line 13383
    invoke-virtual {v8, v12}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->a(Lcom/oppo/os/a/a/a/a/a/a$r;)Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v8

    .line 13388
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$t;->e()Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v12

    const-string v13, "connectivity"

    .line 15519
    invoke-virtual {v9, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    if-nez v13, :cond_9

    .line 15521
    sget-object v2, Lcom/oppo/os/a/a/a/a/a/a$t$b;->a:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    goto :goto_8

    .line 15523
    :cond_9
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    if-eqz v14, :cond_d

    .line 15524
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v14

    if-nez v14, :cond_a

    goto :goto_7

    :cond_a
    const/4 v14, 0x1

    .line 15527
    invoke-virtual {v13, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 15529
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 15531
    sget-object v14, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v13, v14, :cond_b

    sget-object v14, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v13, v14, :cond_c

    .line 15532
    :cond_b
    sget-object v2, Lcom/oppo/os/a/a/a/a/a/a$t$b;->e:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    goto :goto_8

    .line 15536
    :cond_c
    invoke-virtual {v9, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 15537
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 15558
    sget-object v2, Lcom/oppo/os/a/a/a/a/a/a$t$b;->f:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    goto :goto_8

    .line 15556
    :pswitch_0
    sget-object v2, Lcom/oppo/os/a/a/a/a/a/a$t$b;->d:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    goto :goto_8

    .line 15554
    :pswitch_1
    sget-object v2, Lcom/oppo/os/a/a/a/a/a/a$t$b;->c:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    goto :goto_8

    .line 15544
    :pswitch_2
    sget-object v2, Lcom/oppo/os/a/a/a/a/a/a$t$b;->b:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    goto :goto_8

    .line 15525
    :cond_d
    :goto_7
    sget-object v2, Lcom/oppo/os/a/a/a/a/a/a$t$b;->a:Lcom/oppo/os/a/a/a/a/a/a$t$b;

    .line 13389
    :goto_8
    invoke-virtual {v12, v2}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Lcom/oppo/os/a/a/a/a/a/a$t$b;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v2

    .line 13390
    invoke-static {v5}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$t$a;

    move-result-object v2

    .line 13391
    invoke-virtual {v2}, Lcom/oppo/os/a/a/a/a/a/a$t$a;->a()Lcom/oppo/os/a/a/a/a/a/a$t;

    move-result-object v2

    .line 13388
    invoke-virtual {v8, v2}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->a(Lcom/oppo/os/a/a/a/a/a/a$t;)Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v2

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 13392
    invoke-static {v5}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v2

    .line 13393
    invoke-static {v0}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->b(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 13394
    invoke-static {v2}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->c(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$n$a;

    move-result-object v0

    .line 13395
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$n$a;->a()Lcom/oppo/os/a/a/a/a/a/a$n;

    move-result-object v0

    .line 13397
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$c;->d()Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v2

    iget-object v5, v1, Lcom/android/settings/applications/c$a;->a:Ljava/lang/String;

    .line 13398
    invoke-static {v9, v5}, Lcom/android/settings/applications/c$a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(I)Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v2

    iget-object v5, v1, Lcom/android/settings/applications/c$a;->a:Ljava/lang/String;

    .line 13399
    invoke-static {v9, v5}, Lcom/android/settings/applications/c$a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/applications/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$c$a;

    move-result-object v2

    .line 13400
    invoke-virtual {v2}, Lcom/oppo/os/a/a/a/a/a/a$c$a;->a()Lcom/oppo/os/a/a/a/a/a/a$c;

    move-result-object v2

    .line 13402
    invoke-static {}, Lcom/oppo/os/a/a/a/a/a/a$ad;->i()Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    move-result-object v5

    const/16 v8, 0x64

    .line 13403
    invoke-virtual {v5, v8}, Lcom/oppo/os/a/a/a/a/a/a$ad$a;->a(I)Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    move-result-object v5

    .line 13404
    invoke-virtual {v5, v10}, Lcom/oppo/os/a/a/a/a/a/a$ad$a;->a(Lcom/oppo/os/a/a/a/a/a/a$a;)Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    move-result-object v5

    .line 13405
    invoke-virtual {v5, v11}, Lcom/oppo/os/a/a/a/a/a/a$ad$a;->a(Lcom/oppo/os/a/a/a/a/a/a$ab;)Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    move-result-object v5

    .line 13406
    invoke-virtual {v5, v4}, Lcom/oppo/os/a/a/a/a/a/a$ad$a;->a(Lcom/oppo/os/a/a/a/a/a/a$v;)Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    move-result-object v4

    .line 13407
    invoke-virtual {v4, v0}, Lcom/oppo/os/a/a/a/a/a/a$ad$a;->a(Lcom/oppo/os/a/a/a/a/a/a$n;)Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    move-result-object v0

    .line 13408
    invoke-virtual {v0, v2}, Lcom/oppo/os/a/a/a/a/a/a$ad$a;->a(Lcom/oppo/os/a/a/a/a/a/a$c;)Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    move-result-object v0

    .line 13409
    invoke-virtual {v0, v3}, Lcom/oppo/os/a/a/a/a/a/a$ad$a;->a(Ljava/lang/String;)Lcom/oppo/os/a/a/a/a/a/a$ad$a;

    move-result-object v0

    .line 13410
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$ad$a;->a()Lcom/oppo/os/a/a/a/a/a/a$ad;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 239
    :try_start_2
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1388

    .line 240
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 241
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 242
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 244
    new-instance v3, Lokhttp3/Headers$Builder;

    invoke-direct {v3}, Lokhttp3/Headers$Builder;-><init>()V

    const-string v4, "Content-Type"

    const-string v5, "application/pb"

    .line 245
    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    .line 246
    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    const-string v4, "Accept"

    const-string/jumbo v5, "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"

    .line 247
    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    .line 248
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v3

    .line 249
    invoke-virtual {v0}, Lcom/oppo/os/a/a/a/a/a/a$ad;->toByteArray()[B

    move-result-object v0

    invoke-static {v7, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    .line 250
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 251
    invoke-virtual {v4, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 252
    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 253
    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 255
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 258
    :try_start_3
    invoke-static {v2, v6}, Lcom/android/settings/applications/c$a;->a(Lokhttp3/Response;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    :try_start_4
    invoke-static {v2}, Lcom/android/settings/applications/c$a;->a(Lokhttp3/Response;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 260
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "pullInfo "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v3, v17

    :try_start_6
    invoke-static {v3, v0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 262
    :try_start_7
    invoke-static {v2}, Lcom/android/settings/applications/c$a;->a(Lokhttp3/Response;)V

    return-void

    :catchall_1
    move-exception v0

    :goto_9
    invoke-static {v2}, Lcom/android/settings/applications/c$a;->a(Lokhttp3/Response;)V

    .line 263
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v3, v17

    .line 266
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "doInBackground execute wrong "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_3
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v3, v8

    .line 235
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "doInBackground getRequest "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
