.class Lcom/color/eyeprotect/a/a/b$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/a/a/b;


# direct methods
.method constructor <init>(Lcom/color/eyeprotect/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/a/a/b$1;->a:Lcom/color/eyeprotect/a/a/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SensorRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x77a42225

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const v1, -0xdb95c01

    if-eq v0, v1, :cond_2

    const v1, 0x13023660

    if-eq v0, v1, :cond_1

    const v1, 0x61c1cffd

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "oppo.intent.aibrightness.STOP_RECORD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v0, "oppo.intent.aibrightness.STOP_PLAY_LUX_RECORD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "oppo.intent.aibrightness.START_RECORD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_1

    :cond_3
    const-string v0, "oppo.intent.aibrightness.PLAY_LUX_RECORD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p0, p0, Lcom/color/eyeprotect/a/a/b$1;->a:Lcom/color/eyeprotect/a/a/b;

    invoke-static {p0}, Lcom/color/eyeprotect/a/a/b;->a(Lcom/color/eyeprotect/a/a/b;)V

    goto :goto_2

    :pswitch_1
    iget-object p0, p0, Lcom/color/eyeprotect/a/a/b$1;->a:Lcom/color/eyeprotect/a/a/b;

    invoke-static {p0, p2}, Lcom/color/eyeprotect/a/a/b;->a(Lcom/color/eyeprotect/a/a/b;Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/color/eyeprotect/a/a/b$1;->a:Lcom/color/eyeprotect/a/a/b;

    invoke-static {p1, v2}, Lcom/color/eyeprotect/a/a/b;->a(Lcom/color/eyeprotect/a/a/b;Z)Z

    iget-object p1, p0, Lcom/color/eyeprotect/a/a/b$1;->a:Lcom/color/eyeprotect/a/a/b;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/color/eyeprotect/a/a/b;->a(Lcom/color/eyeprotect/a/a/b;J)J

    iget-object p0, p0, Lcom/color/eyeprotect/a/a/b$1;->a:Lcom/color/eyeprotect/a/a/b;

    invoke-static {p0}, Lcom/color/eyeprotect/a/a/b;->b(Lcom/color/eyeprotect/a/a/b;)V

    goto :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/color/eyeprotect/a/a/b$1;->a:Lcom/color/eyeprotect/a/a/b;

    invoke-static {p1}, Lcom/color/eyeprotect/a/a/b;->a(Lcom/color/eyeprotect/a/a/b;)V

    iget-object p0, p0, Lcom/color/eyeprotect/a/a/b$1;->a:Lcom/color/eyeprotect/a/a/b;

    invoke-static {p0, v3}, Lcom/color/eyeprotect/a/a/b;->a(Lcom/color/eyeprotect/a/a/b;Z)Z

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
