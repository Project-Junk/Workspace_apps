.class final Lcom/android/settings/RadioInfo$12;
.super Landroid/os/Handler;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/android/settings/RadioInfo$12;->a:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 390
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_0

    .line 422
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo$12;->a:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->j(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 416
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 417
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    .line 418
    iget-object p1, p0, Lcom/android/settings/RadioInfo$12;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->i(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object p1

    const-string/jumbo v0, "update error"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 407
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 408
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 409
    iget-object p1, p0, Lcom/android/settings/RadioInfo$12;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->i(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "refresh error"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/android/settings/RadioInfo$12;->a:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->i(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 401
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 402
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    const-string p1, "Set preferred network type failed."

    .line 403
    invoke-static {p1}, Lcom/android/settings/RadioInfo;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    .line 392
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 393
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 394
    iget-object v0, p0, Lcom/android/settings/RadioInfo$12;->a:Lcom/android/settings/RadioInfo;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    check-cast p1, [I

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->b(Lcom/android/settings/RadioInfo;I)V

    return-void

    .line 397
    :cond_6
    iget-object p1, p0, Lcom/android/settings/RadioInfo$12;->a:Lcom/android/settings/RadioInfo;

    invoke-static {}, Lcom/android/settings/RadioInfo;->b()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/android/settings/RadioInfo;->b(Lcom/android/settings/RadioInfo;I)V

    return-void
.end method
