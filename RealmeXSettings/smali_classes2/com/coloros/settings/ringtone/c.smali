.class public final Lcom/coloros/settings/ringtone/c;
.super Ljava/lang/Object;
.source "MessageDispatcher.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coloros/settings/ringtone/c;->a:Ljava/util/Map;

    return-void
.end method

.method protected static a(Landroid/os/Message;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 47
    sget-object v0, Lcom/coloros/settings/ringtone/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 68
    sget-object v0, Lcom/coloros/settings/ringtone/c;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x15

    .line 70
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 28
    sget-object v0, Lcom/coloros/settings/ringtone/c;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The handler or key must be an instance."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
