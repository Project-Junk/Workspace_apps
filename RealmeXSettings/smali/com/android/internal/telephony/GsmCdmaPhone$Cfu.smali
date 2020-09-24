.class Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
.super Ljava/lang/Object;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cfu"
.end annotation


# instance fields
.field final mOnComplete:Landroid/os/Message;

.field final mSetCfNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    return-void
.end method
