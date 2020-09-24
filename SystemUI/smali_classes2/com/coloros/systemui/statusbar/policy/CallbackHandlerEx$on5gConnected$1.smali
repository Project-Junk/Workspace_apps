.class final Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx$on5gConnected$1;
.super Ljava/lang/Object;
.source "CallbackHandlerEx.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx;->on5gConnected(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $connected:Z

.field final synthetic this$0:Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx$on5gConnected$1;->this$0:Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx;

    iput-boolean p2, p0, Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx$on5gConnected$1;->$connected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx$on5gConnected$1;->this$0:Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx;->access$getMSignalCallbacks$p(Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 31
    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/policy/CallbackHandlerEx$on5gConnected$1;->$connected:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->on5gConnected(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
