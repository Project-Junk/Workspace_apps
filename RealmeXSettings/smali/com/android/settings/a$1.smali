.class final Lcom/android/settings/a$1;
.super Landroid/os/Handler;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/a;


# direct methods
.method constructor <init>(Lcom/android/settings/a;Landroid/os/Looper;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/a$1;->a:Lcom/android/settings/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 58
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/android/settings/a$1;->a:Lcom/android/settings/a;

    .line 1035
    invoke-virtual {p1}, Lcom/android/settings/a;->c()V

    :goto_0
    return-void
.end method
