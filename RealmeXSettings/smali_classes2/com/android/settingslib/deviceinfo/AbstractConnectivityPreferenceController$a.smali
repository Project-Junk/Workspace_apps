.class final Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$a;
.super Landroid/os/Handler;
.source "AbstractConnectivityPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$a;->a:Ljava/lang/ref/WeakReference;

    .line 100
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x258

    if-ne v1, v2, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->b()V

    return-void

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
