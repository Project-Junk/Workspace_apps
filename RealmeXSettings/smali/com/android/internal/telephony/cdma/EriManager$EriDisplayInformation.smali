.class Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/EriManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EriDisplayInformation"
.end annotation


# instance fields
.field mEriIconIndex:I

.field mEriIconMode:I

.field mEriIconText:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/EriManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->this$0:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p2, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    .line 73
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    .line 74
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EriDisplayInformation: { IconIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " EriIconMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " EriIconText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method