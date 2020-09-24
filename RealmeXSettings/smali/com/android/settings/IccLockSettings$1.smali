.class final Lcom/android/settings/IccLockSettings$1;
.super Landroid/os/Handler;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$1;->a:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 138
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 146
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$1;->a:Lcom/android/settings/IccLockSettings;

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->a(Lcom/android/settings/IccLockSettings;)V

    goto :goto_2

    .line 143
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$1;->a:Lcom/android/settings/IccLockSettings;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, p1}, Lcom/android/settings/IccLockSettings;->a(Lcom/android/settings/IccLockSettings;ZI)V

    return-void

    .line 140
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$1;->a:Lcom/android/settings/IccLockSettings;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, p1, v0}, Lcom/android/settings/IccLockSettings;->a(Lcom/android/settings/IccLockSettings;ZILjava/lang/Throwable;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
