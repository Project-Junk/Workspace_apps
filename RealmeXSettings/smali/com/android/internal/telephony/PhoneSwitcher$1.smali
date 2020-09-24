.class Lcom/android/internal/telephony/PhoneSwitcher$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneSwitcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneSwitcher;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher$1;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$1;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneSwitcher;->access$000(Lcom/android/internal/telephony/PhoneSwitcher;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher$1;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 179
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneSwitcher;->access$100(Lcom/android/internal/telephony/PhoneSwitcher;)I

    move-result v1

    const/4 v2, 0x2

    .line 178
    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->access$200(Lcom/android/internal/telephony/PhoneSwitcher;III)V

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher$1;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneSwitcher;->access$300(Lcom/android/internal/telephony/PhoneSwitcher;)V

    return-void
.end method
