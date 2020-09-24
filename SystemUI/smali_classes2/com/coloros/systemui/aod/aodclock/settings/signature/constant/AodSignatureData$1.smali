.class Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$1;
.super Ljava/lang/Object;
.source "AodSignatureData.java"

# interfaces
.implements Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$SignatureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public signatureChnage()V
    .locals 2

    const-string p0, "Aod"

    const-string v0, "AodSignatureSettingProxy"

    const-string v1, "signatureChnage ,but you dont know"

    .line 79
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
