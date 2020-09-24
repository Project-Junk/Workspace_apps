.class public Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
.super Ljava/lang/Object;
.source "ImsResolver.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsServiceInfo"
.end annotation


# instance fields
.field public controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

.field public featureFromMetadata:Z

.field private final mNumSlots:I

.field private final mSupportedFeatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation
.end field

.field public name:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    .line 122
    iput p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mNumSlots:I

    .line 123
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method addFeatureForAllSlots(I)V
    .locals 3

    const/4 v0, 0x0

    .line 127
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mNumSlots:I

    if-ge v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    new-instance v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    invoke-direct {v2, v0, p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    check-cast p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 149
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 150
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    iget-object v3, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 153
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    if-eqz v2, :cond_5

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 154
    :cond_5
    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    if-nez p1, :cond_6

    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public getSupportedFeatures()Ljava/util/HashSet;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 162
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method replaceFeatures(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsServiceInfo] name="

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedFeatures=[ "

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->mSupportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    const-string v3, "("

    .line 173
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget v3, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget v2, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
