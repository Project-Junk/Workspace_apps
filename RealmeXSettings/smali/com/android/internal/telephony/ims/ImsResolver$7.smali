.class Lcom/android/internal/telephony/ims/ImsResolver$7;
.super Ljava/lang/Object;
.source "ImsResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsResolver;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsResolver;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$7;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/content/ComponentName;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onComplete called for name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "features:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$7;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    .line 421
    invoke-static {v1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->access$100(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    .line 420
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$7;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->access$200(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;Ljava/util/Set;)V

    return-void
.end method

.method public onError(Landroid/content/ComponentName;)V
    .locals 2

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "returned with an error result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$7;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    const/16 v1, 0x1388

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->access$300(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;I)V

    return-void
.end method
