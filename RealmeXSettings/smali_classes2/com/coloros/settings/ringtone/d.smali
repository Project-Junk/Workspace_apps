.class public final Lcom/coloros/settings/ringtone/d;
.super Ljava/lang/Object;
.source "Messager.java"


# direct methods
.method public static a(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 30
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 31
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    iput p0, v0, Landroid/os/Message;->what:I

    .line 33
    invoke-static {v0, p2}, Lcom/coloros/settings/ringtone/c;->a(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 2

    .line 45
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x17

    .line 46
    iput v1, v0, Landroid/os/Message;->what:I

    .line 47
    iput p0, v0, Landroid/os/Message;->arg1:I

    const/4 p0, 0x0

    .line 48
    iput p0, v0, Landroid/os/Message;->arg2:I

    .line 49
    invoke-static {v0, p1}, Lcom/coloros/settings/ringtone/c;->a(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/coloros/settings/ringtone/c;->a(Ljava/lang/String;)V

    return-void
.end method
