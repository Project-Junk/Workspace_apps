.class final Lcom/android/settings/network/telephony/NetworkSelectSettings$2;
.super Ljava/lang/Object;
.source "NetworkSelectSettings.java"

# interfaces
.implements Lcom/android/settings/network/telephony/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/NetworkSelectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/telephony/NetworkSelectSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->b(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->b(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->b(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
