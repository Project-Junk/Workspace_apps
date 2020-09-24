.class Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierKeyDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierKeyDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->access$000(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 134
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.internal.telephony.carrier_key_download_alarm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "CarrierKeyDownloadManager"

    if-eqz v1, :cond_0

    .line 135
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Handling key renewal alarm: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->access$100(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V

    return-void

    :cond_0
    const-string v1, "com.android.internal.telephony.ACTION_CARRIER_CERTIFICATE_DOWNLOAD"

    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    const-string v4, "phone"

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne v0, p2, :cond_3

    .line 140
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Handling reset intent: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->access$100(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V

    return-void

    :cond_1
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne v0, p2, :cond_3

    .line 146
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Carrier Config changed: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->access$100(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V

    return-void

    :cond_2
    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Download Complete"

    .line 150
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    const-string p1, "extra_download_id"

    .line 152
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->access$200(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->isValidDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {v1, p1, p2, v0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->access$300(Lcom/android/internal/telephony/CarrierKeyDownloadManager;JLjava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->access$400(Lcom/android/internal/telephony/CarrierKeyDownloadManager;J)V

    :cond_3
    return-void
.end method
