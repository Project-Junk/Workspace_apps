.class public Lcom/android/sdk/a$e;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/sdk/a;


# direct methods
.method public constructor <init>(Lcom/android/sdk/a;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/sdk/a$e;->a:Lcom/android/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "invalid SeekBarVolumizer message: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SeekBarVolumizer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/android/sdk/a$e;->a:Lcom/android/sdk/a;

    invoke-static {p1}, Lcom/android/sdk/a;->c(Lcom/android/sdk/a;)V

    goto :goto_1

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/android/sdk/a$e;->a:Lcom/android/sdk/a;

    invoke-static {p1}, Lcom/android/sdk/a;->b(Lcom/android/sdk/a;)V

    goto :goto_1

    .line 240
    :cond_2
    iget-object p1, p0, Lcom/android/sdk/a$e;->a:Lcom/android/sdk/a;

    invoke-static {p1}, Lcom/android/sdk/a;->a(Lcom/android/sdk/a;)V

    goto :goto_1

    .line 231
    :cond_3
    iget-object p1, p0, Lcom/android/sdk/a$e;->a:Lcom/android/sdk/a;

    iget-boolean p1, p1, Lcom/android/sdk/a;->q:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/sdk/a$e;->a:Lcom/android/sdk/a;

    iget p1, p1, Lcom/android/sdk/a;->p:I

    if-lez p1, :cond_4

    .line 232
    iget-object p1, p0, Lcom/android/sdk/a$e;->a:Lcom/android/sdk/a;

    iget-object p1, p1, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/sdk/a$e;->a:Lcom/android/sdk/a;

    iget v2, v2, Lcom/android/sdk/a;->f:I

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 233
    :cond_4
    iget-object p1, p0, Lcom/android/sdk/a$e;->a:Lcom/android/sdk/a;

    iget-boolean p1, p1, Lcom/android/sdk/a;->q:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/sdk/a$e;->a:Lcom/android/sdk/a;

    iget p1, p1, Lcom/android/sdk/a;->p:I

    if-nez p1, :cond_5

    .line 234
    iget-object p1, p0, Lcom/android/sdk/a$e;->a:Lcom/android/sdk/a;

    iget-object p1, p1, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/sdk/a$e;->a:Lcom/android/sdk/a;

    iget v2, v2, Lcom/android/sdk/a;->f:I

    const/16 v3, -0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 236
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/sdk/a$e;->a:Lcom/android/sdk/a;

    iget-object p1, p1, Lcom/android/sdk/a;->d:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/sdk/a$e;->a:Lcom/android/sdk/a;

    iget v0, v0, Lcom/android/sdk/a;->f:I

    iget-object v2, p0, Lcom/android/sdk/a$e;->a:Lcom/android/sdk/a;

    iget v2, v2, Lcom/android/sdk/a;->p:I

    const/16 v3, 0x400

    invoke-virtual {p1, v0, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_1
    return v1
.end method
