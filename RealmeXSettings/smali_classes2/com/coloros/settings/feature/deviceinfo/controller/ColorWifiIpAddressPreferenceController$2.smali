.class final Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController$2;
.super Lcom/coloros/settings/utils/be;
.source "ColorWifiIpAddressPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/utils/be<",
        "Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController$2;->a:Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;

    invoke-direct {p0, p2}, Lcom/coloros/settings/utils/be;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    .line 90
    check-cast p2, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;

    .line 1093
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x258

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1095
    :cond_0
    invoke-static {p2}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->b(Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;)V

    :goto_0
    return-void
.end method
