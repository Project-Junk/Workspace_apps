.class final Lcom/android/settings/network/telephony/e$b;
.super Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
.source "NetworkScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/telephony/e;


# direct methods
.method private constructor <init>(Lcom/android/settings/network/telephony/e;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/settings/network/telephony/e$b;->a:Lcom/android/settings/network/telephony/e;

    invoke-direct {p0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/network/telephony/e;B)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/e$b;-><init>(Lcom/android/settings/network/telephony/e;)V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    const-string v0, "NetworkScanHelper"

    const-string v1, "async scan onComplete()"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/settings/network/telephony/e$b;->a:Lcom/android/settings/network/telephony/e;

    invoke-static {v0}, Lcom/android/settings/network/telephony/e;->a(Lcom/android/settings/network/telephony/e;)V

    return-void
.end method

.method public final onError(I)V
    .locals 2

    .line 255
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "async scan onError() errorCode = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkScanHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/settings/network/telephony/e$b;->a:Lcom/android/settings/network/telephony/e;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/e;->a(Lcom/android/settings/network/telephony/e;I)V

    return-void
.end method

.method public final onResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Async scan onResults() results = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-static {p1}, Lcom/android/settings/network/telephony/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkScanHelper"

    .line 244
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/settings/network/telephony/e$b;->a:Lcom/android/settings/network/telephony/e;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/e;->a(Lcom/android/settings/network/telephony/e;Ljava/util/List;)V

    return-void
.end method
