.class public final Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$b;
.super Landroid/os/Handler;
.source "AccountAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->provideHandler(Landroid/os/Handler;I)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$b;->a:Landroid/os/Handler;

    iput p3, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$b;->b:I

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$b;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$b;->b:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$b;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
