.class Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
.super Ljava/lang/Object;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cf"
.end annotation


# instance fields
.field final mIsCfu:Z

.field final mOnComplete:Landroid/os/Message;

.field final mServiceClass:I

.field final mSetCfNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/os/Message;I)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mSetCfNumber:Ljava/lang/String;

    .line 251
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mIsCfu:Z

    .line 252
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mOnComplete:Landroid/os/Message;

    .line 253
    iput p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mServiceClass:I

    return-void
.end method
