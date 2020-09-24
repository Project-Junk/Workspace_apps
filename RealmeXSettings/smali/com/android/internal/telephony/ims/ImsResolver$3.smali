.class Lcom/android/internal/telephony/ims/ImsResolver$3;
.super Ljava/lang/Object;
.source "ImsResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;


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

    .line 242
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$3;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSlotIndex(I)I
    .locals 0

    .line 255
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p1

    return p1
.end method

.method public getSubId(I)I
    .locals 1

    .line 245
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 248
    aget p1, p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
