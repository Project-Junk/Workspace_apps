.class Lcom/android/internal/telephony/Phone$1;
.super Landroid/content/BroadcastReceiver;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mImsIntentReceiver: action "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Phone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "android:phone_id"

    .line 137
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const-string v0, "android:phone_id"

    .line 138
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 140
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mImsIntentReceiver: extraPhoneId = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Phone"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    .line 142
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    if-eq v0, p1, :cond_1

    :cond_0
    return-void

    .line 147
    :cond_1
    sget-object p1, Lcom/android/internal/telephony/Phone;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter p1

    .line 148
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 149
    iget-object p2, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/internal/telephony/Phone;->access$002(Lcom/android/internal/telephony/Phone;Z)Z

    .line 150
    iget-object p2, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    invoke-static {p2}, Lcom/android/internal/telephony/Phone;->access$100(Lcom/android/internal/telephony/Phone;)V

    .line 151
    iget-object p2, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    iget-object p2, p2, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    iget v0, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {p2, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/ims/e;->d(Z)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 153
    iget-object p2, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/Phone;->access$002(Lcom/android/internal/telephony/Phone;Z)Z

    .line 154
    iget-object p2, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    invoke-static {p2}, Lcom/android/internal/telephony/Phone;->access$100(Lcom/android/internal/telephony/Phone;)V

    .line 156
    :cond_3
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
