.class Lcom/color/eyeprotect/c/b$1;
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

    iput-object p1, p0, Lcom/color/eyeprotect/c/b$1;->a:Lcom/color/eyeprotect/c/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    sget-object p2, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v0, "ColorEyeProtect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_TIME action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/color/eyeprotect/c/b$1;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p2}, Lcom/color/eyeprotect/c/b;->a(Lcom/color/eyeprotect/c/b;)V

    :cond_1
    const-string p2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/color/eyeprotect/f/a;->a:Lcom/color/eyeprotect/f/a;

    iget-object p1, p0, Lcom/color/eyeprotect/c/b$1;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p1}, Lcom/color/eyeprotect/c/b;->b(Lcom/color/eyeprotect/c/b;)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/color/eyeprotect/c/b$1;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p1}, Lcom/color/eyeprotect/c/b;->c(Lcom/color/eyeprotect/c/b;)Z

    move-result v2

    iget-object p1, p0, Lcom/color/eyeprotect/c/b$1;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p1}, Lcom/color/eyeprotect/c/b;->d(Lcom/color/eyeprotect/c/b;)Z

    move-result v3

    iget-object p1, p0, Lcom/color/eyeprotect/c/b$1;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p1}, Lcom/color/eyeprotect/c/b;->e(Lcom/color/eyeprotect/c/b;)Lcom/color/eyeprotect/c/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/eyeprotect/c/b$a;->b()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/color/eyeprotect/c/b$1;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p1}, Lcom/color/eyeprotect/c/b;->e(Lcom/color/eyeprotect/c/b;)Lcom/color/eyeprotect/c/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/eyeprotect/c/b$a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/color/eyeprotect/f/a;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/color/eyeprotect/c/b$1;->a:Lcom/color/eyeprotect/c/b;

    iget-object p0, p0, Lcom/color/eyeprotect/c/b$1;->a:Lcom/color/eyeprotect/c/b;

    invoke-static {p0}, Lcom/color/eyeprotect/c/b;->f(Lcom/color/eyeprotect/c/b;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/color/eyeprotect/c/b;->a(Lcom/color/eyeprotect/c/b;Z)Z

    :cond_2
    return-void
.end method
