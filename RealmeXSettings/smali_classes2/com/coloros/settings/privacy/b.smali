.class public final Lcom/coloros/settings/privacy/b;
.super Ljava/lang/Object;
.source "FaceUnlockMotorControl.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Landroid/os/MotorManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/coloros/settings/privacy/b;->a:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcom/coloros/settings/privacy/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "motor"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/MotorManager;

    check-cast p1, Landroid/os/MotorManager;

    iput-object p1, p0, Lcom/coloros/settings/privacy/b;->c:Landroid/os/MotorManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/coloros/settings/privacy/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/b;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/privacy/b;->c:Landroid/os/MotorManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/b;->b:Z

    const-string v0, "FaceUnlockMotorControl"

    const-string v1, "downMotor"

    .line 44
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/coloros/settings/privacy/b;->c:Landroid/os/MotorManager;

    const-string v1, "settings_faceunlock"

    invoke-virtual {v0, v1}, Landroid/os/MotorManager;->downMotorBySystemApp(Ljava/lang/String;)I

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/coloros/settings/privacy/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/b;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/privacy/b;->c:Landroid/os/MotorManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/b;->b:Z

    const-string v0, "FaceUnlockMotorControl"

    const-string v1, "upMotor"

    .line 55
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/coloros/settings/privacy/b;->c:Landroid/os/MotorManager;

    const-string v1, "settings_faceunlock"

    invoke-virtual {v0, v1}, Landroid/os/MotorManager;->upMotorBySystemApp(Ljava/lang/String;)I

    nop

    :cond_1
    :goto_0
    return-void
.end method
