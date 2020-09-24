.class Lcom/android/internal/telephony/CarrierResolver$1;
.super Landroid/database/ContentObserver;
.source "CarrierResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierResolver;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierResolver;Landroid/os/Handler;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver$1;->this$0:Lcom/android/internal/telephony/CarrierResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 102
    invoke-static {}, Lcom/android/internal/telephony/CarrierResolver;->access$000()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "onChange URI: "

    if-eqz p1, :cond_0

    .line 103
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->access$100(Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver$1;->this$0:Lcom/android/internal/telephony/CarrierResolver;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/CarrierResolver;->sendEmptyMessage(I)Z

    return-void

    .line 105
    :cond_0
    sget-object p1, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->access$100(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver$1;->this$0:Lcom/android/internal/telephony/CarrierResolver;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/CarrierResolver;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
