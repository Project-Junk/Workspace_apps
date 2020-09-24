.class Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;
.super Ljava/lang/Object;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsFeatureContainer"
.end annotation


# instance fields
.field public featureType:I

.field private mBinder:Landroid/os/IInterface;

.field public slotId:I

.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsServiceController;IILandroid/os/IInterface;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->slotId:I

    .line 205
    iput p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->featureType:I

    .line 206
    iput-object p4, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->mBinder:Landroid/os/IInterface;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    check-cast p1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;

    .line 221
    iget v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->slotId:I

    iget v3, p1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->slotId:I

    if-eq v2, v3, :cond_2

    return v1

    .line 222
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->featureType:I

    iget v3, p1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->featureType:I

    if-eq v2, v3, :cond_3

    return v1

    .line 223
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->mBinder:Landroid/os/IInterface;

    if-eqz v2, :cond_4

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->mBinder:Landroid/os/IInterface;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->mBinder:Landroid/os/IInterface;

    if-nez p1, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 228
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->slotId:I

    mul-int/lit8 v0, v0, 0x1f

    .line 229
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->featureType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->mBinder:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public resolve(Ljava/lang/Class;)Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->mBinder:Landroid/os/IInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    return-object p1
.end method
