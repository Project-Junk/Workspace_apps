.class final Lcom/android/settings/applications/e$c;
.super Landroid/os/Handler;
.source "AppStateBaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/e;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/e;Landroid/os/Looper;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/settings/applications/e$c;->a:Lcom/android/settings/applications/e;

    .line 116
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 121
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/e$c;->a:Lcom/android/settings/applications/e;

    iget-object p1, p1, Lcom/android/settings/applications/e;->c:Lcom/android/settings/applications/e$b;

    invoke-interface {p1}, Lcom/android/settings/applications/e$b;->onExtraInfoUpdated()V

    :goto_0
    return-void
.end method
