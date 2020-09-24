.class Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;
.super Ljava/lang/Object;
.source "DataServiceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataServiceManagerDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataService "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$200(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", transport type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$300(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$400(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)V

    return-void
.end method
