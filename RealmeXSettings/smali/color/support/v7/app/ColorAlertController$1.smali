.class Lcolor/support/v7/app/ColorAlertController$1;
.super Landroid/database/ContentObserver;
.source "ColorAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/app/ColorAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/app/ColorAlertController;


# direct methods
.method constructor <init>(Lcolor/support/v7/app/ColorAlertController;Landroid/os/Handler;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcolor/support/v7/app/ColorAlertController$1;->this$0:Lcolor/support/v7/app/ColorAlertController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 79
    iget-object p1, p0, Lcolor/support/v7/app/ColorAlertController$1;->this$0:Lcolor/support/v7/app/ColorAlertController;

    invoke-static {p1}, Lcolor/support/v7/app/ColorAlertController;->access$000(Lcolor/support/v7/app/ColorAlertController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "manual_hide_navigationbar"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 81
    iget-object p1, p0, Lcolor/support/v7/app/ColorAlertController$1;->this$0:Lcolor/support/v7/app/ColorAlertController;

    invoke-static {p1}, Lcolor/support/v7/app/ColorAlertController;->access$100(Lcolor/support/v7/app/ColorAlertController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController$1;->this$0:Lcolor/support/v7/app/ColorAlertController;

    invoke-static {v0}, Lcolor/support/v7/app/ColorAlertController;->access$100(Lcolor/support/v7/app/ColorAlertController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController$1;->this$0:Lcolor/support/v7/app/ColorAlertController;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 84
    :cond_0
    iget-object p1, p0, Lcolor/support/v7/app/ColorAlertController$1;->this$0:Lcolor/support/v7/app/ColorAlertController;

    invoke-static {p1}, Lcolor/support/v7/app/ColorAlertController;->access$100(Lcolor/support/v7/app/ColorAlertController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController$1;->this$0:Lcolor/support/v7/app/ColorAlertController;

    invoke-static {v0}, Lcolor/support/v7/app/ColorAlertController;->access$100(Lcolor/support/v7/app/ColorAlertController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcolor/support/v7/app/ColorAlertController$1;->this$0:Lcolor/support/v7/app/ColorAlertController;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
