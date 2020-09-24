.class Lcom/color/eyeprotect/a/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/eyeprotect/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/color/eyeprotect/a/a/b;


# direct methods
.method private constructor <init>(Lcom/color/eyeprotect/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/a/a/b$a;->b:Lcom/color/eyeprotect/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/eyeprotect/a/a/b;Lcom/color/eyeprotect/a/a/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a/b$a;-><init>(Lcom/color/eyeprotect/a/a/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/color/eyeprotect/a/a/b$a;->b:Lcom/color/eyeprotect/a/a/b;

    invoke-static {v0}, Lcom/color/eyeprotect/a/a/b;->c(Lcom/color/eyeprotect/a/a/b;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/color/eyeprotect/a/a/b$a;->b:Lcom/color/eyeprotect/a/a/b;

    invoke-static {v0}, Lcom/color/eyeprotect/a/a/b;->d(Lcom/color/eyeprotect/a/a/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_3

    const-string v1, "lux_record"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/eyeprotect/a/a/b$a;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/color/eyeprotect/a/a/b$a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/color/eyeprotect/a/a/b$a;->b:Lcom/color/eyeprotect/a/a/b;

    invoke-static {v0}, Lcom/color/eyeprotect/a/a/b;->e(Lcom/color/eyeprotect/a/a/b;)Lcom/color/eyeprotect/a/a/b$b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/color/eyeprotect/a/a/b$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/eyeprotect/a/a/a;

    iget-object v2, p0, Lcom/color/eyeprotect/a/a/b$a;->b:Lcom/color/eyeprotect/a/a/b;

    invoke-static {v2}, Lcom/color/eyeprotect/a/a/b;->c(Lcom/color/eyeprotect/a/a/b;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "SensorRecorder"

    const-string v1, "PlaybackRunnable run stop play back, runnable exit."

    invoke-static {v0, v1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-wide v2, v1, Lcom/color/eyeprotect/a/a/a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    iget-object v2, p0, Lcom/color/eyeprotect/a/a/b$a;->b:Lcom/color/eyeprotect/a/a/b;

    invoke-static {v2}, Lcom/color/eyeprotect/a/a/b;->e(Lcom/color/eyeprotect/a/a/b;)Lcom/color/eyeprotect/a/a/b$b;

    move-result-object v2

    iget v1, v1, Lcom/color/eyeprotect/a/a/a;->a:F

    invoke-interface {v2, v1}, Lcom/color/eyeprotect/a/a/b$b;->b(F)V

    goto :goto_1

    :cond_2
    const-string v0, "SensorRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlaybackRunnable run mLuxList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/color/eyeprotect/a/a/b$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSensorPlayback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/color/eyeprotect/a/a/b$a;->b:Lcom/color/eyeprotect/a/a/b;

    invoke-static {v2}, Lcom/color/eyeprotect/a/a/b;->e(Lcom/color/eyeprotect/a/a/b;)Lcom/color/eyeprotect/a/a/b$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/color/eyeprotect/a/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    const-string v0, "SensorRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlaybackRunnable run over, mIsStopPlay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/eyeprotect/a/a/b$a;->b:Lcom/color/eyeprotect/a/a/b;

    invoke-static {p0}, Lcom/color/eyeprotect/a/a/b;->c(Lcom/color/eyeprotect/a/a/b;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/color/eyeprotect/a/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
