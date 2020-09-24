.class final Lcom/coloros/settings/feature/othersettings/recover/f$b;
.super Ljava/lang/Object;
.source "RecoveryDataHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/recover/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/recover/f$b$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/Timer;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Messenger;

.field private d:Landroid/os/Messenger;

.field private e:Lcom/coloros/settings/feature/othersettings/recover/f$b$a;

.field private f:Z

.field private g:Lcom/coloros/settings/feature/othersettings/recover/f$d;

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/f$d;)V
    .locals 1

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/f$b$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/recover/f$b$1;-><init>(Lcom/coloros/settings/feature/othersettings/recover/f$b;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->i:Ljava/lang/Runnable;

    .line 1123
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->b:Landroid/content/Context;

    .line 1124
    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->g:Lcom/coloros/settings/feature/othersettings/recover/f$d;

    .line 1125
    new-instance p1, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;-><init>(Lcom/coloros/settings/feature/othersettings/recover/f$b;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->e:Lcom/coloros/settings/feature/othersettings/recover/f$b$a;

    .line 1126
    new-instance p1, Landroid/os/Messenger;

    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->e:Lcom/coloros/settings/feature/othersettings/recover/f$b$a;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->d:Landroid/os/Messenger;

    .line 1127
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->a:Ljava/util/Timer;

    .line 1128
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Lcom/coloros/settings/feature/othersettings/recover/f$d;
    .locals 0

    .line 1092
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->g:Lcom/coloros/settings/feature/othersettings/recover/f$d;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Z
    .locals 0

    .line 1092
    iget-boolean p0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->f:Z

    return p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Landroid/content/Context;
    .locals 0

    .line 1092
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1092
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Ljava/lang/Runnable;
    .locals 0

    .line 1092
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Landroid/os/Handler;
    .locals 0

    .line 1092
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->h:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Ljava/util/Timer;
    .locals 0

    .line 1092
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->a:Ljava/util/Timer;

    return-object p0
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1144
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->c:Landroid/os/Messenger;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 1145
    invoke-static {v0, p2, p1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 1146
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->e:Lcom/coloros/settings/feature/othersettings/recover/f$b$a;

    if-nez v0, :cond_0

    .line 1147
    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;-><init>(Lcom/coloros/settings/feature/othersettings/recover/f$b;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->e:Lcom/coloros/settings/feature/othersettings/recover/f$b$a;

    .line 1148
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->e:Lcom/coloros/settings/feature/othersettings/recover/f$b$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->d:Landroid/os/Messenger;

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->d:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1152
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->c:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecoveryDataHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :goto_0
    iput-boolean p2, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->f:Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1161
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->a:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 1162
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->g:Lcom/coloros/settings/feature/othersettings/recover/f$d;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1163
    invoke-interface {p1, v0}, Lcom/coloros/settings/feature/othersettings/recover/f$d;->a(Z)V

    .line 1165
    :cond_0
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->f:Z

    const/4 p1, 0x0

    .line 1166
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->e:Lcom/coloros/settings/feature/othersettings/recover/f$b$a;

    .line 1167
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b;->d:Landroid/os/Messenger;

    return-void
.end method
