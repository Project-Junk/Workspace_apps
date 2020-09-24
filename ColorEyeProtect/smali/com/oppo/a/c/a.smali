.class public Lcom/oppo/a/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.nearme.statistics.rom"

    const-string v3, "com.nearme.statistics.rom.service.ReceiverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "appId"

    sget-object v2, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/a/e/b;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "appVersion"

    sget-object v2, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/a/e/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appPackage"

    sget-object v2, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/a/e/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ssoid"

    sget-object v2, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/a/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static a(I)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.nearme.statistics.rom"

    const-string v3, "com.nearme.statistics.rom.service.ReceiverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "appId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "appVersion"

    sget-object v1, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/a/e/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "appPackage"

    sget-object v1, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/a/e/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "ssoid"

    sget-object v1, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/a/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/oppo/a/b/j;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/oppo/a/b/j;->c()I

    move-result p0

    const/16 v0, 0x3e8

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    check-cast p1, Lcom/oppo/a/b/d;

    invoke-static {}, Lcom/oppo/a/c/a;->a()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "dataType"

    const/16 v1, 0x3f1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "debug"

    invoke-virtual {p1}, Lcom/oppo/a/b/d;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    :pswitch_2
    check-cast p1, Lcom/oppo/a/b/i;

    invoke-static {}, Lcom/oppo/a/c/a;->a()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "eventBody"

    invoke-virtual {p1}, Lcom/oppo/a/b/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "uploadMode"

    invoke-virtual {p1}, Lcom/oppo/a/b/i;->a()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "dataType"

    const/16 v0, 0x3f0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    goto :goto_0

    :pswitch_3
    check-cast p1, Lcom/oppo/a/b/e;

    invoke-static {}, Lcom/oppo/a/c/a;->a()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "eventBody"

    invoke-virtual {p1}, Lcom/oppo/a/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "uploadMode"

    invoke-virtual {p1}, Lcom/oppo/a/b/e;->a()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "dataType"

    const/16 v0, 0x3ef

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    goto :goto_0

    :pswitch_4
    move-object p0, p1

    check-cast p0, Lcom/oppo/a/b/c;

    const-string v0, "NearMeStatistics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bean:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oppo/a/c/a;->b()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "uploadNow"

    invoke-virtual {p0}, Lcom/oppo/a/b/c;->e()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "logTag"

    invoke-virtual {p0}, Lcom/oppo/a/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "eventID"

    invoke-virtual {p0}, Lcom/oppo/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "logMap"

    invoke-virtual {p0}, Lcom/oppo/a/b/c;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "dataType"

    const/16 v0, 0x3ee

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p0, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    :pswitch_5
    check-cast p1, Lcom/oppo/a/b/h;

    invoke-virtual {p1}, Lcom/oppo/a/b/h;->b()I

    move-result p0

    invoke-static {p0}, Lcom/oppo/a/c/a;->a(I)Landroid/content/Intent;

    move-result-object p0

    const-string v1, "loginTime"

    invoke-virtual {p1}, Lcom/oppo/a/b/h;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "dataType"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    goto/16 :goto_0

    :pswitch_6
    check-cast p1, Lcom/oppo/a/b/f;

    invoke-static {}, Lcom/oppo/a/c/a;->a()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "exception"

    invoke-virtual {p1}, Lcom/oppo/a/b/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "count"

    invoke-virtual {p1}, Lcom/oppo/a/b/f;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "time"

    invoke-virtual {p1}, Lcom/oppo/a/b/f;->a()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "dataType"

    const/16 v0, 0x3ec

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    goto/16 :goto_0

    :pswitch_7
    check-cast p1, Lcom/oppo/a/b/a;

    invoke-static {}, Lcom/oppo/a/c/a;->a()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "eventBody"

    invoke-virtual {p1}, Lcom/oppo/a/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "eventType"

    invoke-virtual {p1}, Lcom/oppo/a/b/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "dataType"

    const/16 v0, 0x3ea

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    goto/16 :goto_0

    :pswitch_8
    check-cast p1, Lcom/oppo/a/b/g;

    invoke-static {}, Lcom/oppo/a/c/a;->a()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "time"

    invoke-virtual {p1}, Lcom/oppo/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "duration"

    invoke-virtual {p1}, Lcom/oppo/a/b/g;->b()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "activities"

    invoke-virtual {p1}, Lcom/oppo/a/b/g;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "dataType"

    const/16 v0, 0x3eb

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    goto/16 :goto_0

    :pswitch_9
    check-cast p1, Lcom/oppo/a/b/k;

    invoke-static {}, Lcom/oppo/a/c/a;->a()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "actionAmount"

    invoke-virtual {p1}, Lcom/oppo/a/b/k;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "actionCode"

    invoke-virtual {p1}, Lcom/oppo/a/b/k;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "actionTime"

    invoke-virtual {p1}, Lcom/oppo/a/b/k;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "dataType"

    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    goto/16 :goto_0

    :pswitch_a
    check-cast p1, Lcom/oppo/a/b/b;

    invoke-static {}, Lcom/oppo/a/c/a;->a()Landroid/content/Intent;

    move-result-object p0

    const-string v1, "loginTime"

    invoke-virtual {p1}, Lcom/oppo/a/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "dataType"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/oppo/a/c/a;->b:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/oppo/a/c/a;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/oppo/a/e/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordHandler add Task error -- bean or context is null--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oppo/a/e/c;->a(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static b()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.nearme.statistics.rom"

    const-string v3, "com.nearme.statistics.rom.service.ReceiverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "appId"

    sget-object v2, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/a/e/b;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "appVersion"

    sget-object v2, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/a/e/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appPackage"

    sget-object v2, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/a/e/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appName"

    sget-object v2, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/a/e/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ssoid"

    sget-object v2, Lcom/oppo/a/c/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/a/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
