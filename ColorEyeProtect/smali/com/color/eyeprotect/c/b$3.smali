.class Lcom/color/eyeprotect/c/b$3;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/c/b;


# direct methods
.method constructor <init>(Lcom/color/eyeprotect/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/c/b$3;->a:Lcom/color/eyeprotect/c/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p1, "requestCode"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sget-object v1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v2, "ColorEyeProtect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAlarmReceiver requestCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mRequestCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/color/eyeprotect/c/b$3;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {v4}, Lcom/color/eyeprotect/c/b;->k(Lcom/color/eyeprotect/c/b;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/color/eyeprotect/c/b$3;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {v1}, Lcom/color/eyeprotect/c/b;->k(Lcom/color/eyeprotect/c/b;)I

    move-result v1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/color/eyeprotect/c/b$3;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p1}, Lcom/color/eyeprotect/c/b;->d(Lcom/color/eyeprotect/c/b;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/color/eyeprotect/c/b$3;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p1}, Lcom/color/eyeprotect/c/b;->f(Lcom/color/eyeprotect/c/b;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "intent_open_alarm"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    const-string v2, "intent_open_alarm"

    invoke-virtual {p2, v1, v2}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/color/eyeprotect/f/a;->a:Lcom/color/eyeprotect/f/a;

    iget-object v1, p0, Lcom/color/eyeprotect/c/b$3;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {v1}, Lcom/color/eyeprotect/c/b;->b(Lcom/color/eyeprotect/c/b;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "mode"

    const-string v3, "fix_time_open"

    const-string v4, "open_protect_eyes_type"

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/color/eyeprotect/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/color/eyeprotect/c/b$3;->a:Lcom/color/eyeprotect/c/b;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0, v0}, Lcom/color/eyeprotect/c/b;->a(ZZZ)V

    :cond_1
    const-string p2, "intent_close_alarm"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p2, "ColorEyeProtect"

    const-string v1, "intent_close_alarm"

    invoke-virtual {p1, p2, v1}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/color/eyeprotect/f/a;->a:Lcom/color/eyeprotect/f/a;

    iget-object p2, p0, Lcom/color/eyeprotect/c/b$3;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p2}, Lcom/color/eyeprotect/c/b;->b(Lcom/color/eyeprotect/c/b;)Landroid/content/Context;

    move-result-object p2

    const-string v1, "mode"

    const-string v2, "fix_time_close"

    const-string v3, "close_protect_eyes_type"

    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/color/eyeprotect/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/color/eyeprotect/c/b$3;->a:Lcom/color/eyeprotect/c/b;

    invoke-virtual {p1, v0, v0, v0}, Lcom/color/eyeprotect/c/b;->a(ZZZ)V

    :cond_2
    iget-object p1, p0, Lcom/color/eyeprotect/c/b$3;->a:Lcom/color/eyeprotect/c/b;

    invoke-virtual {p1}, Lcom/color/eyeprotect/c/b;->d()V

    iget-object p0, p0, Lcom/color/eyeprotect/c/b$3;->a:Lcom/color/eyeprotect/c/b;

    invoke-virtual {p0}, Lcom/color/eyeprotect/c/b;->c()V

    return-void

    :cond_3
    :goto_0
    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p1, "ColorEyeProtect"

    const-string p2, "mAlarmReceiver onReceive: not perform anything,return"

    invoke-virtual {p0, p1, p2}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
