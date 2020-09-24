.class final Lcolor/support/v7/app/ColorAlertController$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/app/ColorAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcolor/support/v7/app/ColorAlertController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcolor/support/v7/app/ColorAlertController;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcolor/support/v7/app/ColorAlertController$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p0, p1, Landroid/os/Message;->what:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcolor/support/v7/app/ColorAlertController;

    invoke-static {p0}, Lcolor/support/v7/app/ColorAlertController;->d(Lcolor/support/v7/app/ColorAlertController;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
