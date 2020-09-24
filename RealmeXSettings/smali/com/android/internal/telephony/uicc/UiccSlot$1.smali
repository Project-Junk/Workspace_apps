.class Lcom/android/internal/telephony/uicc/UiccSlot$1;
.super Ljava/lang/Object;
.source "UiccSlot.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccSlot;->promptForRestart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccSlot;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccSlot;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 325
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->access$000(Lcom/android/internal/telephony/uicc/UiccSlot;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 327
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    const-string v0, "Reboot due to SIM swap"

    invoke-static {p2, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->access$100(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V

    .line 328
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->access$200(Lcom/android/internal/telephony/uicc/UiccSlot;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "power"

    .line 329
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const-string v0, "SIM is added."

    .line 330
    invoke-virtual {p2, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 332
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
