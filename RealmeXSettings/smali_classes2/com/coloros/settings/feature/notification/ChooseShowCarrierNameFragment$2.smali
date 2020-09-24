.class final Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "ChooseShowCarrierNameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment$2;->a:Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "oppo.intent.action.SIM_INFO_UPDATE"

    .line 136
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    .line 138
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.SERVICE_STATE"

    .line 139
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 140
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "mSimInfoUpdatedReceiver receive action="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChooseShowCarrierNameFragment"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment$2;->a:Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;

    .line 142
    invoke-virtual {p1}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p1

    const/4 p2, 0x0

    .line 143
    invoke-virtual {p1, p2}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment$2;->a:Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->finish()V

    :cond_1
    return-void
.end method
