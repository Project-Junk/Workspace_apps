.class Lcom/android/internal/telephony/uicc/UiccProfile$1;
.super Landroid/database/ContentObserver;
.source "UiccProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Handler;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$1;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$1;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$000(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 144
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$1;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$100(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$1;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$000(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$1;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->access$000(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->registerPackageInstallReceiver(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method
