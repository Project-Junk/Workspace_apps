.class Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;
.super Ljava/lang/Object;
.source "AccessNetworksManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessNetworksManagerDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$1;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;-><init>(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QualifiedNetworksService("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$100(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$200(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Ljava/lang/String;)V

    return-void
.end method
