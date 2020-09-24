.class public final Lcom/coloros/settings/feature/deviceinfo/controller/d;
.super Lcom/coloros/settings/feature/controller/a;
.source "ColorEidPreferenceController.java"


# instance fields
.field private final b:Landroid/telephony/euicc/EuiccManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "esim_id_value"

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/d;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/euicc/EuiccManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/d;->b:Landroid/telephony/euicc/EuiccManager;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/d;->b:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->getEid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/d;->b:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    return v0
.end method
