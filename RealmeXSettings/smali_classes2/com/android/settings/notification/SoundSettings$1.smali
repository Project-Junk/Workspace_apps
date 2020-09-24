.class final Lcom/android/settings/notification/SoundSettings$1;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SoundSettings;Landroid/os/Looper;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$1;->a:Lcom/android/settings/notification/SoundSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 75
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings$1;->a:Lcom/android/settings/notification/SoundSettings;

    iget-object p1, p1, Lcom/android/settings/notification/SoundSettings;->a:Lcom/android/settings/notification/SoundSettings$a;

    invoke-virtual {p1}, Lcom/android/settings/notification/SoundSettings$a;->b()V

    :goto_0
    return-void
.end method
